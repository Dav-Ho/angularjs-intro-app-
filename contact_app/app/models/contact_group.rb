class ContactGroup < ActiveRecord::Base
  belongs_to :category
  belongs_to :contact

  validates :name, presence: true
end
