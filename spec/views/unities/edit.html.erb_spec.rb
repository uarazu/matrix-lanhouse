require 'spec_helper'

describe "unities/edit" do
  before(:each) do
    @unity = assign(:unity, stub_model(Unity,
      :nome => "MyString"
    ))
  end

  it "renders the edit unity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", unity_path(@unity), "post" do
      assert_select "input#unity_nome[name=?]", "unity[nome]"
    end
  end
end
