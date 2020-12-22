class CalculationsController < ApplicationController

  def index
  end
  
  def new
    @calculation = Calculation.new
  end

  def create
    @calculation = Calculation.new(calculation_params)
    if @calculation.save
      redirect to action: :create
    else
      render :new
    end
  end


  private
    def calculation_params
      params.require(:calculation).permit(:name, :personality_id, :race_num, :individual_num, :effort_num, :change_id, :ability_id, :tool_id, :status_id)
    end

  end

end