class PagesController < ApplicationController
  def index
  	@projects = Project.all.reverse
  end
end
