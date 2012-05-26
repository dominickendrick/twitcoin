class AddKeys < ActiveRecord::Migration
  def change
    add_column :products, :vendor_id, :integer
    add_foreign_key "products", "vendors", :name => "products_vendor_id_fk"
  end
end
