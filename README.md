## Ruby_microtask
This is internship microtask 1. This code has a class and methods that realised the answers to the given tasks below.

## I had a tasks:
Implement following methods in the class:
1. Return all item NAMES in stock only, sorted alphabetically

ShopInventory.new(inventory).item_in_stock
=> [“Cola”, “Juice”, “Water”]
2. Return all items (full hashes) for “afforbadle” items cheaper than 50

ShopInventory.new(inventory).affordable
=> [
{price: 40.00, name: "Pepsi", quantity_by_size: {}},
{price: 39.99, name: "Water", quantity_by_size: {l033: 1, l2: 4}}
]
3. Return all items out of stock (empty “quantity_by_size”)

ShopInventory.new(inventory).out_of_stock
=> [{price: 40.00, name: "Pepsi", quantity_by_size: {}}]
4. Return how much in stock of an item is left by its name

ShopInventory.new(inventory).how_much_left("Cola")
=> {l033: 3, l05: 7, l1: 8, l2: 4}
5. Return total amount of all items in stock for all variants

ShopInventory.new(inventory).total_stock
=> 36

## Getting Started 
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

## Prerequisites
This script works on all operating systems, but OS X or Linux is preferred.

## First run
1. Fork the repository.

2. Go into your favorite code editor and open repository from GitHub as Progect.

3. Run script.rb or bash_script.sh.

If you have done correct, you will see the output of the script in terminal.

2. Go into your favorite code editor and open repository from GitHub as Progect.

3. Run script.rb or bash_script.sh.

If you have done correct, you will see the output of the script in terminal.
