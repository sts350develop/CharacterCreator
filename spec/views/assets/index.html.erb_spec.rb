require 'spec_helper'

describe "images/index" do
  before(:each) do
    assign(:images, [
      stub_model(Asset),
      stub_model(Asset)
    ])
  end

  it "renders a list of images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
