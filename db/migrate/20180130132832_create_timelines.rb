class CreateTimelines < ActiveRecord::Migration[5.1]
  def change
    create_table :timelines do |t|
      t.string :note
      t.text :body
      t.string :image
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
