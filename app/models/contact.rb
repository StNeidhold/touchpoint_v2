class Contact < ApplicationRecord
  # Direct associations

  belongs_to :firm

  belongs_to( :business_school, :class_name => "BusinessSchool", :foreign_key => "bs_alma_mater_id" )


  has_many   :touchpoints,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :touchpoints,
             :source => :user

  # Validations
    # There is no Contact information that necessarily MUST be included in a Contact
    # It is imaginable that users will often have incomplete inputs
    # There are thus no data validations for Contacts

    def full_name
     "#{first_name} #{last_name}"
   end


end
