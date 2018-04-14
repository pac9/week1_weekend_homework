def pet_shop_name(shop)
  return shop[:name]
end
#For the items which were just getting to the relevant slot in the array, was the word return required?

def total_cash(cash)
  return cash[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash

end
#For the above why did the following not work?
# balance = pet_shop[:admin][:total_cash]
# balance += cash
#and this did not work either
# balance = pet_shop[:admin][:total_cash]
# revised_balance = balance + cash
# balance = revised_balance


def pets_sold(sold)
  return sold[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold)
  shop[:admin][:pets_sold] += sold
end

def stock_count(stock)
  stock[:pets].length()
end

# def pets_by_breed(pet_shop, breed)
#   total = 0
#   for type in pet_shop[:pets]
#       if breed == type[:breed]
#         total +=1
#       end
#   end
#   p total
#
#  return total
# end

def find_pet_by_name(pet_shop, pet_name)
  for name in pet_shop[:pets]
     if (pet_name == name[:name])
       #p name  note this is returning the full hash - not sure if this is what is expected
       return name
     end
   end
   # p pet_name
  return nil
end

def remove_pet_by_name(pet_shop, name)
   # p pet_shop[:pets][:name]

  for pet in pet_shop[:pets]
    if pet[:name] == name
        pet_shop[:pets].delete(pet)
        # p pet_shop[:pets]
    end
  end
end

def add_pet_to_stock(pet_shop, pet)
  pet_shop[:pets].push(pet)
  # p pet_shop[:pets]
  pet_shop[:pets].length()
end

def customer_cash(cash)
  return cash[:cash]
end

def customer_pet_count(num_pets)
  num_pets[:pets].length()
end


def remove_customer_cash(customer, amount)
 customer[:cash] -= amount
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
  # p customer[:pets]
  customer[:pets].length()
end


#OPTIONAL

def customer_can_afford_pet(customer, amount)
 # p amount[:price]
 # p customer[:cash]
    if amount[:price] <= customer[:cash]
      return true
    else
      return false
  end
end

def sell_pet_to_customer(pet_shop, pet_name, customer)

 #  customer[:pets].push(pet_name)
 #  # p pet_shop[:pets]
 #  customer[:pets].length()
 # # p total_cash(pet_shop)
 #
 # ncrease_pets_sold(shop, sold)
 #   shop[:admin][:pets_sold] += sold

   if pet_name[:price] <= customer[:cash]
     customer[:pets].push(pet_name)
     # p pet_shop[:pets]
    customer[:pets].length()
    # pet_shop[:admin][:pets_sold] +=1
    # amount = pet_shop[:pets][:price]
    # customer[:cash] -= amount
    # p customer[:cash]

 end
end
 # p pets_sold(pet_shop)
 # p customer_pet_count(customer)
 # p customer_cash(customer)
 # p find_pet_by_name(pet_shop, pet_name)

 # customer = @customers[0]
 # pet = find_pet_by_name(@pet_shop,"Arthur")
 #
 # sell_pet_to_customer(@pet_shop, pet, customer)
 # done 1, customer_pet_count(customer))
 # done 1, pets_sold(@pet_shop))
 # (100, customer_cash(customer))
 # (1900, total_cash(@pet_shop))
# end

# def sell_pet_to_customer(pet_shop, pet_name, customer)
#
# end
