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


#Test 8 test_all_pets_by_breed__found

# def pets_by_breed(pet_shop, breed)
#   count = 0
#   for pets in pet_shop
#     if breed == pet_shop[:pets][:breed]
#       count += 1
#     end
#   end
#   p count
# end

#Think the if arguments were the wrong way round, this should remedy that at the least
# def pets_by_breed(pet_shop, breed)
#   count = 0
#   pets_breed = pet_shop[:pets][:breed]
#   for pets_breed in pet_shop
#     if  pets_breed == breed
#       count += 1
#     end
#   end
#   p count
# end


# def pets_by_breed(pet_shop, breed)
#   p pet_shop[:pets][:breed]["British Shorthair"]
#   p breed
# end

# def pets_by_breed(pet_shop, input_string)
#   pets_by_breed = []
#   for type in pet_shop[:pets][input_string]
#     if type == breed
#       pets_by_breed.push.(type)
#     end
#   end
#   return pets_by_breed.count
# end

def pets_by_breed(pet_shop, breed_string)
  pet_found = []
  for type in pet_shop[:pets]
    # p type
    if type[:breed] == breed_string
      pet_found << type
    end
  end
  return pet_found
end

#Kris code!
# def pets_by_breed(pet_shop, breed)
#    result = []
#      for animal in pet_shop[:pets]
#        if animal[:breed] == breed
#          result << animal
#        end
#      end
#      return result
#  end


#Question 10

# def find_pet_by_name (pet_shop, input_name)
#   name_found = []
#   for pet_name in pet_shop[:pets]
#     # p pet_name[:name]
#     # p pet_shop[:pets]
#     if pet_name[:name] == input_name
#       # p pet_name
#       # p pet_name[:name]
#       name_found << pet_name
#     end
#   end
#   p name_found
# end
# #This outputs the entire Arthur hash, now need to get the data out of it?

def find_pet_by_name (pet_shop, input_name)
  name_found = []
  for pet_name in pet_shop[:pets]
    if pet_name[:name] == input_name
      name_found << pet_name
    end
  end
  return name_found.first #Adding the .first or [0] got the exact bit of data I required to pass the test, good to get the result
end


#Question 12

# def remove_pet_by_name(pet_shop, ex_pet)
#   for pet_array in pet_shop[:pets]
#     # p pet_array
#     if pet_array[:name] == ex_pet
#       pet_array.delete(ex_pet)
#     end
#   end
#   p pet_shop[:pets][3]
# end

#Need to get the loop to tell me what index the found variable is at and then call the delete function on that indexed item!!!!!
#That or shovel into a removed_pet array and delete from there?

# def remove_pet_by_name(pet_shop, input_name)
#   for pet_name in pet_shop[:pets]
#     if pet_name[:name] == input_name
#       pet_shop[:pets].delete[3]
#     end
#   end
#   p pet_shop[:pets][:name]
# end


#Question 13

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end


#Question 14
def customer_cash(customer)
  customer[:cash]
end


#Question 15
def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end


#Question 16
def customer_pet_count(customer)
  customer[:pets].count
end


#Question 17
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

#END OF MVPS


#Optional Questions

#Q1
def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
end
