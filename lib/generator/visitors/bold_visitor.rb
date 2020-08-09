# frozen_string_literal: true

# nodoc
class BoldVisitor
  def visit(node)
    "<strong>#{node.value}</strong>"
  end
end
