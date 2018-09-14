#Weekend Homework, Camelot of pets

#Question 1

def pet_shop_name (pet_shop)
  return pet_shop[:name]
end
#Test result - Passed


#Test 2 total_cash

# def total_cash(pet_shop)
#   #Doing prints to check output and then will just call total cash as print not required
#   p pet_shop[:admin][:total_cash]
# end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end


#Test 3 test_add_or_remove_cash__add

# def add_or_remove_cash(pet_shop, income)
#   income = 10
#   cash = total_cash + income
#   p cash
# end

#Need to remember here that I don't call on the functions above here, the test does that for me!!!!!!!!!!
def add_or_remove_cash(pet_shop, money_to_add)
  pet_shop[:admin][:total_cash] += money_to_add
end
#Works for Test 4 (remove cash) as well!


#Test 5 pets sold

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

#Go back and start defining these longer paths at the top! Also write a commit about that!
#Hello past me! That did not work!!!! Just do the long hand and ask about that form of refactoring on Monday!

#Test 6

def increase_pets_sold(pet_shop, sold_pets)
  pet_shop[:admin][:pets_sold] += sold_pets
end


#Test 7 stock_count

def stock_count(pet_shop)
  pet_shop[:pets].count
end
