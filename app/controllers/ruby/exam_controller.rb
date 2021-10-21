class Ruby::ExamController < ApplicationController
  def index
    @method = Ruby::Method.all.first
  end
end
