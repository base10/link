require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        title: "Title",
        url: "MyText",
        notes: "MyText",
        private: false,
        belongs_to: ""
      ),
      Entry.create!(
        title: "Title",
        url: "MyText",
        notes: "MyText",
        private: false,
        belongs_to: ""
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
