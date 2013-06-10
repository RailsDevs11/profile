class Product < ActiveRecord::Base
  attr_accessible :title, :description, :value
  has_many :comments
  belongs_to :user
  
  #define validation
  validates :title, :presence => true
  scope :created_at_order, order('created_at DESC')

  #return full name of post's owner
  def product_user_name
    self.user.full_name
  end
end
