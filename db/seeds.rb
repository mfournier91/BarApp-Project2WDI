# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bar.destroy_all
Happyhour.destroy_all

bob = Bar.create!(name: 'Bob\'s next door', address: '123 JZ St NW, Washington, DC 20002', img_url:'http://www.dchappyhours.com/logos/DCHH_BensNextDoor_1362933337.jpg')
post = Bar.create!(name: 'Post Pub', address: '1422 L St NW, Washington, DC 20005', img_url: 'http://postpubdc.com/images/banner.jpg')


Happyhour.create!(hours: '3pm-7pm', weekday: 'Monday', bar: post)
Happyhour.create!(hours: '3pm-7pm', weekday: 'Tuesday', bar: post)
Happyhour.create!(hours: '3pm-7pm', weekday: 'Wednesday', bar: post)
Happyhour.create!(hours: '3pm-7pm', weekday: 'Thursday', bar: post)
Happyhour.create!(hours: '3pm-7pm', weekday: 'Friday', bar: post)

Happyhour.create!(hours: '5pm-7pm', weekday: 'Thursday', bar: bob)
Happyhour.create!(hours: '4pm-7pm', weekday: 'Friday', bar: bob)
