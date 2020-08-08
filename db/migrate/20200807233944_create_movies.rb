class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title 
      t.string :rating 
      t.text :summary 
      t.integer :cost 

      t.timestamps
    end
  end
end
