class MoodTypesController < ApplicationController

  def index
    @mood_types = MoodType.all

    respond_to do |format|
      format.html
      format.json { render :json => @mood_types.to_json }
    end
  end

  def reset
    @mood_types = MoodType.all
    @mood_types.each do |mood_type|
      mood_type.destroy
    end

    MoodType.create(id: 1, name: "Happy")
    MoodType.create(id: 2, name: "Sad")
    MoodType.create(id: 3, name: "Mad")
    MoodType.create(id: 4, name: "Normal")
    MoodType.create(id: 5, name: "Lucky")
    MoodType.create(id: 6, name: "Warm")

    redirect_to :action => :index
  end

end
