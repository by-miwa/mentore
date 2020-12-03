class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.text :concept, null: false
      t.string :appli, null: false
      t.string :github, null: false     
      t.references :user, foreign_key: true
      t.integer     :genre,  null: false           # ジャンル
      t.timestamps
    end
  end
end
