class CommentsController < ApplicationController
#  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @disc = Disc.find(params[:comment][:disc_id])
    @comment = Comment.new(comment_params)

    if @comment.save
      #@comment.send_notification_email
      flash[:success] = "Comment created!"
      redirect_to disc_path(@disc)
    else
      flash[:danger] = "Error Comment!"
      redirect_to disc_path(@disc)
    end    
  end

  private
    # Never trust parameters dzsc_pathfrom the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:email_source, :disc_id, :description)
    end
end
