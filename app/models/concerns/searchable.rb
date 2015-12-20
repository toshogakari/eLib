module Searchable

  extend ActiveSupport::Concern

  included do

    OPERATORS = {
        'LIKE' => :matches,
        '=' => :eq,
        '>' => :gt,
        '<' => :lt
    }

    FILTERS = {
        :matches => lambda{|s| '%' << s << '%'}
    }

    # search
    # @example
    # params = {:title => 'PHP'}
    # queries = [[:title, 'LIKE'], [:category_id, 1]]
    # XXX.search(params, queries)
    # => SELECT * FROM "XXX" WHERE ("books"."title" LIKE '%PHP%')
    def self.search(params, queries)
      if params.nil? or queries.nil?
        return self.all
      end
      arel = self.arel_table
      conditions = []
      queries.each do |query|
        next if params[query[0]].blank?
        key = query[0]
        op = if query[1].blank?
               :eq
             else
               raise ArgumentError, 'invalid argument operator' unless OPERATORS.key?(query[1])
               OPERATORS[query[1]]
             end
        val =  FILTERS.key?(op) ? FILTERS[op].call(params[key]) : params[key]
        conditions << arel[key].send(op, val)
      end
      return self.all if conditions.empty?
      condition = conditions.shift
      conditions.each do |cond|
        condition = condition.and cond
      end
      self.where(condition)
    end
  end

end