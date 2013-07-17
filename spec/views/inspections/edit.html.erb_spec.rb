require 'spec_helper'

describe "inspections/edit" do
  before(:each) do
    @inspection = assign(:inspection, stub_model(Inspection,
      :business_id => 1,
      :score => 1,
      :type => ""
    ))
  end

  it "renders the edit inspection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inspection_path(@inspection), "post" do
      assert_select "input#inspection_business_id[name=?]", "inspection[business_id]"
      assert_select "input#inspection_score[name=?]", "inspection[score]"
      assert_select "input#inspection_type[name=?]", "inspection[type]"
    end
  end
end
