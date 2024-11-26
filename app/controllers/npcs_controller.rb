class NpcsController < ApplicationController
  def index
    @npcs = Npc.all
  end

  def new

  end

  def create
    binding.pry
    npc = Npc.new({
      name: params[:name],
      age: params[:age],
      visual_description: params[:visual_description],
      personality_description: params[:personality_description],
      stat_block: {
        :strength => params[:strength_score],
        :dexterity => params[:dexterity_score],
        :constitution => params[:constitution_score],
        :intelligence => params[:intelligence_score],
        :wisdom => params[:wisdom_score],
        :charisma => params[:charisma_score]
      },
      alignment: params[:alignment_1] + " " + params[:alignment_2]
    })
    binding.pry
    npc.save
    redirect_to "/npcs"
  end
end