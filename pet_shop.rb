# Return the name of a pet shop
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#Return the total cash of the given pet shop
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#Return void. Add or remove an amount of cash from the total cash amount
def add_or_remove_cash(pet_shop, cash_amount)
  pet_shop[:admin][:total_cash] += cash_amount
end

#Return the number of pets which have been sold
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end
