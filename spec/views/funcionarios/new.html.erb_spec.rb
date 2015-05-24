require 'spec_helper'

describe "funcionarios/new" do
  before(:each) do
    assign(:funcionario, stub_model(Funcionario,
      :nome => "MyString",
      :unity => nil
    ).as_new_record)
  end

  it "renders new funcionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", funcionarios_path, "post" do
      assert_select "input#funcionario_nome[name=?]", "funcionario[nome]"
      assert_select "input#funcionario_unity[name=?]", "funcionario[unity]"
    end
  end
end
