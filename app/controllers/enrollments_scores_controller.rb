class EnrollmentsScoresController < ApplicationController
  before_action :set_enrollments_score, only: [:show, :edit, :update, :destroy]

  # GET /enrollments_scores
  # GET /enrollments_scores.json
  def index
    @enrollments_scores = EnrollmentsScore.all
  end

  # GET /enrollments_scores/1
  # GET /enrollments_scores/1.json
  def show
  end

  # GET /enrollments_scores/new
  def new
    @enrollments_score = EnrollmentsScore.new
  end

  # GET /enrollments_scores/1/edit
  def edit
  end

  # POST /enrollments_scores
  # POST /enrollments_scores.json
  def create
    @enrollments_score = EnrollmentsScore.new(enrollments_score_params)

    respond_to do |format|
      if @enrollments_score.save
        format.html { redirect_to @enrollments_score, notice: 'Enrollments score was successfully created.' }
        format.json { render :show, status: :created, location: @enrollments_score }
      else
        format.html { render :new }
        format.json { render json: @enrollments_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollments_scores/1
  # PATCH/PUT /enrollments_scores/1.json
  def update
    respond_to do |format|
      if @enrollments_score.update(enrollments_score_params)
        format.html { redirect_to @enrollments_score, notice: 'Enrollments score was successfully updated.' }
        format.json { render :show, status: :ok, location: @enrollments_score }
      else
        format.html { render :edit }
        format.json { render json: @enrollments_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollments_scores/1
  # DELETE /enrollments_scores/1.json
  def destroy
    @enrollments_score.destroy
    respond_to do |format|
      format.html { redirect_to enrollments_scores_url, notice: 'Enrollments score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollments_score
      @enrollments_score = EnrollmentsScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrollments_score_params
      params.require(:enrollments_score).permit(:id_enrollment, :id_score)
    end
end
