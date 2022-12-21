class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :events, dependent: :destroy
 has_many :comments, dependent: :destroy
 has_many :guests, dependent: :destroy

 def name
   first_name + ' ' + last_name
 end

end
