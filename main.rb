require "./gorira_mod/object/gorira"
require "./gorira_mod/object/goria_container"
require "./const"

gorira_1 = 
  GoriraMod::Gorira.new(name: "ごりお", 
                     sex: Const::GoriraMod::Sex::MALE, 
                     position: Const::GoriraMod::Position::COMMON)

gorira_2 =
  GoriraMod::Gorira.new(name: "ごりみ", 
                     sex: Const::GoriraMod::Sex::FEMALE, 
                     position: Const::GoriraMod::Position::LEADER)
    
gorira_3 =
  GoriraMod::Gorira.new(name: "ごりすけ", 
                     sex: Const::GoriraMod::Sex::MALE, 
                     position: Const::GoriraMod::Position::PESIDENT)


puts "ごりお"
gorira_1.purchase_banana()
puts ""

puts "ごりみ"
gorira_2.purchase_banana()
puts ""

puts "ごりすけ"
gorira_3.purchase_banana()
puts ""

puts "------------------------"
puts "購入できたゴリラを以下に出力"
goriras = [gorira_1, gorira_2, gorira_3]
container = GoriraMod::GoriraContainer.new(goriras)
container.select_can_purchase_banana_gorira().each do |e|
  puts e.name
end