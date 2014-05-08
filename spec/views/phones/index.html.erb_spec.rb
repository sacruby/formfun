require 'spec_helper'

describe "phones/index" do
  before(:each) do
    assign(:phones, [
      stub_model(Phone,
        :number => "Number",
        :person => nil
      ),
      stub_model(Phone,
        :number => "Number",
        :person => nil
      )
    ])
  end

  it "renders a list of phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
