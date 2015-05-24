require 'spec_helper'

describe "services/index" do
  before(:each) do
    assign(:services, [
      stub_model(Service,
        :title_1 => "Title 1",
        :description_1 => "Description 1",
        :title_2 => "Title 2",
        :description_2 => "Description 2",
        :title_3 => "Title 3",
        :description_3 => "Description 3",
        :title_4 => "Title 4",
        :description_4 => "Description 4"
      ),
      stub_model(Service,
        :title_1 => "Title 1",
        :description_1 => "Description 1",
        :title_2 => "Title 2",
        :description_2 => "Description 2",
        :title_3 => "Title 3",
        :description_3 => "Description 3",
        :title_4 => "Title 4",
        :description_4 => "Description 4"
      )
    ])
  end

  it "renders a list of services" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title 1".to_s, :count => 2
    assert_select "tr>td", :text => "Description 1".to_s, :count => 2
    assert_select "tr>td", :text => "Title 2".to_s, :count => 2
    assert_select "tr>td", :text => "Description 2".to_s, :count => 2
    assert_select "tr>td", :text => "Title 3".to_s, :count => 2
    assert_select "tr>td", :text => "Description 3".to_s, :count => 2
    assert_select "tr>td", :text => "Title 4".to_s, :count => 2
    assert_select "tr>td", :text => "Description 4".to_s, :count => 2
  end
end
