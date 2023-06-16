class CommentPolicy < ApplicationPolicy

  def destroy?
    user.present? && record.author.id == user.id
  end

end