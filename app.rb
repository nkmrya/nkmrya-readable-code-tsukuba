require 'JSON'

json = File.open("recipe-data.json").read
recipes = JSON.parse(json)

recipes.each do |recipe|
	puts recipe
end
