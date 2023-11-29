class User < ApplicationRecord
  validates :full_name, :email, :password, presence: true
  validates :gender, :country, :date_of_birth, :phone, presence: true
  validates :profession, presence: true, allow_blank: true
end
