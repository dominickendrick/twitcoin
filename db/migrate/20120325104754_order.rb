class Order < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :vendor
      t.text :customer
      t.float :tweet_id
      t.text :order_str_raw
      t.text :order_parsed
      t.float :order_price
      t.text :order_currency
      t.boolean :payment_received
      
      t.timestamps
    end
  end

end
