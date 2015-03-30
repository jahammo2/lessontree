class HomeController < ApplicationController

  def index

    @lessons = Lesson.query(params).order(:updated_at).reverse


    @lessons = Lesson.query(params).page(params[:page]).per(5)
    @grades = GradeLevel.all
    @subjects = Subject.all

  end
end
