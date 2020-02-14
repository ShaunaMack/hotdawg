class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name, null:false
      t.integer :gender, null:false
      t.string :breed, null:false
      t.integer :size, null:false
      t.integer :age, null:false
      t.text :likes
      t.text :dislikes

      t.timestamps
    end
  end
end
