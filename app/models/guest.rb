class Guest < ApplicationRecord

  belongs_to :event
  belongs_to :customer

 enum joining_status: { participation: 1, no_join: 2, waiting: 3 }

end
