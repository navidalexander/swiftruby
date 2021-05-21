class LessonsController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    def create
        @course = Course.find(params[:course_id])
        @lesson = @course.lessons.create(lesson_params)
        @lesson.user_id = current_user.id
        @lesson.save
        redirect_to course_path(@course)
    end

    def show
        @lesson = Lesson.find(params[:id])
        @course = Course.find(params[:course_id])
    end

    def destroy
        @course = Course.find(params[:course_id])
        @lesson = @course.lessons.find(params[:id])
        @lesson.destroy
        redirect_to course_path(@course)
    end
  
    private
      def lesson_params
        params.require(:lesson).permit(:user_id, :lesson_number, :name, :description, :video_url, :notes)
      end
  end