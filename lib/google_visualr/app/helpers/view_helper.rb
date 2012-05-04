module GoogleVisualr

  module Rails

    module ViewHelper

      extend ActiveSupport::Concern

      included do
        helper_method "render_chart"
      end

      def render_chart(chart, dom, options = {:script_tags => true})
        chart.to_js(dom, options).html_safe
      end

    end

  end

end
