class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :username
      t.string :email
      t.text :description

      t.timestamps null: false
    end
  end
end
