class Favorite < ApplicationRecord
  belongs_to :favbooks # user
  belongs_to :bookfavs # book
end
