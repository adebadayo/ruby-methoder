class Ruby::ClassesController < ApplicationController
  before_action :set_ruby_class, only: %i[ show edit update destroy ]

  # GET /ruby/classes or /ruby/classes.json
  def index
    @ruby_classes = Ruby::Class.all
  end

  # GET /ruby/classes/1 or /ruby/classes/1.json
  def show
  end

  # GET /ruby/classes/new
  def new
    @ruby_class = Ruby::Class.new
  end

  # GET /ruby/classes/1/edit
  def edit
  end

  # POST /ruby/classes or /ruby/classes.json
  def create
    @ruby_class = Ruby::Class.new(ruby_class_params)

    respond_to do |format|
      if @ruby_class.save
        format.html { redirect_to @ruby_class, notice: "Class was successfully created." }
        format.json { render :show, status: :created, location: @ruby_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ruby_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruby/classes/1 or /ruby/classes/1.json
  def update
    respond_to do |format|
      if @ruby_class.update(ruby_class_params)
        format.html { redirect_to @ruby_class, notice: "Class was successfully updated." }
        format.json { render :show, status: :ok, location: @ruby_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ruby_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby/classes/1 or /ruby/classes/1.json
  def destroy
    @ruby_class.destroy
    respond_to do |format|
      format.html { redirect_to ruby_classes_url, notice: "Class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruby_class
      @ruby_class = Ruby::Class.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ruby_class_params
      params.require(:ruby_class).permit(:name)
    end
end
