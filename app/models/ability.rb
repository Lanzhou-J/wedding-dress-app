# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    # Users can view all dresses/shops and create a shop
    can [:index, :show], Dress
    can [:index, :show, :new, :create], Shop
    if user.shop != nil
      # Only shop owners can add products to their shops
      can [:new, :create], Dress
      # Shop owners can only edit and destroy dresses they created
      can [:edit, :update, :destroy], Dress, shop_id: user.shop.id
      can [:edit, :update, :destroy], Shop, user_id: user.id
    end
    if user.is_admin == true
      # Admin can create new or edit/delete all dresses, shops in the app
      can [:index, :show, :new, :create, :edit, :update, :destroy], Dress
      can [:index, :show, :new, :create, :edit, :update, :destroy], Shop
    end
  end
  # Define abilities for the passed in user here. For example:
  #
  #   user ||= User.new # guest user (not logged in)
  #   if user.admin?
  #     can :manage, :all
  #   else
  #     can :read, :all
  #   end
  #
  # The first argument to `can` is the action you are giving the user
  # permission to do.
  # If you pass :manage it will apply to every action. Other common actions
  # here are :read, :create, :update and :destroy.
  #
  # The second argument is the resource the user can perform the action on.
  # If you pass :all it will apply to every resource. Otherwise pass a Ruby
  # class of the resource.
  #
  # The third argument is an optional hash of conditions to further filter the
  # objects.
  # For example, here the user can only update published articles.
  #
  #   can :update, Article, :published => true
  #
  # See the wiki for details:
  # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
end
