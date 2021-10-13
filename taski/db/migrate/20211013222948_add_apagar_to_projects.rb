class AddApagarToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :apagar, :string
  end
end
