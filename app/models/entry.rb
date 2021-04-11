class Entry < ApplicationRecord
  belongs_to :user

  scope :for_user, ->(user) { where(user: user) }
  scope :shared, -> { where(private: false) }
end
