class CreatePosts < ActiveRecord::Migration[5.0]
	def change
		create_table :posts do |t|
			t.string(:skill_or_service)
			t.binary(:fee_yn)
			t.float(:fee_amount)
			t.string(:fee_per)
			t.string(:availability_sunday)
			t.string(:availability_monday)
			t.string(:availability_tueday)
			t.string(:availability_wednesday)
			t.string(:availability_thursday)
			t.string(:availability_friday)
			t.string(:availability_saturday)
			t.text(:hours)
			t.integer(:user_id)

			t.timestamps
		end
	end
end
