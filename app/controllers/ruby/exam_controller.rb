class Ruby::ExamController < ApplicationController
  def index
    @method = Ruby::Method.all.sample
  end
end
