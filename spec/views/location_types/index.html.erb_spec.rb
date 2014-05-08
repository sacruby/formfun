require 'spec_helper'

describe "location_types/index" do
  before(:each) do
    assign(:location_types, [
      stub_model(LocationType,
        :name => "Name"
      ),
      stub_model(LocationType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of location_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
