class IbuksController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_ibuk, only: [:show, :edit, :update, :destroy]

  # GET /ibuks
  # GET /ibuks.json
  def index
    @ibuks = Ibuk.all
  end

  # GET /ibuks/1
  # GET /ibuks/1.json
  def show
  end

  # GET /ibuks/new
  def new
    @ibuk = Ibuk.new
  end

  # GET /ibuks/1/edit
  def edit
  end

  # POST /ibuks
  # POST /ibuks.json
  def create
    @ibuk = Ibuk.new(ibuk_params)
    @ibuk.user = current_user

    respond_to do |format|
      if @ibuk.save
        format.html { redirect_to @ibuk, notice: 'Ibuk was successfully created.' }
        format.json { render :show, status: :created, location: @ibuk }
      else
        format.html { render :new }
        format.json { render json: @ibuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ibuks/1
  # PATCH/PUT /ibuks/1.json
  def update
    respond_to do |format|
      if @ibuk.update(ibuk_params)
        format.html { redirect_to @ibuk, notice: 'Ibuk was successfully updated.' }
        format.json { render :show, status: :ok, location: @ibuk }
      else
        format.html { render :edit }
        format.json { render json: @ibuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ibuks/1
  # DELETE /ibuks/1.json
  def destroy
    @ibuk.destroy
    respond_to do |format|
      format.html { redirect_to ibuks_url, notice: 'Ibuk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ibuk
      @ibuk = Ibuk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ibuk_params
      params.require(:ibuk).permit(:title, :price, :uid, :user_id)
    end
end
