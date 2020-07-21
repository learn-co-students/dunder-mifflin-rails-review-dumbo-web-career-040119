class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new()
  end

  def create
    @employee = Employee.create(employee_params)
      if @employee.valid?
        redirect_to employees_path
      else
        render "new"
      end
  end


  def edit
    @employee = Employee.find(params[:id])
  end


  private

  def employee_params
    params.require(:employee).permit(:first_name,
    :last_name, :title, :alias, :id,:dog_id)
  end



end
