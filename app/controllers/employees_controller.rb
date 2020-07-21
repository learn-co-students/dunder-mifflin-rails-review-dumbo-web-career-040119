class EmployeesController < ApplicationController
   def index
    @employees = Employee.all
   end

   def new
    @employee = Employee.new
    @dogs = Dog.all
   end

   def create
    @dogs = Dog.all
    @employee = Employee.create(params_check)
    if @employee.valid?
        redirect_to employee_path(@employee)
    else
        render :new
    end
   end

   def show
    @employee = Employee.find(params[:id])
    
   end

   def edit
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
   end

   def update
    @employee = Employee.find(params[:id])
    @employee.update(params_check)
    redirect_to employee_path(@employee)
   end

   def destroy
    Employee.destroy(params[:id])
    redirect_to employees_path

   end

   private

   def params_check
    #@dog = Dog.find(params[:employee][:dog])
    params.require(:employee).permit(:first_name,:last_name,:alias,:title,:office,:img_url,:dog_id)
   end
end
