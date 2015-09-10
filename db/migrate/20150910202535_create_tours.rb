class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name, null: false
      t.string :description
    end
  end
end
