module Controllers
  module Refinery
    module FastControllerDecorator
      def wymiframe
        render template: "/refinery/wymiframe", layout: false
      end
    end
  end
end

# Precargar la clase original
require_dependency "refinery/fast_controller"

# Aplicar el decorador
Refinery::FastController.prepend Controllers::Refinery::FastControllerDecorator