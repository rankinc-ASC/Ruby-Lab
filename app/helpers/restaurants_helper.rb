module RestaurantsHelper
    def getAverageReview(restaurant)
        if restaurant.reviews.blank?
            0
        else
            restaurant.reviews.average(:rating).round(2)
        end
    end
end
