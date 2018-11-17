require 'rails_helper'

RSpec.describe User, type: :model do


      subject(:user) do
        user = User.new(username:nil, password_hash: nil)
        user.password=('password')
        user
      end


      it {should validate_presence_of(:username)}
      it {should validate_presence_of(:password_hash)}
      it {should validate_length_of(:password).is_at_least(6)}
      it {should have_many(:goals) }

    end

    it "encrypts the password using BCrypt" do
    expect(BCrypt::Password).to receive(:create)
    User.new(username: "mary_mack", password: "abcdef")
end

    # describe "Creating new user" do
    #
    #   subject(:user2) do
    #     User.create(:username:"second_user",
    #     password_hash:"hdbvioewobfewbr",
    #     session_token: "1234564322")
    #     User.find_by(username:"second_user")
    #   end
    #
    # it {should validate_presence_of(:password_hash)}
    # it {should validate_presence_of(:session_token)}
    # end
