# frozen_string_literal: true

class CarPolicy < ApplicationPolicy
  def update?
    user.admin?
  end

end
