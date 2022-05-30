class AddAgeToGymnasts < ActiveRecord::Migration[6.1]
  def change
    add_column :gymnasts, :age, :integer
  end
end
