# frozen_string_literal: true

class CarPolicy < ApplicationPolicy

  def comment_create?
    user.present? && record.owner.id != user.id
  end

  def destroy?
    user.present? && record.owner.id == user.id
  end

  def update?
    destroy?
  end

end
