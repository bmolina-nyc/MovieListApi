class CreateMovieLists < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_lists, id: false, primary_key: :imdbID do |t|
      t.string :imdbID, limit: 12, null: false
      t.references :user, foreign_key: true
      t.integer :status. null: false 

      t.timestamps
    end
    add_index :movie_lists, [:user_id, :imdbID], unique: true
  end
end
