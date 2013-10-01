require 'spec_helper'

describe "videos/show" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :title => "Title",
      :url => "Url",
      :caption => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Url/)
    rendered.should match(/MyText/)
  end
end
