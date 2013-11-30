module Prodder
  module Steps
    module Api
      def cli_installed?(bin_name)
        `which #{bin_name}` && $?.success?
      end

      def ensure_cli_installed(bin)
        raise "#{bin} is not installed or is not in your path" unless cli_installed?(bin)
      end
    end
  end
end
