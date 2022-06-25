class ShopInventory
  attr_accessor :inventory

  def initialize(inventory)
    @inventory = inventory
  end

  def item_in_stock
    local_list = []
    @inventory.each do |product|
      unless product[:quantity_by_size].empty?
        local_list.push(product[:name])
      end
    end
    local_list.sort!
  end

  def affordable
    local_list = []
    @inventory.each do |product|
      if product[:price] < 50
        local_list.push(product)
      end
    end
    local_list
  end

  def out_of_stock
    local_list = []
    @inventory.each do |product|
      if product[:quantity_by_size].empty?
        local_list.push(product)
      end
    end
    local_list
  end

  def how_much_left(name)
    @inventory.each do |product|
      if product[:name] == name
        return product[:quantity_by_size]
      end
    end
  end

  def total_stock
    y = 0
    @inventory.each do |product|
      product[:quantity_by_size].each { |key, value| y += value}
    end
    y
  end

end


my_inventory = [
  {price: 125.00, name: "Cola", quantity_by_size: {l033: 3, l05: 7, l1: 8, l2: 4}},
  {price: 40.00, name: "Pepsi", quantity_by_size: {}},
  {price: 39.99, name: "Water", quantity_by_size: {l033: 1, l2: 4}},
  {price: 70.00, name: "Juice", quantity_by_size: {l033: 7, l05: 2}}
]
my_story = ShopInventory.new(my_inventory)

p my_story.item_in_stock
p my_story.affordable
p my_story.out_of_stock
p my_story.how_much_left("Cola")
p my_story.total_stock

