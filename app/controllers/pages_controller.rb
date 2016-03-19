class PagesController < ApplicationController
  def index
  	@projects = Project.all.reverse
  	@contact = Contact.new
  end
end
