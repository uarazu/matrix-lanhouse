require 'spec_helper'

describe "agendas/index" do
  before(:each) do
    assign(:agendas, [
      stub_model(Agenda,
        :unity => nil,
        :funcionario => nil,
        :desc => "Desc"
      ),
      stub_model(Agenda,
        :unity => nil,
        :funcionario => nil,
        :desc => "Desc"
      )
    ])
  end

  it "renders a list of agendas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
  end
end
