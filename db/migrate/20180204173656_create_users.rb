class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :avatar
      t.string :name
      t.string :email
      t.date :DOB
      t.string :gender
      t.string :country
      t.string :password_digest

      t.timestamps
    end
  end
end
