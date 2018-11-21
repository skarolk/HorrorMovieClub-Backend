class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :movie_id
      t.boolean :liked
      t.integer :user_id

      t.timestamps
    end
  end
end
