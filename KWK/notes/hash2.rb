#The fourth dataype we learned is called a symbol, it is signaled with a colon.
# it is good form to have symbols as the key but not required
# the value is on the right side and its returned with hash[:key]
favorite_foods = {:japanese => ["bubble tea", "sweet potato bai", "seaweed salad"]}
puts favorite_foods[:japanese][2]

favorite_foods[:mexican] = ["chips & salsa", "horchata", "juevos rancheros", "guacamole"]

karliekloss55 = {:name => ["Karlie Kloss"],
        :username => ["karliekloss55"],
        :japanese => ["bubble tea"],
        :japanese => ["bubble tea"],
        :japanese => ["bubble tea"],
}

favorite_foods.each do |ethnicity, food|
  puts "My favorite #{ethnicity.capitalize} foods are #{food.join(" and ")}!"
end
