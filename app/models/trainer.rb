class Trainer < ApplicationRecord
    has_many :workouts
    has_many :clients, through: :workouts

    has_secure_password
    validates :username, presence: true, uniqueness: true
#    validates :username, uniqueness: true
end
