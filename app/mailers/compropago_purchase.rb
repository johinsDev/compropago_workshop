class CompropagoPurchase
  def initialize(purchase)
    @purchase = purchase
    @product = purchase.product
  end

  def generate_request
    $cp_client.api.place_order(order)
  end

  def order_info
    {
        order_id: @purchase.id,
        order_name: @product.title,
        order_price: @product.princing / 100,
        customer_name: @purchase.name ,
        customer_email: @purchase.email,
        payment_type: @purchase.store,
        currency: 'MXN',
        expiration_time: (DateTime.now + 3.days).to_i
    }
  end

  def order
    Factory::get_instance_of( 'PlaceOrderInfo', order_info)
  end
end