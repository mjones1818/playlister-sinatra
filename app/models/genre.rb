class Genre < ActiveRecord::Base
  extend Slugifiable
  include Slugifiable
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
end