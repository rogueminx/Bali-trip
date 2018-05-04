class Product < ApplicationRecord
  has_many :order_items
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000 }
  before_save :titleize

  private
  def titleize
    self.name = self.name.titleize
  end
end
