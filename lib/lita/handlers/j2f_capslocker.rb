module Lita
  module Handlers
    class J2fCapslocker < Handler
      route(
        /^caps\s+(.+)$/i,
        :caps,
        command: true,
        help: { 'caps <word>' => 'prints uppecased <word>' }
      )

      def caps(response)
        response.reply response.match_data.captures.first.upcase
      end

      Lita.register_handler(self)
    end
  end
end
