# frozen_string_literal: true

module Api
  module V1
    class ConfirmationsController < DeviseTokenAuth::ConfirmationsController
      def show
        # 必要なパラメータを許可
        params.permit(:config, :redirect_url, :confirmation_token)
        # 親クラスの`show`を呼び出してデフォルトの動作を維持
        super
      end
    end
  end
end
