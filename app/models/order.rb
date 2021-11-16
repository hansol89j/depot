class Order < ApplicationRecord
  validates :name, :address, :email, presence: true
  validates :pay_types, inclusion: pay_types.keys
  enum pay_type: {
    "Check" => 0,
    "Credit card" => 1,
    "Purchase order" => 2
  }
end
