require 'rails_helper'

RSpec.describe User, type: :model do

    describe 'To create account'do
        it 'Needs name, email and password' do
          user = User.create(name: "name", email: "example@yahoo.com", password: "012468", password_confirmation: "012468")
          expect(user).to be_valid
        end
    end

    describe 'To login'do
      it 'Needs email and password' do
        user = User.create(email: "example@yahoo.com", password: "012468")
        expect(user).to be_valid
      end
    end

end
