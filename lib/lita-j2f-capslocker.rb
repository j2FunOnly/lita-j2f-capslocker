require "lita"

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

require "lita/handlers/j2f_capslocker"

Lita::Handlers::J2fCapslocker.template_root File.expand_path(
  File.join("..", "..", "templates"),
 __FILE__
)
