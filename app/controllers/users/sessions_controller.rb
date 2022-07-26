module Users
  class SessionsController < Devise::SessionsController
    def guest_sign_in
      # ゲストアカウントでログイン
      sign_in User.guest
      # トップページへリダイレクト
      flash[:success] = t(".notice")
      redirect_to root_path
    end
  end
end
