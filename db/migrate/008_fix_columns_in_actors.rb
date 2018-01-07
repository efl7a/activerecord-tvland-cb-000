class FixColumnsInActors < ActiveRecord::Migration
  def change
    remove_column :actors, :name, :string
    add_column :actors, :first_name, :string
    add_column :actors, :last_name, :string
  end
end
