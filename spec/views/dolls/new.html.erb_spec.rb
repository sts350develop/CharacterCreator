require 'spec_helper'

describe "dolls/new" do
  before(:each) do
    assign(:doll, stub_model(Doll).as_new_record)
  end

  it "renders new doll form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", dolls_path, "post" do
    end
  end
end
