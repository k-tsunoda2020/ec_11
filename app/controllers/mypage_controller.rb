class MypageController < ApplicationController
   before_action :authenticate_user! #ログインしたユーザのみ
   
   def index
   end
end