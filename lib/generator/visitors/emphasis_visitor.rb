# frozen_string_literal: true

# nodoc
class EmphasisVisitor
  def visit(node)
    "<em>#{node.value}</em>"
  end
end
