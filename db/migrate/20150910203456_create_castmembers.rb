class CreateCastmembers < ActiveRecord::Migration
  def change
    create_table :castmembers do |t|
      t.belongs_to :actor, null: false
      t.belongs_to :tour, null: false
    end
  end
end
