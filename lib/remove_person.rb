#!usr/bin/ruby
require 'yaml'

puts "Enter the full name of the person to remove (e.g. Joe Bloggs):"
name = gets.strip!

#################################
# Remove person from people.yml #
#################################

people_file_path = "#{Dir.pwd}/data/people.yml"
original_people_data = YAML::load_file(people_file_path)
updated_people_data = original_people_data.dup.delete_if { |hash| hash['name'] == name }
File.write(people_file_path, updated_people_data.to_yaml)

if original_people_data == updated_people_data
  puts "Could not find #{name} in 'people.yml'."
else
  puts "Removed #{name} from 'people.yml'."
end

#################################################################
# Search through product stories and remove link in frontmatter #
#################################################################

short_name = name.gsub(" ", "-").downcase
source_files = %x(grep -rwl ./source/product-stories -e 'people##{short_name}').split

if source_files.any?
  puts "Attempting to clean up links in: \n- #{source_files.join("\n- ")}."
  %x(sed -i '' -e '/^.*people##{short_name}.*$/d' #{source_files.join(' ')})
else
  puts "Could not find #{short_name} links in product story pages."
end
