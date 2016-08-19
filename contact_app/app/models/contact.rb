class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :contact_groups
  has_many :categories, through: :contact_groups

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :bio, presence: true 
end
