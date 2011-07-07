class ProdsController < ApplicationController
  # GET /prods
  # GET /prods.xml
  def index
    @prods = Prod.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prods }
    end
  end

  # GET /prods/1
  # GET /prods/1.xml
  def show
    @prod = Prod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prod }
    end
  end

  # GET /prods/new
  # GET /prods/new.xml
  def new
    @prod = Prod.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prod }
    end
  end

  # GET /prods/1/edit
  def edit
    @prod = Prod.find(params[:id])
  end

  # POST /prods
  # POST /prods.xml
  def create
    @prod = Prod.new(params[:prod])

    respond_to do |format|
      if @prod.save
        format.html { redirect_to(@prod, :notice => 'Prod was successfully created.') }
        format.xml  { render :xml => @prod, :status => :created, :location => @prod }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prods/1
  # PUT /prods/1.xml
  def update
    @prod = Prod.find(params[:id])

    respond_to do |format|
      if @prod.update_attributes(params[:prod])
        format.html { redirect_to(@prod, :notice => 'Prod was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prods/1
  # DELETE /prods/1.xml
  def destroy
    @prod = Prod.find(params[:id])
    @prod.destroy

    respond_to do |format|
      format.html { redirect_to(prods_url) }
      format.xml  { head :ok }
    end
  end
end
