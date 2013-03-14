require 'spec_helper'


 describe Event do

  describe '.new' do

    it 'creates an instance of a Event' do
      event = Event.new
      expect(event).to be_an_instance_of(Event)
    end

    it 'has name, date' do
      event= Event.new(name:'API', date:"1/1/2011")
      expect(event.name).to eq 'API'
      expect(event.date).to eq '1/1/2011'
    end
  end
end