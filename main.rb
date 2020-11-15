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

goriras = [gorira_1, gorira_2, gorira_3]
container = GoriraMod::GoriraContainer.new(goriras)

if container.has_can_purchase_gorira?
  puts "バナナを購入できたゴリラがいます！"
end

puts "------------------------"

puts "購入できたゴリラを以下に出力"

container.select_can_purchase_banana_gorira().each do |e|
  puts e.name
end