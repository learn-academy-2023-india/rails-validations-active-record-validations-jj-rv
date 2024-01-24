class Address < ApplicationRecord
  belongs_to :account
  validates :street_number, :street_name, :city, :state, :zip, presence: true
  validates :street_number, :zip, numericality: { only_integer: true }
  validates :street_number, :street_name, :zip, uniqueness: { scope: :account_id }
  validates :street_number, :zip, numericality: { integer_only: true, message: "Please input numbers only" }
end
