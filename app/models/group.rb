class Group < ApplicationRecord
  # Direct associations

  has_many   :group_members,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :group_members,
             :source => :user

  # Validations
  validates :name, :presence => true
  validates :school, :presence => true
  validates :industry, :presence => true
  validates :open_or_closed, :presence => true
  validates :hidden_or_public, :presence => true

end
