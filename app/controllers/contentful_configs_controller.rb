class ContentfulConfigsController < ApplicationController
  before_action :set_contentful_config, only: [:show, :edit, :update, :destroy]

  # GET /contentful_configs
  # GET /contentful_configs.json
  def index
    @contentful_configs = ContentfulConfig.all
  end

  # GET /contentful_configs/1
  # GET /contentful_configs/1.json
  def show
  end

  # GET /contentful_configs/new
  def new
    @contentful_config = ContentfulConfig.new
  end

  # GET /contentful_configs/1/edit
  def edit
  end

  # POST /contentful_configs
  # POST /contentful_configs.json
  def create
    @contentful_config = ContentfulConfig.new(contentful_config_params)

    respond_to do |format|
      if @contentful_config.save
        format.html { redirect_to @contentful_config, notice: 'Contentful config was successfully created.' }
        format.json { render :show, status: :created, location: @contentful_config }
      else
        format.html { render :new }
        format.json { render json: @contentful_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contentful_configs/1
  # PATCH/PUT /contentful_configs/1.json
  def update
    respond_to do |format|
      if @contentful_config.update(contentful_config_params)
        format.html { redirect_to @contentful_config, notice: 'Contentful config was successfully updated.' }
        format.json { render :show, status: :ok, location: @contentful_config }
      else
        format.html { render :edit }
        format.json { render json: @contentful_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contentful_configs/1
  # DELETE /contentful_configs/1.json
  def destroy
    @contentful_config.destroy
    respond_to do |format|
      format.html { redirect_to contentful_configs_url, notice: 'Contentful config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contentful_config
      @contentful_config = ContentfulConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contentful_config_params
      params.require(:contentful_config).permit(:name, :space_id, :access_token)
    end
end
