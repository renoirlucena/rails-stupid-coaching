class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = params[:answer]
    @question = ''

    @question = if @answer =~ /i am going to work/i
                  'Great!'
                elsif @answer.include? '?'
                  'Silly question, get dressed and go to work!'
                else
                  'I dont care, get dressed and go to work!'
                end
  end
end
