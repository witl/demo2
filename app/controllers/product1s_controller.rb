class Product1sController < ApplicationController
  # GET /product1s
  # GET /product1s.xml
  def index
    @product1s = Product1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product1s }
    end
  end

  # GET /product1s/1
  # GET /product1s/1.xml
  def show
    @product1 = Product1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product1 }
    end
  end

  # GET /product1s/new
  # GET /product1s/new.xml
  def new
    @product1 = Product1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product1 }
    end
  end

  # GET /product1s/1/edit
  def edit
    @product1 = Product1.find(params[:id])
  end

  # POST /product1s
  # POST /product1s.xml
  def create
    @product1 = Product1.new(params[:product1])

    respond_to do |format|
      if @product1.save
        format.html { redirect_to(@product1, :notice => 'Product1 was successfully created.') }
        format.xml  { render :xml => @product1, :status => :created, :location => @product1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product1s/1
  # PUT /product1s/1.xml
  def update
    @product1 = Product1.find(params[:id])

    respond_to do |format|
      if @product1.update_attributes(params[:product1])
        format.html { redirect_to(@product1, :notice => 'Product1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product1s/1
  # DELETE /product1s/1.xml
  def destroy
    @product1 = Product1.find(params[:id])
    @product1.destroy

    respond_to do |format|
      format.html { redirect_to(product1s_url) }
      format.xml  { head :ok }
    end
  end
end
