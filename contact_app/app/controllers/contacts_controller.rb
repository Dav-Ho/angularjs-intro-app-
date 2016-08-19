class ContactsController < ApplicationController
    def index
      @contacts = current_user.contacts
      if params[:category]
        category = Category.find_by(name: params[:category])
        @contacts = category.contacts.where(user_id: current_user)
      end
    end

    def show
      @contact = Contact.find_by(id: params[:id])

    end

    def new
    end

    def create
      @contact = Contact.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      middle_name: params[:middle_name],
      bio: params[:bio],
      user_id: current_user.id,
      )
      if @contact.valid?
        flash[:success] = "Contact created."
        redirect_to "/contacts/#{@contact.id}"
       else
        flash[:warning] = "There was a problem"
        render "new"
      end
    end

    def edit
      @contact = Contact.find_by(id: params[:id])
    end

    def update
      @contact = Contact.find_by(id: params[:id])
      @contact.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      middle_name: params[:middle_name],
      bio: params[:bio],
      latitude: params[:latitude],
      longitude: params[:longitude]
      )
      flash[:success] = "Contact updated."
      redirect_to "/contacts/#{@contact.id}"
    end

    def destroy
      @contact = Contact.find_by(id: params[:id])
      @contact.destroy
      flash[:success] = "Contact deleted."
      redirect_to "/"
    end
  end
