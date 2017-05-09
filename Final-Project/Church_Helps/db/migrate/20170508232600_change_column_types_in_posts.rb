class ChangeColumnTypesInPosts < ActiveRecord::Migration[5.0]
  def change
	change_column(:posts, :fee_yn, :boolean)
	change_column(:posts, :fee_per, :boolean)
	change_column(:posts, :availability_sunday, :boolean)
	change_column(:posts, :availability_monday, :boolean)
	change_column(:posts, :availability_tueday, :boolean)
	change_column(:posts, :availability_wednesday, :boolean)
	change_column(:posts, :availability_thursday, :boolean)
	change_column(:posts, :availability_friday, :boolean)
	change_column(:posts, :availability_saturday, :boolean)
  end
end
