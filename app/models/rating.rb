class Rating < ApplicationRecord
    belongs_to :beer

    def to_s
        beer_name = self.beer.name
        score = self.score
        "#{beer_name} #{score}"
    end

end
