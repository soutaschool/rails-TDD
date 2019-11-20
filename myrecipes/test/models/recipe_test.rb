require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  	  def setup
		  @chef = Chef.create!(chefname: "mashrur", email: "mashrur@example.com")
		  @recipe = @chef.recipes.build(name: "vegetable", description: "great vegetable recipe")  
	  end
	  # セットアップでこれから使うインスタンス変数を定義しておく

	  test "recipe without chef should be invalid" do
		  @recipe.chef_id = nil
		  assert_not @recipe.valid?
	  end

	  test "recipe should be valid" do
	  	assert @recipe.valid?
	  	# モデルが正しい値かどうかを調べるもの
	  end

	  test 'name should be present' do
	  	@recipe.name = " "
	  	assert_not @recipe.valid?
	  	# assert_not @recipe.valid?が有効でなければtrue、有効であればfalseを返す
	  end

	  test 'description should be present' do
	  	@recipe.description = " "
	  	assert_not @recipe.valid?
	  end

	  test "description shouldn't be less than 5 characters" do
	  	@recipe.description = "a" * 3
	  	# 文字が４つ以下の時
	  	assert_not @recipe.valid?
	  end

	  test "description shouldn't be more than 500 characters" do
	  	@recipe.description = "a" * 501
	  	assert_not @recipe.valid?
	  end
end
