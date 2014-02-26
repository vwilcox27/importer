class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :value
      t.string :company
      t.string :dropdown

      t.timestamps
    end
  end
end
