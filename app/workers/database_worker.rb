class DatabaseWorker
  include Sidekiq::Worker

  def perform
    @post = Post.find(params[:post_id])
    @comments = @post.comments.includes(:post)
  end
end
