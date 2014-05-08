require 'spec_helper'

describe "phones/show" do
  before(:each) do
    @phone = assign(:phone, stub_model(Phone,
      :number => "Number",
      :person => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number/)
    rendered.should match(//)
  end
end
