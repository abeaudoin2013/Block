class AddTitleToImitations < ActiveRecord::Migration
  def change
    add_column :imitations, :title, :string
    add_column :imitations, :author, :string
  end
end
