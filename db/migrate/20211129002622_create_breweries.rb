class CreateBreweries < ActiveRecord::Migration[6.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :status
      t.string :reviewlink
      t.string :blogmap
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :beermapping_id

      t.timestamps
    end
  end
end
