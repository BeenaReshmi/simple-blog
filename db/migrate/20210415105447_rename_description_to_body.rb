class RenameDescriptionToBody < ActiveRecord::Migration[6.0]
  def change
  	rename_column :posts, :description, :body
  end
end
