# frozen_string_literal: true

require_relative './base_parser'
require_relative './concerns/matches_star'

# nodoc
class BodyParser < BaseParser
  include MatchesStar

  def match(tokens)
    nodes, consumed = match_star tokens, with: paragraph_parser
    return Node.null if nodes.empty?

    BodyNode.new(paragraphs: nodes, consumed: consumed)
  end
end
