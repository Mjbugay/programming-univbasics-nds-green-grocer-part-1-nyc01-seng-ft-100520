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
    

                  

# unconsolidated_cart = [
#   {:item => "AVOCADO", :price => 3.00, :clearance => true },
#   {:item => "AVOCADO", :price => 3.00, :clearance => true },
#   {:item => "KALE", :price => 3.00, :clearance => false}
# ]
# consolidate_cart(unconsolidated_cart)
  
  
  