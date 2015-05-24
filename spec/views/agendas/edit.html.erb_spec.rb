require 'spec_helper'

describe "agendas/edit" do
  before(:each) do
    @agenda = assign(:agenda, stub_model(Agenda,
      :unity => nil,
      :funcionario => nil,
      :desc => "MyString"
    ))
  end

  it "renders the edit agenda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", agenda_path(@agenda), "post" do
      assert_select "input#agenda_unity[name=?]", "agenda[unity]"
      assert_select "input#agenda_funcionario[name=?]", "agenda[funcionario]"
      assert_select "input#agenda_desc[name=?]", "agenda[desc]"
    end
  end
end
