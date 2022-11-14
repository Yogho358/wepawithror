class Beer < ApplicationRecord
include RatingAverage

    belongs_to :brewery
    has_many :ratings, dependent: :destroy
    
    def to_s
        name = self.name
        brewery_name = self.brewery.name
        "#{name}, #{brewery_name}"
    end

end
