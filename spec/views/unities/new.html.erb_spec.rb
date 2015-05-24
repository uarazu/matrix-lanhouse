require 'spec_helper'

describe "unities/new" do
  before(:each) do
    assign(:unity, stub_model(Unity,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new unity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", unities_path, "post" do
      assert_select "input#unity_nome[name=?]", "unity[nome]"
    end
  end
end
