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
#   # total = 0
#   # for type in pet_shop[:pets]
#   #     if breed == type[:breed]
#   #       total +=1
#   #     end
#   # end
#  return total
# end

# def find_pet_by_name(pet, pet_name)
#   for name in pet[:pets]
#      if (pet_name == name[:name])
#        return name
#      end
#    end
#   return nil
# end

def add_pet_to_stock(pet_shop, pet)
  pet_shop[:pets].push(pet)
  p pet_shop[:pets]
  pet_shop[:pets].length()
end

def customer_cash(cash)
  return cash[:cash]
end

def customer_pet_count(num_pets)
  num_pets[:pets].length()
end

# def remove_pet_by_name(pet_shop, name)
#  pet_shop[:pets].delete(name)
#
# end

def remove_customer_cash(customer, amount)
 customer[:cash] -= amount
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push("Donkey")
  # p customer[:pets]
  customer[:pets].length()
end
