
class Sheet2sController < ApplicationController
  # GET /sheet2s
  # GET /sheet2s.xml
  def index
    #@cell_value = "Hello dopey"
    @files = Sheet2sHelper.files

    respond_to do |format|
      format.html  # index.html.erb
      format.xml  { render :xml => @sheet2s }
    end
  end

  # GET /sheet2s/1
  # GET /sheet2s/1.xml
  def show
    @sheet2 = Sheet2.find(params[:id])

    respond_to do |format|
      format.html  # show.html.erb
      format.xml  { render :xml => @sheet2 }
    end
  end

  # GET /sheet2s/new
  # GET /sheet2s/new.xml
  def new
    @sheet2 = Sheet2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sheet2 }
    end
  end

  # GET /sheet2s/1/edit
  def edit
    @sheet2 = Sheet2.find(params[:id])
  end

  # POST /sheet2s
  # POST /sheet2s.xml
  def create
    @sheet2 = Sheet2.new(params[:sheet2])

    respond_to do |format|
      if @sheet2.save
        format.html { redirect_to(@sheet2, :notice => 'Sheet2 was successfully created.') }
        format.xml  { render :xml => @sheet2, :status => :created, :location => @sheet2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sheet2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sheet2s/1
  # PUT /sheet2s/1.xml
  def update
    @sheet2 = Sheet2.find(params[:id])

    respond_to do |format|
      if @sheet2.update_attributes(params[:sheet2])
        format.html { redirect_to(@sheet2, :notice => 'Sheet2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sheet2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sheet2s/1
  # DELETE /sheet2s/1.xml
  def destroy
    @sheet2 = Sheet2.find(params[:id])
    @sheet2.destroy

    respond_to do |format|
      format.html { redirect_to(sheet2s_url) }
      format.xml  { head :ok }
    end
  end
end
