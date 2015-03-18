class CreateSuscribers < ActiveRecord::Migration
  def change
    create_table :suscribers do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
