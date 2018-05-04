class Product < ApplicationRecord
  has_many :order_items
  validates :name, :presence => true
  validates :price, :presence => true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000 }
  before_save :titleize
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  private
  def titleize_entries
    self.name = self.name.titleize
  end
end
