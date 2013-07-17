require 'spec_helper'

describe "inspections/show" do
  before(:each) do
    @inspection = assign(:inspection, stub_model(Inspection,
      :business_id => 1,
      :score => 2,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Type/)
  end
end
