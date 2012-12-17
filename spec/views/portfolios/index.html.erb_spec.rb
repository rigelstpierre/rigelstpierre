require 'spec_helper'

describe "portfolios/index" do
  before(:each) do
    assign(:portfolios, [
      stub_model(Portfolio,
        :title => "Title",
        :text => "MyText",
        :client => "Client",
        :published => false,
        :image => "Image"
      ),
      stub_model(Portfolio,
        :title => "Title",
        :text => "MyText",
        :client => "Client",
        :published => false,
        :image => "Image"
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
