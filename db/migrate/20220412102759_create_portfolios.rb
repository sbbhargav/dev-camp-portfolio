class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :body
      t.text :main_image
      t.text :tumb_image

      t.timestamps
    end
  end
end
