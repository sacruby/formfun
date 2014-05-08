require 'spec_helper'

describe "phones/new" do
  before(:each) do
    assign(:phone, stub_model(Phone,
      :number => "MyString",
      :person => nil
    ).as_new_record)
  end

  it "renders new phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", phones_path, "post" do
      assert_select "input#phone_number[name=?]", "phone[number]"
      assert_select "input#phone_person[name=?]", "phone[person]"
    end
  end
end
