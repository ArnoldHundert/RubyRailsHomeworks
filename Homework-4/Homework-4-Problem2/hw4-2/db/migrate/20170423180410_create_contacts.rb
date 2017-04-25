class CreateContacts < ActiveRecord::Migration[5.0]
	def change
		create_table :contacts do |t|
			t.string(:name_first)
			t.string(:name_last)
			t.string(:email)
			t.text(:message)
			t.timestamps
		end
	end
end
