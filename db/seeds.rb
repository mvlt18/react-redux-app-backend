# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Platform.destroy_all
Course.destroy_all
Todo.destroy_all

puts "Seeding date..."


# Platform Seed Data
p1 = Platform.create(name: "Udemy", url: "https://www.udemy.com/", image: "https://www.udemy.com/staticx/udemy/images/v6/default-meta-image.png")


# Course Seed Data
c1 = Course.create(name: "Complete Python Bootcamp: Go from zero to hero in Python 3", url: "https://www.udemy.com/course/complete-python-bootcamp/learn/lecture/3421822?components=buy_button%2Cdiscount_expiration%2Cgift_this_course%2Cintroduction_asset%2Cpurchase%2Cdeal_badge%2Credeem_coupon#overview", start_date: "Dec 29, 2019", end_date: "", status: "Not Started Yet", platform_id: 1)

#Todo Seed Data
todo1 = Todo.create(content: "Start this!!", due_date: "Jan 15, 2020", course_id: 1)
