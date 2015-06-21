class CalificacionesController < ApplicationController
  # GET /calificaciones
  # GET /calificaciones.json
  def index
    @calificaciones = Calificacione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calificaciones }
    end
  end

  # GET /calificaciones/1
  # GET /calificaciones/1.json
  def show
    @calificacione = Calificacione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @calificacione }
    end
  end

  # GET /calificaciones/new
  # GET /calificaciones/new.json
  def new
    @calificacione = Calificacione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @calificacione }
    end
  end

  # GET /calificaciones/1/edit
  def edit
    @calificacione = Calificacione.find(params[:id])
  end

  # POST /calificaciones
  # POST /calificaciones.json
  def create
    @calificacione = Calificacione.new(params[:calificacione])

    respond_to do |format|
      if @calificacione.save
        format.html { redirect_to @calificacione, notice: 'Calificacione was successfully created.' }
        format.json { render json: @calificacione, status: :created, location: @calificacione }
      else
        format.html { render action: "new" }
        format.json { render json: @calificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /calificaciones/1
  # PUT /calificaciones/1.json
  def update
    @calificacione = Calificacione.find(params[:id])

    respond_to do |format|
      if @calificacione.update_attributes(params[:calificacione])
        format.html { redirect_to @calificacione, notice: 'Calificacione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @calificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calificaciones/1
  # DELETE /calificaciones/1.json
  def destroy
    @calificacione = Calificacione.find(params[:id])
    @calificacione.destroy

    respond_to do |format|
      format.html { redirect_to calificaciones_url }
      format.json { head :no_content }
    end
  end
end
