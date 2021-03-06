require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AgendasController do

  # This should return the minimal set of attributes required to create a valid
  # Agenda. As you add validations to Agenda, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "dia" => "2015-04-20" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AgendasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all agendas as @agendas" do
      agenda = Agenda.create! valid_attributes
      get :index, {}, valid_session
      assigns(:agendas).should eq([agenda])
    end
  end

  describe "GET show" do
    it "assigns the requested agenda as @agenda" do
      agenda = Agenda.create! valid_attributes
      get :show, {:id => agenda.to_param}, valid_session
      assigns(:agenda).should eq(agenda)
    end
  end

  describe "GET new" do
    it "assigns a new agenda as @agenda" do
      get :new, {}, valid_session
      assigns(:agenda).should be_a_new(Agenda)
    end
  end

  describe "GET edit" do
    it "assigns the requested agenda as @agenda" do
      agenda = Agenda.create! valid_attributes
      get :edit, {:id => agenda.to_param}, valid_session
      assigns(:agenda).should eq(agenda)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Agenda" do
        expect {
          post :create, {:agenda => valid_attributes}, valid_session
        }.to change(Agenda, :count).by(1)
      end

      it "assigns a newly created agenda as @agenda" do
        post :create, {:agenda => valid_attributes}, valid_session
        assigns(:agenda).should be_a(Agenda)
        assigns(:agenda).should be_persisted
      end

      it "redirects to the created agenda" do
        post :create, {:agenda => valid_attributes}, valid_session
        response.should redirect_to(Agenda.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved agenda as @agenda" do
        # Trigger the behavior that occurs when invalid params are submitted
        Agenda.any_instance.stub(:save).and_return(false)
        post :create, {:agenda => { "dia" => "invalid value" }}, valid_session
        assigns(:agenda).should be_a_new(Agenda)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Agenda.any_instance.stub(:save).and_return(false)
        post :create, {:agenda => { "dia" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested agenda" do
        agenda = Agenda.create! valid_attributes
        # Assuming there are no other agendas in the database, this
        # specifies that the Agenda created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Agenda.any_instance.should_receive(:update).with({ "dia" => "2015-04-20" })
        put :update, {:id => agenda.to_param, :agenda => { "dia" => "2015-04-20" }}, valid_session
      end

      it "assigns the requested agenda as @agenda" do
        agenda = Agenda.create! valid_attributes
        put :update, {:id => agenda.to_param, :agenda => valid_attributes}, valid_session
        assigns(:agenda).should eq(agenda)
      end

      it "redirects to the agenda" do
        agenda = Agenda.create! valid_attributes
        put :update, {:id => agenda.to_param, :agenda => valid_attributes}, valid_session
        response.should redirect_to(agenda)
      end
    end

    describe "with invalid params" do
      it "assigns the agenda as @agenda" do
        agenda = Agenda.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Agenda.any_instance.stub(:save).and_return(false)
        put :update, {:id => agenda.to_param, :agenda => { "dia" => "invalid value" }}, valid_session
        assigns(:agenda).should eq(agenda)
      end

      it "re-renders the 'edit' template" do
        agenda = Agenda.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Agenda.any_instance.stub(:save).and_return(false)
        put :update, {:id => agenda.to_param, :agenda => { "dia" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested agenda" do
      agenda = Agenda.create! valid_attributes
      expect {
        delete :destroy, {:id => agenda.to_param}, valid_session
      }.to change(Agenda, :count).by(-1)
    end

    it "redirects to the agendas list" do
      agenda = Agenda.create! valid_attributes
      delete :destroy, {:id => agenda.to_param}, valid_session
      response.should redirect_to(agendas_url)
    end
  end

end
