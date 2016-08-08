class CommentsController < ApplicationController
  def new
    @comments = Comment.all
  end

  def create
    #C# Added after the rest
    #Cookies
    @recipe = Recipe.find_by_id(session[:current_recipe_id])
    
    @comment = current_user.comments.new(comment_params)

    @comment.recipe_id = session[:current_recipe_id]
    #C#

    respond_to do |format|
      if @comment.save
        #
        format.html { redirect_to @recipe, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to Recipe.find_by_id(session[:current_recipe_id]), notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:title, :content)
    end



end
