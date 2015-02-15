class ActualizacionsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_actualizacion, only: [:show, :edit, :update, :destroy, :vote]

  # GET /actualizacions
  # GET /actualizacions.json
  def index
    @actualizacions = Actualizacion.all
  end

  # GET /actualizacions/1
  # GET /actualizacions/1.json
  def show
  end

  # GET /actualizacions/new
  def new
    @actualizacion = Actualizacion.new
  end

  # GET /actualizacions/1/edit
  def edit
  end

  # POST /actualizacions
  # POST /actualizacions.json
  def create
    @actualizacion = Actualizacion.new(actualizacion_params)
    @actualizacion.user = current_user

    respond_to do |format|
      if @actualizacion.save
        format.html { redirect_to @actualizacion, notice: 'Actualizacion was successfully created.' }
        format.json { render :show, status: :created, location: @actualizacion }
      else
        format.html { render :new }
        format.json { render json: @actualizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actualizacions/1
  # PATCH/PUT /actualizacions/1.json
  def update
    respond_to do |format|
      if @actualizacion.update(actualizacion_params)
        format.html { redirect_to @actualizacion, notice: 'Actualizacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @actualizacion }
      else
        format.html { render :edit }
        format.json { render json: @actualizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actualizacions/1
  # DELETE /actualizacions/1.json
  def destroy
    @actualizacion.destroy
    respond_to do |format|
      format.html { redirect_to actualizacions_url, notice: 'Actualizacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @actualizacion.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actualizacion
      @actualizacion = Actualizacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actualizacion_params
      params.require(:actualizacion).permit(:user_id, :peso, :dieta, :cardio, :talla, :muscular, :user_id)
    end
end
