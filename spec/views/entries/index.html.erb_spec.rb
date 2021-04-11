require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  include Devise::Test::ControllerHelpers

  before(:each) do
    @user1 = assign(:user, User.create!(
      email: 'example_user1@example.com',
      name: 'Sample',
      password: 'A Sample Password'
    ))

    @user2 = assign(:user, User.create!(
      email: 'example_user2@example.com',
      name: 'Sample',
      password: 'A Sample Password'
    ))

    assign(:entries, [
      Entry.create!(
        title: "Title",
        url: "MyText",
        notes: "MyText",
        private: false,
        user: @user1
      ),
      Entry.create!(
        title: "Title",
        url: "MyText",
        notes: "MyText",
        private: false,
        user: @user2
      )
    ])
  end

  it "renders a list of entries" do
    render

    assert_select "article>h2", text: "Title".to_s, count: 2
    assert_select "article>section", text: "MyText".to_s, count: 2
    assert_select "article>section", text: "MyText".to_s, count: 2
  end
end
