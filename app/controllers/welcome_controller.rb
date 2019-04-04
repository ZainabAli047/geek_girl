class WelcomeController < ApplicationController

  def index
    # @data = []
    #User.all.each do |user|
    #  if user.address.city == 'indore'
    #   if user.profile.age > 70
    #    if user.salaryaccount.salary > 50000 
    #        @data << user
    #      end
    #    end
    #  end
    # User.joins(:address).where('addresses.city': "indore").uniq

    # @data = User.joins(:address, :profile, :salaryaccount).where("addresses.city = ? AND profiles.age >= ? AND salaryaccounts.salary > ?", 'indore', 70, 50000)

    # @data = User.includes(:address, :profile, :salaryaccount).where("addresses.city = ? AND profiles.age >= ? AND salaryaccounts.salary > ?", 'indore', 70, 50000).references(:address, :profile, :salaryaccount)

    # @data = User.includes(:address).where('addresses.city = "indore"')

    # User.joins(:address).joins(:profile).joins(:salaryaccount)

    # User.joins(:address, :profile, :salaryaccount)

    # User.joins(:address, :profile).joins(salaryaccount: :bank)

    # Find all users, who live in Indore city and whose age is greater than 70 years and salary is greater than 50,000.

    # Address.where("lower(city) = ?", "Indore".downcase)

   

    # N+1 query
    # Joins / Includes
    # debugger
  end

  def create
    # debugger
    # @user = User.create(name: params[:name], email: params[:email], pass: params[:pass])
    # @user = User.create(params[:user].permit!)
    data = params.require(:user).permit(:name, :email)
    @user = User.create(data)

    redirect_to root_path
  end



  def new
      @newuser = User.new

  end



end
