class DynamicthingController < ApplicationController
  def index
    @dynamic_thing = DynamicThing.new("test2")

    respond_to do |format|
      format.html  # index.html.erb
      format.xml  { render :xml => @dynamic_thing }
    end
  end

  def show
    @dynamic_thing = DynamicThing.new(params[:id])

    respond_to do |format|
      format.html  # show.html.erb
      format.xml  { render :xml => @dynamic_thing }
    end
  end
end