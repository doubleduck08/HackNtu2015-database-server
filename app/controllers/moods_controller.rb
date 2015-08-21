class MoodsController < ApplicationController

  def index
    @moods = Mood.all

    respond_to do |format|
      format.html
      format.json { render :json => @moods.to_json }
    end
  end

  def new
    @mood = Mood.new
    # @mood_collection = MoodType.all
  end

  def create
    @mood = Mood.new(mood_params)
    @mood.save

    redirect_to :action => :index
  end

  def destroy
    @mood = Mood.find(params[:id])
    @mood.destroy

    redirect_to :action => :index
  end

private
  def mood_params
    params.require(:mood).permit(:user_id, :mood_type_id, :sentance, :locationX, :locationY)
  end

end