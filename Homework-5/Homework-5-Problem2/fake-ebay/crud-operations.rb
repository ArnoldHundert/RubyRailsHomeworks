# 1
buyer = Buyer.new(name: "Arnold", email: "arnold@yahoo.com", address: "90 John Street", phone_number: "2125550100", paypal_account_number: "1234567890")

# 2
buyer.save

# 3
buyer = Buyer.create(name: "Cody", email: "cody@gmail.com", address: "123 Main Street", phone_number: "3473430200", paypal_account_number: "0987654321")

# 4
all_buyers = Buyer.all

# 5
buyer = Buyer.find(2)

# 6
buyer = Buyer.first

# 7
buyer = Buyer.last

# 8
Buyer.where(paypal_account_number: "0987654321")

# 9
Buyer.last.update(phone_number: "6463430200")

# 10
Buyer.last.destroy
