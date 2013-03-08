require 'spec_helper'

describe "dolls/show" do
  before(:each) do
    @doll = assign(:doll, stub_model(Doll))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
