class Comment < ApplicationRecord

  belongs_to :event
  belongs_to :customer

end
