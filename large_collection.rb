require "benchmark"

$db = Maglev::PERSISTENT_ROOT
$db.delete(:items)

Item = Struct.new(:name, :price)

items = 10.times do |i|
  Item.new("Hello #{i}", i*100)
end
p items

# $db[:items] = 
