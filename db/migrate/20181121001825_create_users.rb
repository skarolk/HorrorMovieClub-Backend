class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.boolean :matched
      t.integer :club_id

      t.timestamps
    end
  end
end
