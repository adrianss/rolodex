class ContactListsController < ApplicationController
  # GET /contact_lists
  # GET /contact_lists.xml
  def index
    @contact_lists = ContactList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contact_lists }
    end
  end

  # GET /contact_lists/1
  # GET /contact_lists/1.xml
  def show
    @contact_list = ContactList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact_list }
    end
  end

  # GET /contact_lists/new
  # GET /contact_lists/new.xml
  def new
    @contact_list = ContactList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact_list }
    end
  end

  # GET /contact_lists/1/edit
  def edit
    @contact_list = ContactList.find(params[:id])
  end

  # POST /contact_lists
  # POST /contact_lists.xml
  def create
    @contact_list = ContactList.new(params[:contact_list])

    respond_to do |format|
      if @contact_list.save
        format.html { redirect_to(@contact_list, :notice => 'ContactList was successfully created.') }
        format.xml  { render :xml => @contact_list, :status => :created, :location => @contact_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contact_lists/1
  # PUT /contact_lists/1.xml
  def update
    @contact_list = ContactList.find(params[:id])

    respond_to do |format|
      if @contact_list.update_attributes(params[:contact_list])
        format.html { redirect_to(@contact_list, :notice => 'ContactList was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_lists/1
  # DELETE /contact_lists/1.xml
  def destroy
    @contact_list = ContactList.find(params[:id])
    @contact_list.destroy

    respond_to do |format|
      format.html { redirect_to(contact_lists_url) }
      format.xml  { head :ok }
    end
  end
end
