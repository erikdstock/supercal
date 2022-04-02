FactoryBot.define do
  factory :event_host do
    sequence(:name) { |n| "Test EventHost #{n}"}
  end
end