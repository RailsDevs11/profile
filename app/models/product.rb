class Product < ActiveRecord::Base
  attr_accessible :title, :description, :value
  has_many :comments
  belongs_to :user
  
  #define validation
  validates :title, :presence => true
  scope :created_at_order, order('created_at DESC')

end
