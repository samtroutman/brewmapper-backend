class CreateSavedBreweries < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_breweries do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :brewery, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
