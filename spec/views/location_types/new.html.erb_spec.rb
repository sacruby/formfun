require 'spec_helper'

describe "location_types/new" do
  before(:each) do
    assign(:location_type, stub_model(LocationType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new location_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", location_types_path, "post" do
      assert_select "input#location_type_name[name=?]", "location_type[name]"
    end
  end
end
