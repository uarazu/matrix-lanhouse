require 'spec_helper'

describe "services/new" do
  before(:each) do
    assign(:service, stub_model(Service,
      :title_1 => "MyString",
      :description_1 => "MyString",
      :title_2 => "MyString",
      :description_2 => "MyString",
      :title_3 => "MyString",
      :description_3 => "MyString",
      :title_4 => "MyString",
      :description_4 => "MyString"
    ).as_new_record)
  end

  it "renders new service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", services_path, "post" do
      assert_select "input#service_title_1[name=?]", "service[title_1]"
      assert_select "input#service_description_1[name=?]", "service[description_1]"
      assert_select "input#service_title_2[name=?]", "service[title_2]"
      assert_select "input#service_description_2[name=?]", "service[description_2]"
      assert_select "input#service_title_3[name=?]", "service[title_3]"
      assert_select "input#service_description_3[name=?]", "service[description_3]"
      assert_select "input#service_title_4[name=?]", "service[title_4]"
      assert_select "input#service_description_4[name=?]", "service[description_4]"
    end
  end
end
