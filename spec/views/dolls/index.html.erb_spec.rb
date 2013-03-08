require 'spec_helper'

describe "dolls/index" do
  before(:each) do
    assign(:dolls, [
      stub_model(Doll),
      stub_model(Doll)
    ])
  end

  it "renders a list of dolls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
