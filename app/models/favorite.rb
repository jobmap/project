class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :favoritied, polymorphic: true
end
