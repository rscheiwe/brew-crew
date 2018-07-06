class Purchase < ApplicationRecord
  belongs_to :customer
  belongs_to :brew

  def customer_name
    if self.customer
      self.customer.name
    else
      nil
    end
  end

  def customer_name=(name)
    name = Customer.find_or_create_by(name: name)
    self.customer = name
  end
end
