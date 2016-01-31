class EmpathiesController < ApplicationController
  before_action :set_empathy, only: [:show, :edit, :update, :destroy]

  # GET /empathies
  # GET /empathies.json
  def index
    @empathies = Empathy.all
  end

  # GET /empathies/1
  # GET /empathies/1.json
  def show
  end

  # GET /empathies/new
  def new
    @empathy = Empathy.new
  end

  # GET /empathies/1/edit
  def edit
  end

  # POST /empathies
  # POST /empathies.json
  def create
    # @empathy = Empathy.new(empathy_params)
    @empathy = Empathy.new(user_id: current_user.id, interest_id: params[:interest_id])

    # binding.pry
    # @empathy = Empathy.create(user_id: current_user.id, interest_id: params[:interest_id])
    # @empathies = Empathy.where(interest_id: params[:interest_id])
    # binding.pry
    # @interest = Interest.where(interest_id: params[:interest_id])
    # binding.pry

    respond_to do |format|
      if @empathy.save
        format.html { redirect_to @empathy.interest, notice: 'このInterestに対し、「私も！」をしました。' }
        # format.html { redirect_to @empathy, notice: 'Empathy was successfully created.' }
        format.json { render :show, status: :created, location: @empathy }
      else
        format.html { render :new }
        format.json { render json: @empathy.errors, status: :unprocessable_entity }
      end
    end
  end

  def empathize
    interest = Interest.find(params[:interest_id])
    # binding.pry
    empathy = current_user.empathies.build(interest_id: interest.id)
    empathy.save
    redirect_to interest
  end

  def unempathize
    interest = Interest.find(params[:interest_id])
    # binding.pry
    empathy = current_user.empathies.find_by(interest_id: interest.id)
    empathy.destroy
    redirect_to interest
  end

  # PATCH/PUT /empathies/1
  # PATCH/PUT /empathies/1.json
  def update
    respond_to do |format|
      if @empathy.update(empathy_params)
        format.html { redirect_to @empathy, notice: 'Empathy was successfully updated.' }
        format.json { render :show, status: :ok, location: @empathy }
      else
        format.html { render :edit }
        format.json { render json: @empathy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empathies/1
  # DELETE /empathies/1.json
  def destroy
    @empathy.destroy
    respond_to do |format|
      format.html { redirect_to empathies_url, notice: 'Empathy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empathy
      @empathy = Empathy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empathy_params
      params.require(:empathy).permit(:interest_id, :user_id)
    end
end
