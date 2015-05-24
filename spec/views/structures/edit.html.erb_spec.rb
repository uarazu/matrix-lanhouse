require 'spec_helper'

describe "structures/edit" do
  before(:each) do
    @structure = assign(:structure, stub_model(Structure,
      :left_title => "MyString",
      :center_title => "MyString",
      :center_description => "MyString",
      :right_title => "MyString"
    ))
  end

  it "renders the edit structure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", structure_path(@structure), "post" do
      assert_select "input#structure_left_title[name=?]", "structure[left_title]"
      assert_select "input#structure_center_title[name=?]", "structure[center_title]"
      assert_select "input#structure_center_description[name=?]", "structure[center_description]"
      assert_select "input#structure_right_title[name=?]", "structure[right_title]"
    end
  end
end
