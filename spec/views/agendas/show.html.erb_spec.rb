require 'spec_helper'

describe "agendas/show" do
  before(:each) do
    @agenda = assign(:agenda, stub_model(Agenda,
      :unity => nil,
      :funcionario => nil,
      :desc => "Desc"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Desc/)
  end
end
