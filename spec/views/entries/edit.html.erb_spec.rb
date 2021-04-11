require 'rails_helper'

RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email: 'example_user@example.com',
      name: 'Sample',
      password: 'A Sample Password'
    ))

    @entry = assign(:entry, Entry.create!(
      title: "MyString",
      url: "MyText",
      notes: "MyText",
      private: false,
      user: @user
    ))
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input[name=?]", "entry[title]"

      assert_select "textarea[name=?]", "entry[url]"

      assert_select "textarea[name=?]", "entry[notes]"

      assert_select "input[name=?]", "entry[private]"
    end
  end
end
