class CreateUnofficials < ActiveRecord::Migration
  def change
    create_table :unofficials do |t|
      t.string :homework
      t.text :description
      t.string :subject
      t.string :assigned_by
      t.date :assigned_in
      t.date :assigned_for

      t.timestamps null: false
    end
  end
end
