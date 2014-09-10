class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def new
    @new_section = Section.new
  end

  def create
    @new_section = Section.new(params[:new_section])
    if @new_section.save
      redirect_to("/sections")
    else
      render("sections/new.html.erb")
    end
  end

  def show
    @section = Section.find(params[:id])
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
     @section = Section.find(params[:id])
    if @section.update(params[:update_section])
      redirect_to("/sections/#{@section.id}")
    else
      render("sections/edit.html.erb")
    end

  end

end
