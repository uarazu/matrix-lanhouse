require 'spec_helper'

describe "structures/new" do
  before(:each) do
    assign(:structure, stub_model(Structure,
      :left_title => "MyString",
      :center_title => "MyString",
      :center_description => "MyString",
      :right_title => "MyString"
    ).as_new_record)
  end

  it "renders new structure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", structures_path, "post" do
      assert_select "input#structure_left_title[name=?]", "structure[left_title]"
      assert_select "input#structure_center_title[name=?]", "structure[center_title]"
      assert_select "input#structure_center_description[name=?]", "structure[center_description]"
      assert_select "input#structure_right_title[name=?]", "structure[right_title]"
    end
  end
end
