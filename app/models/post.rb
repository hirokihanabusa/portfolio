class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :warehouse_name, presence: true
  validates :post_date, presence: true
  validates :address, presence: true

end

