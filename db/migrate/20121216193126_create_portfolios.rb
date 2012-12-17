class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :text
      t.string :client
      t.boolean :published
      t.string :image

      t.timestamps
    end
  end
end
