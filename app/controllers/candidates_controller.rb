class CandidatesController < ApplicationController
  before_action :find_candidate, only: [:show, :edit, :update, :vote, :destroy]

  def index
    @candidates = Candidate.all
  end

  def show
  end  
  def poll
    @candidates = Candidate.all
  end
  def new
    @candidate = Candidate.new
  end  
  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save    # 成功
      redirect_to candidates_path, notice: "新增選項成功!"
    else  # 失敗
      render :new
    end
  end
  def edit
  end

  def update
    if @candidate.update(candidate_params)  # 成功
      redirect_to candidates_path, notice: "資料更新成功!"
    else  # 失敗
      render :edit
    end
  end
  def vote
    @candidate.vote_logs.create(ip_address: request.remote_ip) if @candidate
    redirect_to result_candidates_path, notice: "完成投票!"
    # redirect_to candidates_path, notice: "完成投票!"
    # render :result, notice: "完成投票!"
  end

  def destroy
    @candidate.destroy if @candidate
    redirect_to candidates_path, notice: "選項資料已刪除!"
  end
  def result
    @candidate = Candidate.all
  end
  def operate
  end  

  private
  def candidate_params
    params.require(:candidate).permit(:name, :age, :party, :politics)
  end
  def find_candidate
    @candidate = Candidate.find_by(id: params[:id])
  end  

end
