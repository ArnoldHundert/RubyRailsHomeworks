class ChangeColumnTypeInPosts < ActiveRecord::Migration[5.0]
  def change
	change_column(:posts, :fee_per, :string)
  end
end
