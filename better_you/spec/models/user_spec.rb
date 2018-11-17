require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "Test User class" do

    subject(:user) {User.new(username:'first_user',
      password_hash:"gdfhwhbtrn",
      session_token:"testtetsttest"
      )}
    context "Verify new user has all fields"

      it {should validate_presence_of(:username)}
      it {should validate_presence_of(:password_hash)}
      it {should validate_presence_of(:session_token)}
    end

end
