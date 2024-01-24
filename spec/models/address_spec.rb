require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'it not valid without a street_number' do
    address = Address.new(street_number: nil)
    expect(address).to_not be_valid
  end

  it 'it not valid without a street_name' do
    address = Address.new(street_name: nil) 
    expect(address).to_not be_valid
  end

  it 'it not valid without a city' do
    address = Address.new(city: nil)
    expect(address).to_not be_valid
  end

  it 'it not valid without a state' do
    address = Address.new(state: nil)
    expect(address).to_not be_valid
  end

  it 'it not valid without a zip' do
    address = Address.new(zip: nil)
    expect(address).to_not be_valid
  end
end

# Finished in 0.03612 seconds (files took 0.70648 seconds to load)
# 5 examples, 0 failures