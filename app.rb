require 'JSON'

recipe_file_path = ARGV[0]
json = File.open(recipe_file_path).read
recipes = JSON.parse(json)

recipes.each do |recipe|
	puts recipe
end
