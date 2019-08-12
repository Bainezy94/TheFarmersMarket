# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #

    puts "============"
    puts user.inspect
    puts "============"

    user ||= User.new(role: "guest")

    puts "============"
    puts user.inspect
    puts "============"

    if user.admin?

        puts "========================================================"
        puts "User is an Admin"
        puts "========================================================"

        can :manage, :all

    elsif user.farmer?

        puts "========================================================"
        puts "User is a Farmer"
        puts "========================================================"

        can :create, Order
        can :read, Order, profile_id: user.id

        can :read, Market

        can :read, FarmersProfile
        can :manage, FarmersProfile, profile_id: user.id

        can :manage, Product, farmers_profile_id: user.id

    elsif user.buyer?

        puts "========================================================"
        puts "User is a Buyer"
        puts "========================================================"

        can :create, Order
        can :read, Order, profile_id: user.id

        can :read, Market

        can :create, FarmersProfile
        can :read, FarmersProfile

    elsif user.guest?

        puts "========================================================"
        puts "User is a Guest"
        puts "========================================================"

        can :read, Order, profile_id: user.id

        can :read, Market

        can :read, FarmersProfile

    end
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
end
