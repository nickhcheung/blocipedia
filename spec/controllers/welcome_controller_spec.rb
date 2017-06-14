require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  let(:my_user) { create(:user) }

  describe "GET #index" do
    before do
      sign_in my_user
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET about" do
    before do
      sign_in my_user
    end
    
    it "renders the about template" do
      get :about
      expect(response).to render_template("about")
    end
  end
end
