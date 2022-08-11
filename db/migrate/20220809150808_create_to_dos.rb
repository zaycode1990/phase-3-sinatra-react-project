class CreateToDos < ActiveRecord::Migration[6.1]
  def change
    create_table :to_dos do |t|
      t.string :task
      t.boolean :completed
      t.integer :user_id
      t.timestamps
  end
  end
end
