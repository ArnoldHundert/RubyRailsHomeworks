class RemoveColumnsFromUsersTable < ActiveRecord::Migration[5.0]
	def change
		remove_column :users, :first_name
		remove_column :users, :skill_or_service
		remove_column :users, :fee_yn
		remove_column :users, :fee_amount
		remove_column :users, :fee_per
		remove_column :users, :availability_sunday
		remove_column :users, :availability_monday
		remove_column :users, :availability_tueday
		remove_column :users, :availability_wednesday
		remove_column :users, :availability_thursday
		remove_column :users, :availability_friday
		remove_column :users, :availability_saturday
		remove_column :users, :hours
	end
end
