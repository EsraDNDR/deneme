class Friend < ActiveRecord::Base
  belongs_to :user
  has_many :loans, :dependent => :destroy

  attr_accessible :email, :name, :user_id
  
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }


  accepts_nested_attributes_for :loans
end
