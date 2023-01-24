class Form::RecipeCollection < Form::Base
  attr_accessor :recipes, :user_id
  
  #空のインスタンスを作成する
  def initialize(attributes = {})
    super attributes
    self.recipes = 1.times.map { Recipe.new() } unless self.recipes.present?
  end

  def recipes_attributes=(attributes)
    self.recipes = attributes.map { |_, v| Recipe.new(v) }
  end

  def save
    Recipe.transaction do
      self.recipes.map do |recipe|
        recipe["user_id"] = user_id
        recipe.save        
      end
    end
      return true
    rescue => e
      return false
  end
end