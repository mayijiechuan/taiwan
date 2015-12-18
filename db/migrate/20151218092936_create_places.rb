class CreatePlaces < ActiveRecord::Migration
  def change
    change_table :ideas do |t|
      t.references :place
    end

    create_table :places do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
