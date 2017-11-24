# Return the name of a pet shop
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#Return the total cash of the given pet shop
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#Add or remove an amount of cash from the total cash amount
def add_or_remove_cash(pet_shop, cash_amount)
  pet_shop[:admin][:total_cash] += cash_amount
end

#Return the number of pets which have been sold
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#Increase the pets sold number of the given pet_sold_number
def increase_pets_sold(pet_shop, pet_sold_number)
  pet_shop[:admin][:pets_sold] += pet_sold_number
end

#Return the total number of pets of the given shop
def stock_count(pet_shop)
  return pet_shop[:pets].count
end

#Return an array of pets whose breed matches with the given breed
def pets_by_breed(pet_shop, breed_to_select)
  breed_found = []
  for pet in pet_shop[:pets]
      breed_found.push(pet) if pet[:breed] == breed_to_select
  end
  return breed_found
end
