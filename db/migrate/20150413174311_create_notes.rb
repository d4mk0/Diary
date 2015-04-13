class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.date :date, null: false, index: true
      t.references :user, null: false, index: true

      t.timestamps null: false
    end
  end
end
