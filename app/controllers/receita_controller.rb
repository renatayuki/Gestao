class ReceitaController < ApplicationController
  # GET /receita
  # GET /receita.json
  def index
    @receita = Receitum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @receita }
    end
  end

  # GET /receita/1
  # GET /receita/1.json
  def show
    @receitum = Receitum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @receitum }
    end
  end

  # GET /receita/new
  # GET /receita/new.json
  def new
    @receitum = Receitum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @receitum }
    end
  end

  # GET /receita/1/edit
  def edit
    @receitum = Receitum.find(params[:id])
  end

  # POST /receita
  # POST /receita.json
  def create
    @receitum = Receitum.new(params[:receitum])

    respond_to do |format|
      if @receitum.save
        format.html { redirect_to @receitum, :notice => 'Receitum was successfully created.' }
        format.json { render :json => @receitum, :status => :created, :location => @receitum }
      else
        format.html { render :action => "new" }
        format.json { render :json => @receitum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /receita/1
  # PUT /receita/1.json
  def update
    @receitum = Receitum.find(params[:id])

    respond_to do |format|
      if @receitum.update_attributes(params[:receitum])
        format.html { redirect_to @receitum, :notice => 'Receitum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @receitum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /receita/1
  # DELETE /receita/1.json
  def destroy
    @receitum = Receitum.find(params[:id])
    @receitum.destroy

    respond_to do |format|
      format.html { redirect_to receita_url }
      format.json { head :no_content }
    end
  end
end
