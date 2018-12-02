class Review < ApplicationRecord
    belongs_to :restaurant
    belongs_to :user

    validates_presence_of :rating, :comment

    validates_length_of :comment, :maximum => 200
end
