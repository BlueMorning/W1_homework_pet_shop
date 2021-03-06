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

#Return the pet whoÒse name matches with the given pet_name otherwise return nil
def find_pet_by_name(pet_shop, pet_name)

  pet_found_by_name = nil

  for pet in pet_shop[:pets]
    if (pet[:name] == pet_name)
      pet_found_by_name = pet
      break
    end
  end

  return pet_found_by_name
end

#Remove a pet whose name is given from the pet shop
def remove_pet_by_name(pet_shop, pet_name_to_remove)
  for pet in pet_shop[:pets]
    if(pet[:name] == pet_name_to_remove)
      pet_shop[:pets].delete(pet)
      break
    end
  end
end

#Add a new pet to the pet shop
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

#Return the number of pets for a given customer
def customer_pet_count(customer)
  return customer[:pets].count()
end

#Add a new pet to the customer's pet list
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

#Return true if the customer can affors the new pet, false otherwise.
def customer_can_afford_pet(customer, new_pet)
  return customer[:cash] >= new_pet[:price]
end

#Sell a pet to a customer.
def sell_pet_to_customer(pet_shop, pet, customer)

  if(pet != nil && customer_can_afford_pet(customer, pet))
    
    #Pet transaction from the shop to the customer
    remove_pet_by_name(pet_shop, pet[:name])
    add_pet_to_customer(customer, pet)
    increase_pets_sold(pet_shop, 1)

    #Money transaction from the customer to the shop
    decrease_customer_cash(customer, pet[:price])
    add_or_remove_cash(pet_shop, pet[:price])

  end
end

def decrease_customer_cash(customer, pet_price)
  customer[:cash] -= pet_price
end
