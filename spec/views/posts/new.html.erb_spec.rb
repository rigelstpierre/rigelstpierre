require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :text => "MyText",
      :slug => "MyString",
      :published => false
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_title", :name => "post[title]"
      assert_select "textarea#post_text", :name => "post[text]"
      assert_select "input#post_slug", :name => "post[slug]"
      assert_select "input#post_published", :name => "post[published]"
    end
  end
end
