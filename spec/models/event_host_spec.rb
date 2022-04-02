require 'rails_helper'

RSpec.describe EventHost, type: :model do
  subject { create(:event_host) }
  describe 'validations' do
    subject { EventHost.new }
    it 'requires a name' do
      expect(subject).not_to be_valid
      expect(subject.errors.details.dig(:name, 0, :error)).to eq :blank
    end
  end

  describe 'associations' do
    it 'has many events' do
      3.times { create(:event, event_host: subject) }
      expect(subject.events.length).to eq 3
    end
  end

  it "has an #ical" do
    expect(subject.ical).to be_a(Icalendar::Calendar)
  end
end
