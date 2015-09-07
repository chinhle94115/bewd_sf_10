class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :genre
      t.boolean :in_theaters
      t.string :poster_image

      t.timestamps null: false
    end
  end
end
