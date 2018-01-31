class Song < ApplicationRecord
	attr_accessor :title, :artist, :album, :genre, :plays, :year

	# Associates an attachment and a blob. When the song is destroyed
	# they are purged by default (models destroyed, and resource files
	# deleted).
	has_one_attached :mp3

	def initialize(title=' ', artist=' ', album=' ', genre=' ', plays=0, year=0)
		# Note: add exception handling for invalid values
		# Note2: also, should have an ID attribute -- not sure best way to implement this yet tho
		# (i.e., through class variable, or something else)
		@title = title
		@artist = artist
		@album = album
		@genre = genre
		@plays = plays
		@year = year
	end
end
