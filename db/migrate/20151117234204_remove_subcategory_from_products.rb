class RemoveSubcategoryFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :subcategory, :string
  end
end
