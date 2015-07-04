require 'JSON'

def show_recipe(recipe, id)
	puts "#{id}: #{recipe["name"]} #{recipe["description"]}"
end

def show_recipes_all(recipes)
	recipes.each_with_index do |recipe, id|
		show_recipe(recipe, id)
	end
end

def show_recipe_by_id(recipes, id)
	show_recipe(recipes[id], id)
end

recipe_file_path = ARGV[0]
json = File.open(recipe_file_path).read
recipes = JSON.parse(json)

if ARGV[1]
	show_id = ARGV[1].to_i
	show_recipe_by_id(recipes, show_id)
else
	show_recipes_all(recipes)
end
