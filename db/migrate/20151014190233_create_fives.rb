class CreateFives < ActiveRecord::Migration
  def change
    create_table :fives do |t|
      t.string :word

      t.timestamps null: false
    end
  end
end
