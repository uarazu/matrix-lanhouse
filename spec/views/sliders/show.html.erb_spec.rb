require 'spec_helper'

describe "sliders/show" do
  before(:each) do
    @slider = assign(:slider, stub_model(Slider,
      :description_1 => "Description 1",
      :description_2 => "Description 2",
      :description_3 => "Description 3",
      :description_4 => "Description 4",
      :description_5 => "Description 5"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description 1/)
    rendered.should match(/Description 2/)
    rendered.should match(/Description 3/)
    rendered.should match(/Description 4/)
    rendered.should match(/Description 5/)
  end
end
