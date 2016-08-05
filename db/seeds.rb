# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bar.destroy_all
Happyhour.destroy_all
MenuItem.destroy_all

bob = Bar.create!(name: 'Bob\'s next door', address: '123 JZ St NW, Washington, DC 20002', img_url:'http://www.dchappyhours.com/logos/DCHH_BensNextDoor_1362933337.jpg')
post = Bar.create!(name: 'Post Pub', address: '1422 L St NW, Washington, DC 20005', img_url: 'http://postpubdc.com/images/banner.jpg')


posthr1 = Happyhour.create!(hours: '3pm-7pm', weekday: 'Monday', bar: post)
posthr2 = Happyhour.create!(hours: '3pm-7pm', weekday: 'Tuesday', bar: post)
posthr3 = Happyhour.create!(hours: '3pm-7pm', weekday: 'Wednesday', bar: post)
posthr4 = Happyhour.create!(hours: '3pm-7pm', weekday: 'Thursday', bar: post)
posthr5 = Happyhour.create!(hours: '3pm-7pm', weekday: 'Friday', bar: post)

bobhr1 = Happyhour.create!(hours: '5pm-7pm', weekday: 'Thursday', bar: bob)
bobhr2 = Happyhour.create!(hours: '4pm-7pm', weekday: 'Friday', bar: bob)

MenuItem.create!(name: 'Chicken wings', price: '4.50', happyhour:posthr1)
MenuItem.create!(name: '(Ruby on) rail drinks', price: '5.00', happyhour:posthr1)
MenuItem.create!(name: 'Fries', price: '1.00', happyhour:posthr2)
MenuItem.create!(name: '(Ruby on) rail drinks', price: '5.00', happyhour:posthr2)
MenuItem.create!(name: 'Crab dip', price: '7.00', happyhour:posthr3)
MenuItem.create!(name: '(Ruby on) rail drinks', price: '5.00', happyhour:posthr3)
MenuItem.create!(name: 'Fajitas', price: '5.50', happyhour:posthr4)
MenuItem.create!(name: '(Ruby on) rail drinks', price: '5.00', happyhour:posthr4)
MenuItem.create!(name: 'Pizza', price: '7', happyhour:posthr1)
MenuItem.create!(name: '(Ruby on) rail drinks', price: '5.00', happyhour:posthr5)
MenuItem.create!(name: 'Heineken, Fat tire, Hoegaarden', price: '5.00', happyhour:posthr5)
MenuItem.create!(name: 'Half smoke', price: '3.00', happyhour:bobhr1)
MenuItem.create!(name: 'Half smoke', price: '3.00', happyhour:bobhr2)
MenuItem.create!(name: 'Domestic beers', price: '5.00', happyhour:bobhr2)
