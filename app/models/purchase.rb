class Purchase < ApplicationRecord
  belongs_to :product
  before_create :generate_request

  private
    def generate_request
      cp = CompropagoPurchase.new(self)
      order = cp.generate_request
      self.compropago_id = order.id
    end
end
