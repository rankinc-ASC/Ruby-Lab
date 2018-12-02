class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :reviews

    validates_presence_of :name, :description, :contactInfo, :location

    validates_length_of :name, :maximum => 50
    validates_length_of :description, :maximum => 2000
    validates_length_of :contactInfo, :maximum => 200
    validates_length_of :location, :maximum => 100

    def self.search(search)
        where("name LIKE ? OR location LIKE ?", "%#{search}%", "%#{search}%")
    end
end
