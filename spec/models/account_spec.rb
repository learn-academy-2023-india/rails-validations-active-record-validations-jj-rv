require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'it not valid without a username' do
    account = Account.new(username: nil)
    expect(account).to_not be_valid
  end

  it 'it not valid without a password' do
    account = Account.new(password: nil)
    expect(account).to_not be_valid
  end

  it 'it not valid without a email' do
    account = Account.new(email: nil)
    expect(account).to_not be_valid
  end

  it 'does not allow duplicate usernames' do
    Account.create(
      username: 'test', 
      password: 'test', 
      email: 'test')
  end
end

# Finished in 0.02788 seconds (files took 0.61652 seconds to load)
# 4 examples, 0 failures