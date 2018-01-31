class Song < ApplicationRecord
	# Associates an attachment and a blob. When the song is destroyed
	# they are purged by default (models destroyed, and resource files
	# deleted).
	has_one_attached :mp3
end
