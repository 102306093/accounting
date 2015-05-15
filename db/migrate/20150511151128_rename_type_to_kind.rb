class RenameTypeToKind < ActiveRecord::Migration
  def change
  	rename_column :expenses, :type, :kind
  end
end
