require 'rails_helper'

describe TodosController, :type => :controller do
  describe "JSON" do
    it "get todos json" do
      get :index, {}, { "Accept" => "application/json" }
    end

    it "post todos json" do
      post :create, :todo => {title: 'Test', completed: false}, format: 'json'
    end

  end
end
