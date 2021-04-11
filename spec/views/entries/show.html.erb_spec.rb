require 'rails_helper'

RSpec.describe "entries/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email: 'example_user@example.com',
      name: 'Sample',
      password: 'A Sample Password'
    ))

    @entry = assign(:entry, Entry.create!(
      title: "Title",
      url: "MyText",
      notes: "MyText",
      private: false,
      user: @user
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
