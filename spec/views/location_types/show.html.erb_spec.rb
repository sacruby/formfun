require 'spec_helper'

describe "location_types/show" do
  before(:each) do
    @location_type = assign(:location_type, stub_model(LocationType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
