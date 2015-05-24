require 'spec_helper'

describe "structures/index" do
  before(:each) do
    assign(:structures, [
      stub_model(Structure,
        :left_title => "Left Title",
        :center_title => "Center Title",
        :center_description => "Center Description",
        :right_title => "Right Title"
      ),
      stub_model(Structure,
        :left_title => "Left Title",
        :center_title => "Center Title",
        :center_description => "Center Description",
        :right_title => "Right Title"
      )
    ])
  end

  it "renders a list of structures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Left Title".to_s, :count => 2
    assert_select "tr>td", :text => "Center Title".to_s, :count => 2
    assert_select "tr>td", :text => "Center Description".to_s, :count => 2
    assert_select "tr>td", :text => "Right Title".to_s, :count => 2
  end
end
