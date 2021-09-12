class PagesController < ApplicationController

  def result
    @candidate = Candidate.all
  end
  def operate
    @candidate = Candidate.all
  end  



  # private
  # def candidate_params
  #   params.require(:candidate).permit(:name, :age, :party, :politics)
  # end
  # def find_candidate
  #   @candidate = Candidate.find_by(id: params[:id])
  # end  

end
