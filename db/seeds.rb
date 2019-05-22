# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
# . . .
Product.create(title: 'The Dean',
description:
%{<p>
Love the look of retro square frames? Then our Dean reader is perfect for you! 
This lightweight and full frame style has large lenses and spring hinge temples 
for an extra comfortable fit. Great for men and women!
</p>},
image_url: 'glasses.jpg',
price: 15.00)
# . . .