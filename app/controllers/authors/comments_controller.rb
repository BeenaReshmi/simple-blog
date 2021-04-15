module Authors
class CommentsController < AuthorsController

	def  index
    id = (request.original_url.split('/')[-2])
		@posts_for_comment = Post.find(id)
	end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(parent_id: params[:parent_id])
    @prev_comments = @post.comments.where(parent_id: params[:parent_id])
  end

	def create
    @article = Post.find(params[:post_id])
    @comment = @article.comments.create(comment_params)
    redirect_to posts_path
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :parent_id)
    end
end
end
