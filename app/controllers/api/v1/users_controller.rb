module Api
  module V1
    class UsersController < ApplicationController
      prepend_before_action :_swap_current_user_id_for_me, only: [:show]

      def _swap_current_user_id_for_me
        return unless params[:id] == "me"

        params[:id] = current_user.try(:id)
      end
    end
  end
end
