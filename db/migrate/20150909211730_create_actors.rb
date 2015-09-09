class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :email, null: false
      t.string :phone_number, null: false

      t.timestamps null: false
    end
  end
end
