class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :body
      t.integer :size
    end 
  end
end
