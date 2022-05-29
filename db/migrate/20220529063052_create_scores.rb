class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.references :gymnast, null: false, foreign_key: true
      t.float :fx, null: false
      t.float :ph, null: false
      t.float :sr, null: false
      t.float :vt, null: false
      t.float :pb, null: false
      t.float :hb, null: false

      t.timestamps
    end
  end
end
