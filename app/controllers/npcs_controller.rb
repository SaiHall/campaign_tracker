class NpcsController < ApplicationController
  def index
    
  end

  def new

  end

  def create
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
      }
      alignment: "#{params[:alignment_1]} #{params[:alignment_2]}"
    })
  end
end