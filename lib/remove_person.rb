#!usr/bin/ruby

puts "Enter name of person to remove:"
name = gets.strip!
puts "\n###########################\n# Removing #{name}\n###########################"

def short_name(name)
  name.gsub(" ", "-").downcase
end

def first_name(name)
  name.split(" ")[0]
end

##########################################
# Remove person from people.yml          #
##########################################

people_yml_path = "#{Dir.pwd}/data/people.yml"
tmp_file_path = "#{people_yml_path}.tmp"
found_person = false

File.open(tmp_file_path, "w") do |output|
  File.open(people_yml_path, "r") do |input|
    to_remove_block = false
    input.each_line do |line|
      if to_remove_block && line.strip.empty?
        to_remove_block = false
        next
      end

      next if to_remove_block

      if line.include?("- name: \"#{name}\"")
        puts "Found person: #{line}"
        to_remove_block = true
        found_person = true
        next
      end

      output.write(line) unless to_remove_block
    end
  end
end

# Delete old file and write in new one
File.delete(people_yml_path)
File.rename(tmp_file_path, people_yml_path)

puts "Could not find #{name} in 'people.yml'." unless found_person
puts "Searching for people page links..."

#############################################################
# Search through posts and remove links to people/#{name}   #
#############################################################

people_page_link_regex = Regexp.new ".*\(\D*\/people##{short_name(name)}\).*"
ag_people_page_link_regex = "'.*\(\D*\/people##{short_name(name)}\).*'"
dead_link_count = 0

source_files = `ag #{ag_people_page_link_regex} source/ -l`.split("\n")

source_files.each do |source_file|
  source_file_path = "#{Dir.pwd}/#{source_file}"
  tmp_src_file_path = "#{source_file_path}.tmp"

  File.open(tmp_src_file_path, "w") do |output|
    File.open(source_file, "r") do |input|
      input.each_line do |line|
        if people_page_link_regex.match(line)
          partitioned_line = line.partition(/\[#{Regexp.quote first_name(name)}\D*?\]/)
          remainder_of_line = partitioned_line[2].partition(/\(.*\/people##{Regexp.quote short_name(name)}\)/)
          clean_line = "#{partitioned_line[0]}#{partitioned_line[1][1..-2]}#{remainder_of_line[2]}"

          output.write(clean_line)
          dead_link_count += 1
        else
          output.write(line)
        end
      end
    end
  end

  # Delete old file and write in new one
  File.delete(source_file_path)
  File.rename(tmp_src_file_path, source_file_path)
end

puts "Found and repaired #{dead_link_count} dead links."
puts "Exiting..."
exit
