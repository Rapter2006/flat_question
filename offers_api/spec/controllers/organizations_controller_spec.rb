require 'spec_helper'

describe OrganizationsController do
  it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
  end

  it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response.body).to eq(Organization.all.to_json)
  end
end
