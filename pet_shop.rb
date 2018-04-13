def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(cash)
  return cash[:admin][:total_cash]
end

# def add_or_remove_cash(pet_shop, cash)
#   current_cash = pet_shop[:admin][:total_cash]
#   revised_cash = current_cash + cash
#   return revised_cash
# end


def pets_sold(sold)
 return sold[:admin][:pets_sold]
end
#
#
#
def stock_count(stock)
  stock[:pets].length()
end

# def pets_by_breed(pet_shop, breed)
#
# pet_shop[:breed]
# end

def find_pet_by_name(pet, names)
  for name in pet[:pets]
     if (names == name[:name])
       return name
     end
   end
  return nil
end
