class RemoveColumnUserIdFromMenus < ActiveRecord::Migration[6.0]
  def change
    remove_column :menus, :user_id_id, :references
  end
end
