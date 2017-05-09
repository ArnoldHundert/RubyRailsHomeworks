class ChangeColumnNamesInPosts < ActiveRecord::Migration[5.0]
	def change
		rename_column(:posts, :availability_sunday, :yn_sunday)
		rename_column(:posts, :availability_monday, :yn_monday)
		rename_column(:posts, :availability_tueday, :yn_tuesday)
		rename_column(:posts, :availability_wednesday, :yn_wednesday)
		rename_column(:posts, :availability_thursday, :yn_thursday)
		rename_column(:posts, :availability_friday, :yn_friday)
		rename_column(:posts, :availability_saturday, :yn_saturday)
		rename_column(:users, :name_f, :fname)
		rename_column(:users, :name_l, :lname)
	end
end
