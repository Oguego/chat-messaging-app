class StaticPagesController < ApplicationController

  def home
    render 'static_pages/home',  layout: 'chat_layout'
  end

end