require 'spec_helper'

describe "location_types/edit" do
  before(:each) do
    @location_type = assign(:location_type, stub_model(LocationType,
      :name => "MyString"
    ))
  end

  it "renders the edit location_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", location_type_path(@location_type), "post" do
      assert_select "input#location_type_name[name=?]", "location_type[name]"
    end
  end
end
