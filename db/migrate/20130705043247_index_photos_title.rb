class IndexPhotosTitle < ActiveRecord::Migration


  def up
	  execute "CREATE INDEX photos_title ON photos USING GIN(title)"
  end

  def down
	  execute "DROP INDEX photo_title"
  end

end
