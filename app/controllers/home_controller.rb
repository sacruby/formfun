class HomeController < ApplicationController
  before_action :set_company

  def index
    @title = "Welcome to SacRuby"
  end

  private
  def set_company
    @company = "SacRuby.new"
  end
end
