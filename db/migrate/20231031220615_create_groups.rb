class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :full_name
      t.string :short_name

      t.timestamps
    end
  end
end
