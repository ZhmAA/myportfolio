class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Спасибо за ваше сообщение'
    else
      flash.now[:error] = 'Невозможно отправить сообщение'
      render :new
    end
  end
  
end
