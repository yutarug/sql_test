class TestsController < ApplicationController
    def test
        @user=User.new
        @users=User.find_by_sql("SELECT * FROM users")
        binding.pry
    end
    def create
        user=User.new
        user.name=params[:user][:name]
        user.save
        redirect_to '/'
    end
end
