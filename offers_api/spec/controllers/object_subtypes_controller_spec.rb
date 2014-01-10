require 'spec_helper'

describe ObjectSubtypesController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index, organizationId: Organization.first.id , typeSystemName: "flat"
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "responds with an HTTP 400 status code" do
      get :index
      expect(response.status).to eq(400)
    end

    it "responds with an HTTP 404 status code" do
      get :index, organizationId: Organization.first.id , typeSystemName: "flat1"
      expect(response.status).to eq(404)
    end

    it "responds with subtypes of flats" do
      get :index, organizationId: Organization.first.id , typeSystemName: "flat"
      flat_type = Term.find_by system_name: "flat"
      expect(response.body).to  eq(flat_type.child_vocabulary.terms.to_json(only: [:name, :system_name]))
    end

  end
end
