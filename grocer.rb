def consolidate_cart(cart)
  # code here
  new_cart = {}
  count = 0
  cart.each do |element|
    element.each do |fruit, hash|
      new_cart[fruit] ||= hash
      new_cart[fruit][:count] ||= 0
      new_cart[fruit][:count] += 1
    end
  end
  return new_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
