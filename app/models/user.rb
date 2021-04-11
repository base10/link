class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise(
    #:confirmable,
    :database_authenticatable,
    #:lockable,
    :registerable,
    :recoverable,
    :rememberable,
    #:trackable,
    :validatable
  )

  has_many :entries
end
