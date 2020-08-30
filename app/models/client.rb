class Client < ApplicationRecord
    has_many :workouts
    has_many :trainers, through: :workouts
    validates :name, presence: true
    validates :weight, inclusion: { in: (0..1000), message: "can't be %{value}." }
    validates :goal_weight, inclusion: { in: (0..1000), message: "can't be %{value}." }
end
