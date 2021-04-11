require 'rails_helper'

RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      title: "MyString",
      url: "MyText",
      notes: "MyText",
      private: false,
      belongs_to: ""
    ))
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input[name=?]", "entry[title]"

      assert_select "textarea[name=?]", "entry[url]"

      assert_select "textarea[name=?]", "entry[notes]"

      assert_select "input[name=?]", "entry[private]"

      assert_select "input[name=?]", "entry[belongs_to]"
    end
  end
end
