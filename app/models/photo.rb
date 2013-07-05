class Photo < ActiveRecord::Base
	# To change this template use File | Settings | File Templates.
	#attr_accessible :photo, :title, :url, :properties, :artist

	 validates_presence_of :title
	 validates_presence_of :artist
	 validates_presence_of :url

end