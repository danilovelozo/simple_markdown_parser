# frozen_string_literal: true

require_relative 'visitors/body_visitor.rb'

# nodoc
class Generator
  def generate(ast)
    body_visitor_visit(ast)
  end

  private

  def body_visitor
    BodyVisitor.new
  end
end
