class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
		t.string(:name)
		t.string(:email)
		t.string(:address)
		t.integer(:paypal_account_number)
		t.string(:payment_methods_accepted)
      t.timestamps
    end
  end
end
