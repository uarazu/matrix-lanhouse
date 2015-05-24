require 'spec_helper'

describe "sliders/new" do
  before(:each) do
    assign(:slider, stub_model(Slider,
      :description_1 => "MyString",
      :description_2 => "MyString",
      :description_3 => "MyString",
      :description_4 => "MyString",
      :description_5 => "MyString"
    ).as_new_record)
  end

  it "renders new slider form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sliders_path, "post" do
      assert_select "input#slider_description_1[name=?]", "slider[description_1]"
      assert_select "input#slider_description_2[name=?]", "slider[description_2]"
      assert_select "input#slider_description_3[name=?]", "slider[description_3]"
      assert_select "input#slider_description_4[name=?]", "slider[description_4]"
      assert_select "input#slider_description_5[name=?]", "slider[description_5]"
    end
  end
end
