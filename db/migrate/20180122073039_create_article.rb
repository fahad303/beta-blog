class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name 
      t.text :description
    end
  end
end
