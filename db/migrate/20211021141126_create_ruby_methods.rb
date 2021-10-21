class CreateRubyMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :ruby_methods do |t|
      t.string :name, null: false, default: ''
      t.text :description, null: false, default: ''
      t.integer :pattern, null: false
      t.references :ruby_class

      t.timestamps
    end
  end
end


