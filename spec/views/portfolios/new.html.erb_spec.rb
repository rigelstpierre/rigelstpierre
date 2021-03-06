require 'spec_helper'

describe "portfolios/new" do
  before(:each) do
    assign(:portfolio, stub_model(Portfolio,
      :title => "MyString",
      :text => "MyText",
      :client => "MyString",
      :published => false,
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new portfolio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => portfolios_path, :method => "post" do
      assert_select "input#portfolio_title", :name => "portfolio[title]"
      assert_select "textarea#portfolio_text", :name => "portfolio[text]"
      assert_select "input#portfolio_client", :name => "portfolio[client]"
      assert_select "input#portfolio_published", :name => "portfolio[published]"
      assert_select "input#portfolio_image", :name => "portfolio[image]"
    end
  end
end
