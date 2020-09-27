<<<<<<< HEAD
require 'pry'

=======
>>>>>>> 2f24681058f0c5225c3cadfedfc0fbbd124ce6e5
def find_item_by_name_in_collection(name, collection)
  collection.each do |item, item_info|
    
    if item[:item] == name
      return item
    end
    
  end
  
  return nil
end
 
 
# grocery_shelf = [
#   { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
#   { :item => "CANNED CORN", :price => 2.50, :clearance => false },
#   { :item => "SALSA", :price => 1.50, :clearance => false },
#   { :item => "TORTILLAS", :price => 2.00, :clearance => false },
#   { :item => "HOT SAUCE", :price => 1.75, :clearance => false },
<<<<<<< HEAD
#   { :item => "HOT SAUCE", :price 


def increment_count_of_item(cart, item_name)
  cart_index = 0
  
  while cart_index < cart.size do
    current_item = cart[cart_index]
    
    if (current_item[:item] == item_name)
      current_item[:count] += 1
    end
    
    cart_index += 1
  end
  cart
end
     
     
def consolidate_cart(cart)
  updated_cart = Array.new
  cart_index = 0

  while cart_index < cart.size do
    current_item = cart[cart_index]
    
    if (find_item_by_name_in_collection(current_item[:item], updated_cart) == nil)
      current_item[:count] = 1
      updated_cart.push(current_item)
      
    else
      increment_count_of_item(updated_cart, current_item[:item])
    end
  
    cart_index += 1
  end
  updated_cart
end
=======
#   { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
# ] 
     
     
def consolidate_cart(cart)
  consolidated = {}
  
  cart.each do |contents|
    contents.each do |item, info|
      
      if consolidated.include?(item)
        consolidated[item][:count] += 1
        
      else consolidated[item] = {
          :price => info[:price],
          :clearance => info[:clearance],
          :count => 1
      }
      
    end
  end
end
consolidated
end	
    

                            
  

# def consolidate_cart(cart)
#   final = Hash.new 
#   count = :count
  
#   cart.each do |hash|
#     hash.each do |food, description|
      
#       if final.has_key?(food) == false
#         final[food] = description
#         final[food][count] = 1
        
#       elsif final.has_key?(food)
#         final[food][:count] +=1
        
#       end
#     end
#   end
#   final
# end

# unconsolidated_cart = [
#   {:item => "AVOCADO", :price => 3.00, :clearance => true },
#   {:item => "AVOCADO", :price => 3.00, :clearance => true },
#   {:item => "KALE", :price => 3.00, :clearance => false}
# ]
# consolidate_cart(unconsolidated_cart)
  
  
>>>>>>> 2f24681058f0c5225c3cadfedfc0fbbd124ce6e5
  