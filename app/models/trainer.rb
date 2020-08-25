class Trainer < ApplicationRecord
    has_many :workouts
    has_many :clients, through: :workouts

    has_secure_password
end
