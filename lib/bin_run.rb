def run

  FoodTruck.new("Taco Mama", "11am-11pm", [{"Veggie Taco": 9, "Beef Taco": 11, "Chicken Taco": 10}, {"Hardshell Taco": 10}, {"Softshell Taco": 10}])

  FoodTruck.new("Tony's Pizza", "10:30am-10:30pm", [{"original": 12}, {"pepperoni": 13}, {"sausage": 14}, {"hawaiian": 14}, {"deep dish": 14}])

  FoodTruck.new("Thom", "12pm-12am", [{"drunken noodle": 13}, {"fried rice": 12}, {"basil chicken": 12}])

  FoodTruck.new("Bobb's Burgers", "11:30am-1am", [{"classic": 11}, {"double": 14}])

  FoodTruck.new("Dina's Donuts", "6am-10pm", [{"glaze": 4}, {"powder sugar": 4}, {"vanilla cream filling": 5}])

  FoodTruck.new("25/8 Diner", "all day", [{"eggs": 8}, {"pancakes": 7}, {"waffles": 7}, {"tuna melt": 9}, {"BLT": 9}])

  puts "enter name:"
  name = gets.strip
  foodie = Foodie.new(name)

  puts "____________________________________"

  puts "\nHello, #{foodie.name}! Your balance is: $#{foodie.bank_account.balance}.00\n\n"
  input = nil

  until input == "exit"

    FoodTruck.display_food_trucks

    puts "\nenter number of food truck to order from OR enter 'exit' to leave app"

    input = gets.strip
    puts "____________________________________\n\n"
    if input != 'exit'
    #tries to create with number as the name - find based on input.to_i - 1 & if that is less than food truck all's length
    food_truck = FoodTruck.find(input)
    #if food_truck != false proceed, otherwise reprompt user in else condition
    until input == "back"
      puts food_truck.name
      puts food_truck.hours
      puts food_truck.display_items
      puts "____________________________________\n\n"
      total = 0
      puts "would you like to purchase something?: "
      input = gets.strip

      if input=="yes"
        puts "would you like to check your balance first?"
        input = gets.strip
        if input == "yes"
          puts "Balance: $#{foodie.bank_account.balance}"
        end
        food_truck.display_items
        #food_truck.items.each.with_index(1) {|item, index| puts "#{index}. #{item.key} [$#{item[item.key]}]"}
        puts "which item would you like to purchase?"
        input = gets.strip

        case input
          total ||= 0
          order_items ||= []
          when "1"
            binding.pry
            item = food_truck.items[input.to_i - 1]
            #run code to check bank balance against total. prevent addition if there isn't enough money
            if not enough money
              puts "sorry, not enough. would you like to purchase the other items? enter yes or no"
              input = gets.strip
              if input is yes
                create new instance of order
                and update foodie, food_truck, bank account attributes
              else
            end
            total += item.price
            order_items << item
            items = food_truck.items.keys
            item = keys[input.to_i - 1].to_s
            affordable = food_truck.items[keys[input.to_i - 1]]
            # **check total against foodie.balance**
          when "2"
            # **check total against foodie.balance**
          when "3"
            # **check total against foodie.balance**
          when "4"
            # **check total against foodie.balance**
          when "5"
            # **check total against foodie.balance**
          else
            puts "which items would you like to purchase? or enter 'back' to leave food truck"
            input = gets.strip
        end
        # **create order**
        #order = Order.new(foodie, food_truck, total, [item])
      elsif input == "no"
        input = "back"
      end
    end
  end
  end

end
