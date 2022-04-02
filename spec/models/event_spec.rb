require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    subject { Event.new }
    it 'requires an EventHost and a name' do
      expect(subject).not_to be_valid
      [:event_host, :name].each do |field|
        expect(subject.errors.details.dig(field, 0, :error)).to eq :blank
      end
    end
  end
end
