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
  coupons.each do |coupon_hash|
    fruit_name = coupon_hash[:item]
    new_coupon_hash = {
      :price => coupon_hash[:cost],
      :clearance => "true",
      :count => coupon_hash[:num]
    }
  if cart.key?(fruit_name)
    new_coupon_hash[:clearance] = cart[fruit_name][:clearance]
    if cart[fruit_name][:count]>= new_coupon_hash[:count]
    new_coupon_hash[:count] = (cart[fruit_name][:count]/new_coupon_hash[:count]).floor
    cart[fruit_name][:count] = (coupon_hash[:num])%(cart[fruit_name][:count])
    end
cart[fruit_name + " W/COUPON"] = new_coupon_hash 
    end
    end
  return cart
end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
