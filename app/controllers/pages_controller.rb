# frozen_string_literal: true

class PagesController < ApplicationController
  # skip_before_action :authenticate_user!

  def show
    if valid_page?
      render "pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private
  def valid_page?
    template_exists? "pages/#{params[:page]}"
  end
end
