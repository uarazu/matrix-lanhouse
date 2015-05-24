require 'spec_helper'

describe "unities/index" do
  before(:each) do
    assign(:unities, [
      stub_model(Unity,
        :nome => "Nome"
      ),
      stub_model(Unity,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of unities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
