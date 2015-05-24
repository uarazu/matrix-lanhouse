require 'spec_helper'

describe "services/show" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :title_1 => "Title 1",
      :description_1 => "Description 1",
      :title_2 => "Title 2",
      :description_2 => "Description 2",
      :title_3 => "Title 3",
      :description_3 => "Description 3",
      :title_4 => "Title 4",
      :description_4 => "Description 4"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title 1/)
    rendered.should match(/Description 1/)
    rendered.should match(/Title 2/)
    rendered.should match(/Description 2/)
    rendered.should match(/Title 3/)
    rendered.should match(/Description 3/)
    rendered.should match(/Title 4/)
    rendered.should match(/Description 4/)
  end
end
