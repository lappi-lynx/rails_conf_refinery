
FactoryGirl.define do
  factory :speaker, :class => Refinery::Speakers::Speaker do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

