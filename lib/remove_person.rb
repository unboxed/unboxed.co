#!usr/bin/ruby
require 'yaml'

puts "Enter name of person to remove:"
name = gets.strip!
short_name = name.gsub(" ", "-").downcase
first_name = name.split(" ")[0]

##########################################
# Remove person from people.yml          #
##########################################

people_file_path = "#{Dir.pwd}/data/people.yml"
original_people_data = YAML::load_file(people_file_path)
updated_people_data = original_people_data.dup.delete_if { |hash| hash['name'] == name }
File.write(people_file_path, updated_people_data.to_yaml)

if original_people_data == updated_people_data
  puts "Could not find #{name} in 'people.yml'."
else
  puts "Removed #{name} from 'people.yml'."
end

#############################################################
# Search through posts and remove links to people/#{name}   #
#############################################################

puts "Searching for people page links..."
people_page_link_regex = Regexp.new ".*\(\D*\/people##{short_name}\).*"
ag_people_page_link_regex = "'.*\(\D*\/people##{short_name}\).*'"
dead_link_count = 0

source_files = `ag #{ag_people_page_link_regex} source/ -l`.split("\n")

source_files.each do |source_file|
  source_file_path = "#{Dir.pwd}/#{source_file}"
  tmp_src_file_path = "#{source_file_path}.tmp"

  File.open(tmp_src_file_path, "w") do |output|
    File.open(source_file, "r") do |input|
      input.each_line do |line|
        if people_page_link_regex.match(line)
          partitioned_line = line.partition(/\[#{Regexp.quote first_name}\D*?\]/)
          remainder_of_line = partitioned_line[2].partition(/\(.*\/people##{Regexp.quote(short_name)}\)/)
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
