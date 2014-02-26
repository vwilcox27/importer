class CreateProductColumn < ActiveRecord::Migration
    def change
    add_column :products, :value, :string
    add_column :products, :company, :string
    add_column :products, :dropdown, :string
  end
end
