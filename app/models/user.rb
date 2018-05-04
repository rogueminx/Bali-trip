class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :name, :presence => true
  validates :email, :presence => true
  validates :password, :format => {:multiline => true, :with => /^[([a-z]|[A-Z])0-9_-]{6,40}$/}


  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
