require 'rails_helper'

RSpec.describe SessionController, type: :controller do
render_views
  it "should successfully sign in a user" do
    post :create, email: "cray@gmail.com", password: "cray"
    expect(response).to redirect_to controller: 'profiles', action: 'show'
  end
end
