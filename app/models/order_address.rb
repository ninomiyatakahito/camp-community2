class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :prefecture_id, :city, :street, :building_name, :phone_number, :item_id, :user_id
  with_options presence: true do
    validates :post_code, format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :phone_number, format: { with: /\A\d{11}\z/ }
    validates :prefecture_id
    validates :city
    validates :street
    validates :prefecture_id, numericality: { other_than: 0 }
  end

  def save
    order = Event.create(event_id: item_id, user_id: user_id)
    Address.create(post_code: post_code, prefecture_id: prefecture_id, city: city, phone_number: phone_number, street: street, order_id: order.id)
  end
end