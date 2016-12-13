class IbGroup < ApplicationRecord

  has_many   :firms,
             :through => :firm_groups,
             :source => :ib_groups
end
