class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # disabled registerable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :registerable
end
