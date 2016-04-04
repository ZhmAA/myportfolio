class AddProjectUrl < ActiveRecord::Migration
  def change
  	add_column :projects, :projecturl, :string
  end
end
