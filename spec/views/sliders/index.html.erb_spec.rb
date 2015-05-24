require 'spec_helper'

describe "sliders/index" do
  before(:each) do
    assign(:sliders, [
      stub_model(Slider,
        :description_1 => "Description 1",
        :description_2 => "Description 2",
        :description_3 => "Description 3",
        :description_4 => "Description 4",
        :description_5 => "Description 5"
      ),
      stub_model(Slider,
        :description_1 => "Description 1",
        :description_2 => "Description 2",
        :description_3 => "Description 3",
        :description_4 => "Description 4",
        :description_5 => "Description 5"
      )
    ])
  end

  it "renders a list of sliders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description 1".to_s, :count => 2
    assert_select "tr>td", :text => "Description 2".to_s, :count => 2
    assert_select "tr>td", :text => "Description 3".to_s, :count => 2
    assert_select "tr>td", :text => "Description 4".to_s, :count => 2
    assert_select "tr>td", :text => "Description 5".to_s, :count => 2
  end
end
