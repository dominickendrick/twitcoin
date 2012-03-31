class CreateProductRequests < ActiveRecord::Migration
  def change
    create_table :product_requests do |t|
      t.string :customer
      t.string :vendor
      t.string :request_text

      t.timestamps
    end
  end
end
