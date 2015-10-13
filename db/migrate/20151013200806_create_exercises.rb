class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :fivewords, array: true
      t.text :prompts, array: true
      t.text :imitation, array: true

      t.timestamps null: false
    end
  end
end
