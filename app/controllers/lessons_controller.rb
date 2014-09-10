class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
    @sections = Section.all
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
    @sections = Section.all
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
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    @lessons = Lesson.all
    render("/lessons/index.html.erb")
  end

  def next
    @lesson = Lesson.find(params[:id])
    @next_lesson = @lesson.next
    if @next_lesson != nil
     redirect_to("/lessons/#{@next_lesson.id}")
    else
      redirect_to("/lessons/#{@lesson.id}")
    end
  end

  def previous
    @lesson = Lesson.find(params[:id])
    @previous_lesson = @lesson.prev
    if @previous_lesson != nil
      redirect_to("/lessons/#{@previous_lesson.id}")
    else
       redirect_to("/lessons/#{@lesson.id}")
    end
  end

end
