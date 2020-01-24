class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string     :warehouse_name
      t.string     :nickname
      t.datetime   :post_date
      t.timestamps
    end
  end
end
