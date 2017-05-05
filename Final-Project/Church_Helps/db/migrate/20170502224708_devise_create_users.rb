class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## My added fields
      t.string(:name_f)
      t.string(:name_l)
      t.string(:address1)
      t.string(:address2)
      t.string(:city)
      t.string(:state, limit: 2)
      t.string(:zip_code, limit: 5)
      t.string(:phone_number)
      t.boolean(:giver_yn)
      t.string(:skill_or_service)
      t.boolean(:fee_yn)
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

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
