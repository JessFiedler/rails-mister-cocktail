class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.string :description
      t.string :
      t.string :text
      t.string :cocktails
      t.string :
      t.string :references
      t.string :ingredients
      t.string :
      t.string :references

      t.timestamps
    end
  end
end
