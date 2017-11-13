class LoginController < ApplicationController
  def index
    RusMailer.sample_email("lfrazi18@uncc.edu").deliver
  end
end
