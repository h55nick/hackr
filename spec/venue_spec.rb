require 'spec_helper'

describe Venue do
  describe '.new' do
      it 'creates an instance of Venue' do
        venue = Venue.new
        expect(venue).to be_an_instance_of(Venue)
      end
      describe '#user' do
        it 'has a user' do
          venue = Venue.new
          expect(venue).to be_an_instance_of(Venue)
        end
      end
  end
  describe '.create' do
    it 'has an id' do
      venue = Venue.create()
      expect(venue.id).to_not be nil
    end
  end
  describe "#metadata" do
    it 'has venue properties' do
      venue = Venue.create(:name=>'Madison Square Garden')
      expect(venue.id).to_not eq nil
      expect(venue.name).to eq 'Madison Square Garden'
    end
  end
end


# it 'has username, email, password and password_confirmation' do
#         subscriber = Subscriber.new(username: 'bob', email: 'bob@gmail.com', password:'a', password_confirmation: 'a')
#         expect(subscriber.username).to eq 'bob'
#         expect(subscriber.email).to eq 'bob@gmail.com'
#         expect(subscriber.password).to eq 'a'
#         expect(subscriber.password_confirmation).to eq 'a'
#       end
# end