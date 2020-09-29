class LandingController < ApplicationController
  def index
  end

  def trigger_job
    ProcessDataJob.perform_later
    redirect_to landing_path, notice: "Job triggered successfully"
  end

  def trigger_worker
    ProcessDataWorker.perform_async
    redirect_to landing_path, notice: "Worker triggered successfully"
  end
end
