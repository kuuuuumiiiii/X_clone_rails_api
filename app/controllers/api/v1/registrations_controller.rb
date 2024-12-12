# frozen_string_literal: true

module Api
  module V1
    class RegistrationsController < DeviseTokenAuth::RegistrationsController
      private

      def sign_up_params
        # if params[:registration]
        #   params.require(:registration).permit(:email, :password, :password_confirmation)
        # else
        #   params.permit(:email, :password, :password_confirmation)
        # end
        params.require(:registration).permit(:email, :password, :password_confirmation)
      end
    end
  end
end
