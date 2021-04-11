FactoryBot.define do
  factory :entry do
    title { "MyString" }
    url { "MyText" }
    notes { "MyText" }
    private { false }
    belongs_to { "" }
  end
end
