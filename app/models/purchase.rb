class Purchase < ApplicationRecord

  belongs_to :customer
  belongs_to :brew

  def customer_name
    if self.customer
      self.customer.name
    end
  end

  def customer_name=(customer_name)
    @customer = Customer.find_or_create_by(name: customer_name)
    self.customer = @customer
  end


end
