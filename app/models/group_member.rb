class GroupMember < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :group

  # Indirect associations

  # Validations

  validates :user_id, :presence => true, :uniqueness => { :scope => :group_id } #otherwise duplicate entry
  validates :group_id, :presence => true

end
