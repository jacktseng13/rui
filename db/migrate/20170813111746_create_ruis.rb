class CreateRuis < ActiveRecord::Migration[5.0]
  def change
    create_table :ruis do |t|
      t.string :knowledge
      t.text :time

      t.timestamps
    end
  end
end
