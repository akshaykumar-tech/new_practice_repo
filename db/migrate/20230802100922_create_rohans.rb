class CreateRohans < ActiveRecord::Migration[6.1]
  def change
    create_table :rohans do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
