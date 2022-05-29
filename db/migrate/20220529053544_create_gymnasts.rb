class CreateGymnasts < ActiveRecord::Migration[6.1]
  def change
    create_table :gymnasts do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
