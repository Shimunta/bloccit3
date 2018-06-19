class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end 
  
  def create
    @question = Question.new
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = false
    
    if @question.save
      flash[:notice] = "Question was saved!"
      redirect_to @question
    else
      flash[:alert] = "There was an error saving your question, please try again!"
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = params[:question][:resolved]
    
    if @question.save 
      flash[:notice] = "Question was saved!"
      redirect_to @question
    else
      flash[:alert] = "There was an error saving your edits, please try again"
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    
    if @question.destroy
      flash[:notice] = "\"#{@question.title}\" was deleted successfully."
      redirect_to questions_path
    else
      flash[:alert] = "There was an error please try again"
      render :show
    end
  end
end
