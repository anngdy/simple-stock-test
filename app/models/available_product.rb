class AvailableProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :color
  belongs_to :size

  validates :product, presence: true
  validates :color, presence: true
  validates :size, presence: true  
  validates :quantity, presence: true
end
