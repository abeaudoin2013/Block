class CreateImitations < ActiveRecord::Migration
  def change
    create_table :imitations do |t|
      t.text :piece

      t.timestamps null: false
    end
  end
end
