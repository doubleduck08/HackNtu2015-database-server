class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.references :user
      t.references :mood_type

      t.string :sentence
      t.float :locationX
      t.float :locationY

      t.timestamps null: false
    end
  end
end
