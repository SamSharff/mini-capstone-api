class Product < ApplicationRecord
  def is_discounted?
    if price < 10
      puts "True."
    elsif price >= 10
      puts "False."
    end
  end

  def tax
    tax = price * 0.09
    return tax
  end

  def total
    sum = price + tax
    return sum
  end
end
