module ApplicationHelper
  def format_rspec(decision)
    components = decision.key.split(".")

    action, card = if components.length == 2
                     components
                   else
                     ["decide", components.first]
                   end

    "    game.#{action}(:#{card})\n"
  end
end
