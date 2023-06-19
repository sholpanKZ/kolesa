class CommentPolicy < ApplicationPolicy

  def create?
    user.present? && user != record.car.owner
  end

  def destroy?
    user.present? && record.author.id == user.id
  end

end