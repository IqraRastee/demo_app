class IqraRasteesController < ApplicationController
  before_action :set_iqra_rastee, only: [:show, :edit, :update, :destroy]

  # GET /iqra_rastees
  # GET /iqra_rastees.json
  def index
    @iqra_rastees = IqraRastee.all
  end

  # GET /iqra_rastees/1
  # GET /iqra_rastees/1.json
  def show
  end

  # GET /iqra_rastees/new
  def new
    @iqra_rastee = IqraRastee.new
  end

  # GET /iqra_rastees/1/edit
  def edit
  end

  # POST /iqra_rastees
  # POST /iqra_rastees.json
  def create
    @iqra_rastee = IqraRastee.new(iqra_rastee_params)

    respond_to do |format|
      if @iqra_rastee.save
        format.html { redirect_to @iqra_rastee, notice: 'Iqra rastee was successfully created.' }
        format.json { render :show, status: :created, location: @iqra_rastee }
      else
        format.html { render :new }
        format.json { render json: @iqra_rastee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iqra_rastees/1
  # PATCH/PUT /iqra_rastees/1.json
  def update
    respond_to do |format|
      if @iqra_rastee.update(iqra_rastee_params)
        format.html { redirect_to @iqra_rastee, notice: 'Iqra rastee was successfully updated.' }
        format.json { render :show, status: :ok, location: @iqra_rastee }
      else
        format.html { render :edit }
        format.json { render json: @iqra_rastee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iqra_rastees/1
  # DELETE /iqra_rastees/1.json
  def destroy
    @iqra_rastee.destroy
    respond_to do |format|
      format.html { redirect_to iqra_rastees_url, notice: 'Iqra rastee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iqra_rastee
      @iqra_rastee = IqraRastee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iqra_rastee_params
      params[:iqra_rastee]
    end
end
