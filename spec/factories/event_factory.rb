FactoryBot.define do
  factory :event do
    transient do
      sequence(:start_time) { |n| (1 + n) }
    end
    event_host
    sequence(:name) { |n| "Test Event #{n}"}
    start_at { start_time.hours.from_now }
    end_at { start_time.hours.from_now }
  end
end