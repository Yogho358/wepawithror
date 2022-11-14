class Beer < ApplicationRecord
    belongs_to :brewery
    has_many :ratings

    def average_rating
        return self.ratings.average(:score)
    end

    def to_s
        name = self.name
        brewery_name = self.brewery.name
        "#{name}, #{brewery_name}"
    end

end
