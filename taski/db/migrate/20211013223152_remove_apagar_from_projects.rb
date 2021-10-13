class RemoveApagarFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :apagar, :string
  end
end
