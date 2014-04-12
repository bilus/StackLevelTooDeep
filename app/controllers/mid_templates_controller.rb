class MidTemplatesController < ApplicationController
  before_action :set_mid_template, only: [:show, :edit, :update, :destroy]

  # GET /mid_templates
  # GET /mid_templates.json
  def index
    @mid_templates = MidTemplate.all
  end


  # GET /mid_templates/new
  def new
    @mid_template = MidTemplate.new
  end

  # GET /mid_templates/1/edit
  def edit
  end

  # POST /mid_templates
  # POST /mid_templates.json
  def create
    @mid_template = MidTemplate.new(mid_template_params)

    respond_to do |format|
      if @mid_template.save
        format.html { redirect_to mid_templates_path, notice: 'Mid template was successfully created.' }
        format.json { render :show, status: :created, location: @mid_template }
      else
        format.html { render :new }
        format.json { render json: @mid_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mid_templates/1
  # PATCH/PUT /mid_templates/1.json
  def update
    respond_to do |format|
      if @mid_template.update(mid_template_params)
        format.html { redirect_to @mid_template, notice: 'Mid template was successfully updated.' }
        format.json { render :show, status: :ok, location: @mid_template }
      else
        format.html { render :edit }
        format.json { render json: @mid_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mid_templates/1
  # DELETE /mid_templates/1.json
  def destroy
    @mid_template.destroy
    respond_to do |format|
      format.html { redirect_to mid_templates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mid_template
      @mid_template = MidTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mid_template_params
      params[:mid_template]
    end
end
