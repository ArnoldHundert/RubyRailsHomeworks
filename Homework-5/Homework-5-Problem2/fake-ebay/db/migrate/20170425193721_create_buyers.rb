class CreateBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :buyers do |t|
		t.string(:name)
		t.string(:email)
		t.string(:address)
		t.integer(:phone_number)
		t.integer(:paypal_account_number)
		t.timestamps
    end
  end
end
