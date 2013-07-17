require 'spec_helper'

describe "inspections/new" do
  before(:each) do
    assign(:inspection, stub_model(Inspection,
      :business_id => 1,
      :score => 1,
      :type => ""
    ).as_new_record)
  end

  it "renders new inspection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inspections_path, "post" do
      assert_select "input#inspection_business_id[name=?]", "inspection[business_id]"
      assert_select "input#inspection_score[name=?]", "inspection[score]"
      assert_select "input#inspection_type[name=?]", "inspection[type]"
    end
  end
end
