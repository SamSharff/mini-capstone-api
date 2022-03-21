class Product < ApplicationRecord
  # validates :price, presence: true  
  # validates :name, presence: true  
  # validates :name, uniqueness: { case_sensitive: false }
  # validates :description, presence: true
  
  has_many :orders
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

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
