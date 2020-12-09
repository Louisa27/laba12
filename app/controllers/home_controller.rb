# frozen_string_literal: true

# Sequence controller
class HomeController < ApplicationController
  def input; end

  def output
    @arr = []
    (params[:txt].to_i + 1).times { |i| @arr.append(i) if (i * i).to_s.reverse.to_i == (i * i) } if (check_params(params[:txt]))
  end

  def check_params(str)
    !str.empty? && str.split.length == 1 && str.to_i.to_s == str
  end

end