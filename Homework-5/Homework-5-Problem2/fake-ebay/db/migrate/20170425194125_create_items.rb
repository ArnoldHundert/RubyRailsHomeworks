class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
		t.string(:category)
		t.text(:description)
		t.float(:price)
		t.float(:shipping_price)
		t.integer(:listing_duration)
		t.string(:shipping_destinations_allowed)
      t.timestamps
    end
  end
end
