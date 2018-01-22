class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def controllermethod
    @something = params[:something]
    @something_else = params[:something_else]
    @another_else = params[:another_else]
  end
end
