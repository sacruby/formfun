require 'spec_helper'

describe "phones/edit" do
  before(:each) do
    @phone = assign(:phone, stub_model(Phone,
      :number => "MyString",
      :person => nil
    ))
  end

  it "renders the edit phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", phone_path(@phone), "post" do
      assert_select "input#phone_number[name=?]", "phone[number]"
      assert_select "input#phone_person[name=?]", "phone[person]"
    end
  end
end
