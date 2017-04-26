class AddPhoneNumberToBuyers < ActiveRecord::Migration[5.0]
  def change
    add_column :buyers, :phone_number, :integer
  end
end
