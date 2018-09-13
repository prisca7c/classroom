# require 'rails_helper'
#
# RSpec.describe SessionController, type: :controller do
# render_views
#   describe 'post create' do
#     it "sets the session user_id of a valid user" do
#       user = User.find_by(email: "cray@gmail.com")
#       post :create, params: {user: {email: "cray@gmail.com",password: "cray"}}
#       expect(session[:user_id]).to eq(user.id)
#     end
#
#     it "does not set the session user_id of an invalid user" do
#       user = User.find_by(email: "fake@gmail.com")
#       post :create, params: {user: {email: "fake@gmail.com",password: "password"}}
#       expect(session[:user_id]).to eq(nil)
#     end
#   end
#
#   describe 'post destroy' do
#     it 'leaves session[:user_id] nil if it was not set' do
#       user = User.create(name: "Jimmy", email: "jim@aol.com", password: "password")
#       visit 'session/1'
#       expect(@request.session[:user_id]).to be nil
#     end
#
#     it 'clears session[:user_id] if it was set' do
#       user = User.find_by(email: "cray@gmail.com")
#       post :create, params: {user: {email: "cray@gmail.com",password: "cray"}}
#
#       delete :destroy
#       expect(session[:user_id]).to be nil
#     end
#   end
# end
