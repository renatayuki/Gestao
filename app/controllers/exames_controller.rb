class ExamesController < ApplicationController
  # GET /exames
  # GET /exames.json
  def index
    @exames = Exame.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @exames }
    end
  end

  # GET /exames/1
  # GET /exames/1.json
  def show
    @exame = Exame.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @exame }
    end
  end

  # GET /exames/new
  # GET /exames/new.json
  def new
    @exame = Exame.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @exame }
    end
  end

  # GET /exames/1/edit
  def edit
    @exame = Exame.find(params[:id])
  end

  # POST /exames
  # POST /exames.json
  def create
    @exame = Exame.new(params[:exame])

    respond_to do |format|
      if @exame.save
        format.html { redirect_to @exame, :notice => 'Exame was successfully created.' }
        format.json { render :json => @exame, :status => :created, :location => @exame }
      else
        format.html { render :action => "new" }
        format.json { render :json => @exame.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exames/1
  # PUT /exames/1.json
  def update
    @exame = Exame.find(params[:id])

    respond_to do |format|
      if @exame.update_attributes(params[:exame])
        format.html { redirect_to @exame, :notice => 'Exame was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @exame.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exames/1
  # DELETE /exames/1.json
  def destroy
    @exame = Exame.find(params[:id])
    @exame.destroy

    respond_to do |format|
      format.html { redirect_to exames_url }
      format.json { head :no_content }
    end
  end
end
