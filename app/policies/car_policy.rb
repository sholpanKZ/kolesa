# frozen_string_literal: true

class CarPolicy < ApplicationPolicy

  def destroy?
    user.present? && record.owner.id == user.id
  end

  def update?
    user.present? && user.admin?
  end

end
