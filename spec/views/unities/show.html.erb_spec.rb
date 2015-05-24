require 'spec_helper'

describe "unities/show" do
  before(:each) do
    @unity = assign(:unity, stub_model(Unity,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
