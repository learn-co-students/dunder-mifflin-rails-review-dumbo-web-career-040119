class DogsController < ApplicationController

  def index
      @dogs = Dog.all
    end

    def show
      @dog = Dog.find(params[:id])
      # @dogs = @dog.employees
    end

    def new
      @dog = Dog.new()
    end

    #everyt\ime you make route, you have to look at routes;, says the ruler


  ###You are showing them everything that validates.
#     def create
#       @dog = Dog.create(dog_params)
#         if @dog.valid?
#           redirect_to dogs_path
#         else
#           render "new"
#         end
#     end
#
#
#     def edit
#       @dog = Dog.find(params[:id])
#     end
#
#
#     def update
#       @dog = Dog.find(params[:id])
#       @dog.update(dogs_params)
#       @dog.save
#       redirect_to @dog
#     end
#
#
#     def destroy
#       @dog = Dog.find(params[:id])
#       @dog.destroy
#       redirect_to dogs_path
#     end
#
#
#
#   #mass assignment wont work unless you require
#     private
#     def dog_params
#       params.require(:dog).permit(:name, :age)
#     end
#
#
#
end
