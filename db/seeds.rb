# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
item_count = 30
category_group_count = 6
category_count = 23

User.create!(email: 'a@a', password: "pppppp")

for i in 1..category_group_count do
	CategoryGroup.create!(name: "大カテゴリ#{i}", )
end

for i in 1..category_count do
	Category.create!(name: "小カテゴリ#{i}", category_group_id: (i%category_group_count+1))
end

for i in 1..item_count do
  Item.create!(title: "商品#{i}", body: 'とてもいい香り')
  rand(1..category_count/3).times do
		CategoryItem.create!(item_id: i, category_id: rand(1..category_count))
  end
end

# 特集とか、こんな感じで登録
Special.create!(title: "特集")
for i in 1..5 do
	SpecialItem.create!(special_id: 1, item_id: rand(1..item_count))
end
Special.create!(title: "おすすめの商品")
for i in 1..5 do
	SpecialItem.create!(special_id: 2, item_id: rand(1..item_count))
end
Special.create!(title: "ガラシャツ")
for i in 1..5 do
	SpecialItem.create!(special_id: 3, item_id: rand(1..item_count))
end


Cart.create!(user_id: 1, item_id: 1)
Cart.create!(user_id: 1, item_id: 2)
Cart.create!(user_id: 1, item_id: 3)

