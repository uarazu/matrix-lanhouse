require 'spec_helper'

describe "agendas/new" do
  before(:each) do
    assign(:agenda, stub_model(Agenda,
      :unity => nil,
      :funcionario => nil,
      :desc => "MyString"
    ).as_new_record)
  end

  it "renders new agenda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", agendas_path, "post" do
      assert_select "input#agenda_unity[name=?]", "agenda[unity]"
      assert_select "input#agenda_funcionario[name=?]", "agenda[funcionario]"
      assert_select "input#agenda_desc[name=?]", "agenda[desc]"
    end
  end
end
