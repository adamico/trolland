class CreateSides < ActiveRecord::Migration
  def change
    create_table :sides do |t|
      t.string :name
      t.belongs_to :page, index: true

      t.timestamps
    end
  end
end
