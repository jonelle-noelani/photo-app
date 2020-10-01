# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
PictureTag.destroy_all
Picture.destroy_all
Tag.destroy_all
User.destroy_all
  
["Travel", "Seattle", "Ocean", "SF"].each do |tag_name|
    Tag.create(name: tag_name)
  end

[1,2,3].each do |num|
User.create(
    username:"user#{num}",
    email: "user#{num}@example.com",
    password: "test123"
)
end
  
pike_place = "http://pikeplacemarket.org/sites/default/files/Clock%20Sign_Andy_Davies_Been_Magazine.jpg"
space_needle = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYTgLBe7BLi9A-1p3FkMj2JuC91hJpSl9PBg&usqp=CAU"
dicks = "https://www.goodfoodstories.com/wp-content/uploads/2010/03/dicks-drive-in.jpg"
lake_union_rainier = "https://joebeckerphoto.files.wordpress.com/2015/06/150607_seattle_1553.jpg"
flamingo_floatie = "https://images.unsplash.com/photo-1501426026826-31c667bdf23d?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
ocean_cave = "https://images.unsplash.com/photo-1553570739-330b8db8a925?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60"
beach = "https://cdn.sandals.com/beaches/v12/images/general/destinations/home/beach.jpg"
golden_gate = "https://images.unsplash.com/photo-1475189778702-5ec9941484ae?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
sf = "https://38hunj44t47v1shkxp1q41ra-wpengine.netdna-ssl.com/wp-content/uploads/2017/11/merlin_136702122_448a1ddc-b5e9-4303-bc0d-701c9addf3f3-superJumbo-600x400.jpg"
german_castle = "https://images.unsplash.com/photo-1534313314376-a72289b6181e?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
venice = "https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
rockface = "https://images.unsplash.com/photo-1554357345-187a92a9eeab?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
russia = "https://images.unsplash.com/photo-1513326738677-b964603b136d?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"

pic1 = Picture.create(
image_url: pike_place,
title: "Quiet at Pike Place Market",
owner_id: User.first.id
)
pic2 = Picture.create(
image_url: space_needle,
title: "Space Needle at Sunrise",
owner_id: User.first.id
)
pic3 = Picture.create(
image_url: dicks,
title: "Gotta have Dick's",
owner_id: User.first.id
)
pic4 = Picture.create(
image_url: lake_union_rainier,
title: "Mount Rainier says Hello!",
owner_id: User.first.id
)
pic5 = Picture.create(
image_url: flamingo_floatie,
title: "Chillin' with my new homie.",
owner_id: User.second.id
)
pic6 = Picture.create(
image_url: ocean_cave,
title: "Exploring the cave at low tide.",
owner_id: User.second.id
)
pic7 = Picture.create(
image_url: beach,
title: "Been looking forward to this all year.",
owner_id: User.second.id
)
pic8 = Picture.create(
image_url: golden_gate,
title: "The Golden Gate Bridge.",
owner_id: User.third.id
)
pic9 = Picture.create(
image_url: sf,
title: "San Francisco.",
owner_id: User.third.id
)
pic10 = Picture.create(
image_url: german_castle,
title: "Castle that inspired Disney.",
owner_id: User.first.id
)
pic11 = Picture.create(
image_url: venice,
title: "On the river in Venice",
owner_id: User.first.id
)
pic12 = Picture.create(
image_url: rockface,
title: "Old city carved into a mountain!",
owner_id: User.second.id
)
pic13 = Picture.create(
image_url: russia,
title: "Beautiful Russian architecture.",
owner_id: User.third.id
)
Comment.create(content: "I miss pike place!", picture_id: pic1.id, user_id: User.second.id)
Comment.create(content: "Oh, space needle...", picture_id: pic2.id, user_id: User.second.id)
Comment.create(content: "Hellz Yeah!", picture_id: pic3.id, user_id: User.second.id)
Comment.create(content: "Gorgeous!", picture_id: pic4.id, user_id: User.second.id)

Comment.create(content: "What about me?!", picture_id: pic5.id, user_id: User.third.id)
Comment.create(content: "Ooooooooh!", picture_id: pic6.id, user_id: User.third.id)
Comment.create(content: "You so deserve this!", picture_id: pic7.id, user_id: User.third.id)

Comment.create(content: "Nice shot of the bridge!", picture_id: pic8.id, user_id: User.first.id)
Comment.create(content: "It's been too long...", picture_id: pic9.id, user_id: User.first.id)

Comment.create(content: "I want to live there!", picture_id: pic10.id, user_id: User.second.id)
Comment.create(content: "I went to a castle like this once.  Bus couldn't go all the way up so we had to take the stairs up the mountain side.", picture_id: pic10.id, user_id: User.third.id)

Comment.create(content: "I want to go here!", picture_id: pic11.id, user_id: User.third.id)

Comment.create(content: "Do dwarves live here?", picture_id: pic12.id, user_id: User.first.id)

Comment.create(content: "Gorgeous!", picture_id: pic13.id, user_id: User.second.id)

PictureTag.create(picture_id: pic1.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic1.id, tag_id: Tag.all.second.id)
PictureTag.create(picture_id: pic2.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic2.id, tag_id: Tag.all.second.id)
PictureTag.create(picture_id: pic3.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic3.id, tag_id: Tag.all.second.id)
PictureTag.create(picture_id: pic4.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic4.id, tag_id: Tag.all.second.id)

PictureTag.create(picture_id: pic5.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic5.id, tag_id: Tag.all.third.id)
PictureTag.create(picture_id: pic6.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic6.id, tag_id: Tag.all.third.id)
PictureTag.create(picture_id: pic7.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic7.id, tag_id: Tag.all.third.id)

PictureTag.create(picture_id: pic8.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic8.id, tag_id: Tag.all[3].id)
PictureTag.create(picture_id: pic9.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic9.id, tag_id: Tag.all[3].id)

PictureTag.create(picture_id: pic10.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic11.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic12.id, tag_id: Tag.all.first.id)
PictureTag.create(picture_id: pic13.id, tag_id: Tag.all.first.id)