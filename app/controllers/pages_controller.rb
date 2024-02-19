class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  # GET /pages or /pages.json
  def index
    @pages = Page.all
  end
end
