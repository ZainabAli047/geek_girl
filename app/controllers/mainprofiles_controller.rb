class MainprofilesController < ApplicationController
  

  def index
    @mainprofiles = MainProfile.all
  end

  def create
    @mainprofile = MainProfile.new(params.require(:mainprofile).permit!) 
    @mainprofile.save
    redirect_to mainprofiles_path
    
  end
end
