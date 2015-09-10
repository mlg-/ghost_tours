class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :email, null: false
      t.string :phone_number, null: false
      t.string :first_name
      t.string :last_name
    end
  end
end
