class Api::V1::CommentsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        @comments = Comment.all
        render json: @comments.to_json
    end

    def create
        @comment = Comment.create(comment_params)
        if @comment.valid?
            render json: @comment.to_json
        else
            render json: { error: 'failed to create comment' }, status: :not_acceptable
        end
    end

    private
        def comment_params
            params.require(:comment).permit(:commentor, :commentee, :comment)
        end
end