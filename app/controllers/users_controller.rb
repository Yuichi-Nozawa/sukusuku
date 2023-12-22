class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: 'ユーザーが登録されました'
    else
      render :new
    end
  end

  def authenticate
    user = User.find_by(email: params[:user][:email])

    if user&.authenticate(params[:user][:password])
      redirect_to root_path, notice: 'ログインに成功しました'
    else
      flash.now[:alert] = 'メールアドレスまたはパスワードが正しくありません'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
