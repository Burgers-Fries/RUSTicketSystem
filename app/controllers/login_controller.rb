class LoginController < ApplicationController
  def index
    RusMailer.sample_email("lukeafrazier@gmail.com").deliver
  end
end
