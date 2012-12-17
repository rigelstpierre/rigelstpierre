require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "MyString",
      :text => "MyText",
      :slug => "MyString",
      :published => false
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_title", :name => "post[title]"
      assert_select "textarea#post_text", :name => "post[text]"
      assert_select "input#post_slug", :name => "post[slug]"
      assert_select "input#post_published", :name => "post[published]"
    end
  end
end
