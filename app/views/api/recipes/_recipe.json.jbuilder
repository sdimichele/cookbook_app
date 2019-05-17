#name starts with _ 

  # json.id recipe.id
  # json.title recipe.title
  # json.chef recipe.chef
  # json.prep_time recipe.prep_time
  # json.ingredients recipe.ingredients
  # json.directions recipe.directions
  # json.chef recipe.chef
  # json.image_url recipe.image_url

  # json.formatted do
  #  json.prep_time recipe.friendly_prep_time
  #  json.ingredients recipe.ingredients_list 
  #  json.directions recipe.directions_list
  #  json.created_at recipe.friendly_created_at
  # end

  json.id recipe.id
json.title recipe.title
json.prep_time recipe.prep_time
json.ingredients recipe.ingredients
json.directions recipe.directions

json.chef recipe.user.name

json.image_url recipe.image_url

json.formatted do
  json.prep_time recipe.friendly_prep_time
  json.ingredients recipe.ingredients_list
  json.directions recipe.directions_list
  json.created_at recipe.friendly_created_at
end