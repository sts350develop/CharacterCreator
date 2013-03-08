require 'spec_helper'

describe "dolls/edit" do
  before(:each) do
    @doll = assign(:doll, stub_model(Doll))
  end

  it "renders the edit doll form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", doll_path(@doll), "post" do
    end
  end
end
