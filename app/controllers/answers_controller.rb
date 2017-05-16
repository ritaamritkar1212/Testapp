class AnswersController < ApplicationController
	before_action :authenticate_user!, :except => [:index]

	def create
		@post = Post.find(params[:post_id])
		@answer = @post.answers.create!(answer_params)
		redirect_to @post, :notice => "Thanks for posting the answer"
	end

	private 
	def answer_params
		params.require(:answer).permit(:content)
	end

end
