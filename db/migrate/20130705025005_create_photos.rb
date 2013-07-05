class CreatePhotos < ActiveRecord::Migration
  def change
		execute "create extension hstore"
    create_table :photos do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.hstore :properties

	    t.timestamps
	  end
  end
end

