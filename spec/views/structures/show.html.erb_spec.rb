require 'spec_helper'

describe "structures/show" do
  before(:each) do
    @structure = assign(:structure, stub_model(Structure,
      :left_title => "Left Title",
      :center_title => "Center Title",
      :center_description => "Center Description",
      :right_title => "Right Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Left Title/)
    rendered.should match(/Center Title/)
    rendered.should match(/Center Description/)
    rendered.should match(/Right Title/)
  end
end
