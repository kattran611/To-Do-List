

# what_to_do = []
# TODO - Remove stuubed items
what_to_do = ["clean", "homework", "eat"]


def print_list(list)
  list.each_with_index do |chore, index|
    puts "#{index}: #{chore}"
  end
end


menu_item = nil
while menu_item.to_i != 5
  puts "Menu:"
  puts "1: Add Item"
  puts "2: View List"
  puts "3: Edit item"
  puts "4: Delete item"
  puts "5: Quit"

  menu_item = gets.chomp

  puts "you chose item " + menu_item

  case menu_item.to_i
  when 1
    puts "Enter an item to add to the list"
    to_do = gets.chomp
    what_to_do.push(to_do)

  when 2
    puts "The list contains:"
    print_list(what_to_do)


  when 3
    puts "What item do you want to edit?"
    print_list(what_to_do)
    puts "choose an item"
    edit_index = gets.chomp
    puts "what do you want to change it to?"
    new_value = gets.chomp
    what_to_do[edit_index.to_i] = new_value

  when 4
    puts "what item do you want to delete?"
    print_list(what_to_do)
    delete_index = gets.chomp
    what_to_do.delete_at(delete_index.to_i)
    puts "it has been deleted"

  end





puts "-------------------"


end

puts "We're Done! The final list is:"
print_list(what_to_do)
