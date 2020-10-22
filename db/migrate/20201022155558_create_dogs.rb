class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :master
      t.belongs_to :city, index: true
      t.belongs_to :dogsitter, index: true
      t.timestamps
    end
  end
end
