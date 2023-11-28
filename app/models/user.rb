class User < ApplicationRecord
  validates :full_name,
            :email,
            :password,
            :gender,
            :country,
            :date_of_birth,
            :phone,
            :profession,
            presence:true
end
