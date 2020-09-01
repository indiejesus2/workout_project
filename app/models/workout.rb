class Workout < ApplicationRecord
    belongs_to :client
    belongs_to :trainer

    accepts_nested_attributes_for :client, reject_if: :all_blank

end
