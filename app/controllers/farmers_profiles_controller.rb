class FarmersProfilesController < ApplicationController
    load_and_authorize_resource

  # GET /farmers_profiles
  # GET /farmers_profiles.json
  def index
    @farmers_profiles = FarmersProfile.all
  end

  # GET /farmers_profiles/1
  # GET /farmers_profiles/1.json
  def show
    @order = Order.new
    @products = Product.all
  end

  # GET /farmers_profiles/new
  def new
    if user_signed_in?
      if current_user.profile  
        @farmers_profile = FarmersProfile.new
        @market_options = Market.all
      else
        redirect_to new_profile_path
      end
    else 
      redirect_to new_user_session_path
    end
  end

  # GET /farmers_profiles/1/edit
  def edit
  end

  # POST /farmers_profiles
  # POST /farmers_profiles.json
  def create
    @farmers_profile = FarmersProfile.new(farmers_profile_params)
    @farmers_profile.profile_id = current_user.profile.id
    @farmers_profile.save    
    current_user.update(role: 1)

    respond_to do |format|
      if @farmers_profile.save
        format.html { redirect_to @farmers_profile, notice: 'Farmers profile was successfully created.' }
        format.json { render :show, status: :created, location: @farmers_profile }
      else
        format.html { render :new }
        format.json { render json: @farmers_profile.errors, status: :unprocessable_entity }
      end
    end
  end
 
  # PATCH/PUT /farmers_profiles/1
  # PATCH/PUT /farmers_profiles/1.json
  def update
    respond_to do |format|
      if @farmers_profile.update(farmers_profile_params)
        format.html { redirect_to @farmers_profile, notice: 'Farmers profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @farmers_profile }
      else
        format.html { render :edit }
        format.json { render json: @farmers_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmers_profiles/1
  # DELETE /farmers_profiles/1.json
  def destroy
    @farmers_profile.destroy
    respond_to do |format|
      format.html { redirect_to farmers_profiles_url, notice: 'Farmers profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farmers_profile
      @farmers_profile = FarmersProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farmers_profile_params
      params.require(:farmers_profile).permit(:profile_id, :images, :bio, :market_id, :stall_name)
    end
end
