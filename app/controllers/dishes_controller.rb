class DishesController < ApplicationController

  def new
    @event = Event.find(params[:event])
    @dish = @event.dishes.new
  end

  def create
    @event = Event.find(params[:event])
    @dish = @event.dishes.new(params[:dish])
    @dish.start_time = @event.eat_time - @dish.cook_time.hours
    if @dish.save
      redirect_to event_path(@dish.event.id), notice: 'Dish was successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @dish = Dish.find(params[:id])
    @event = @dish.event
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update_attributes(params[:dish])
      redirect_to event_path(@dish.event), notice: 'Dish was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    flash[:message] = "Dish successfully removed"
    redirect_to root_path
  end

end
