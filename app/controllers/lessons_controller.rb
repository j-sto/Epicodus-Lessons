class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
    @new_lesson = Lesson.new
    render('lessons/new.html.erb')
  end

  def create
    @new_lesson = Lesson.new(params[:new_lesson])

    if @new_lesson.save
      redirect_to("/lessons/")
    else
      render("lessons/new.html.erb")
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:update_lesson])
      redirect_to("/lessons/#{@lesson.id}")
    else
      render("lessons/edit.html.erb")
    end
  end

  def delete
    @lesson = Lesson.find(params[:id])
    render("/lessons/delete.html.erb")
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

  end

  def next
    @lesson = Lesson.find(params[:id])
    @next_lesson = @lesson.next
    redirect_to()
  end

end
