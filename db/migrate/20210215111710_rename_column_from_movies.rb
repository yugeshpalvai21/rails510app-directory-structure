class RenameColumnFromMovies < ActiveRecord::Migration[5.1]
  def change
    rename_column :movies, :type, :movie_type
  end
end
