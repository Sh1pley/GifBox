class CreateGifs < ActiveRecord::Migration[5.0]
  def change
    create_table :gifs do |t|
      t.text :url
      t.text :category
      
      t.timestamps
    end
  end
end
