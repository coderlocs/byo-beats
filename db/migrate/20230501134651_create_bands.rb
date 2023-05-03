class CreateBands < ActiveRecord::Migration[7.0]
  def change
    create_table :bands do |t|
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.string   :permalink,   null: false
      t.string :name,   null: false
      t.text :bio
      t.string :image
      t.string :rate

      t.timestamps
    end
  end
end
