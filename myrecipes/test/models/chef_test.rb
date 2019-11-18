require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  def setup
  	@chef = Chef.new(chefname: "mashrur", email: "mashrur@example.com")
  end

  test "should be volid" do
  	assert @chef.valid?
  	# ここのスペルはoではなくてaである
  end

  test "name should be present" do
  	@chef.chefname = " "
  	# 上の文章で条件を指定してあげる
  	assert_not @chef.valid?
  	# ここの部分で判定をする
  end

  test "name should be less than 30 characters" do
  	@chef.chefname = "a" * 31
  	assert_not @chef.valid?
  end

  test "email should be present " do
  	@chef.email = " "
  	assert_not @chef.valid?
  end

  test "email should not be too long" do
  	# ここの文章を長くするべきではない
  	@chef.email = "a" * 245 + "@example.com"
  	assert_not @chef.valid?
  end

  test "email should accept correct format" do
  	# メールを正しい形式で受け取ることができているかどうか（正規表現）
  	valid_emails = %w[user@example.com MASHRUR@gmail.com M.first@yahoo.ca john+smith@co.uk.org]
  	# johnとsmithの間にはスペースを入れてはいけない
  	valid_emails.each do |valids|
	  	@chef.email = valids
	  	assert @chef.valid?, "#{valids.inspect} should be valid"
	end
  end

  test "should reject invalid addresses" do
  	invalid_emails = %w[mashrur@example mashuru@example,com mashuru.name@gmail. joe@bar+foo.com]
  	invalid_emails.each do |invalids|
  		@chef.email = invalids
  		assert_not @chef.valid?, "#{invalids.inspect} should be invalid"
  		# ””＃の次の部分は
  	end
  end

  test "email should be unique and case insensitive" do
  	duplicate_chef = @chef.dup
  	duplicate_chef.email = @chef.email.upcase
  	@chef.save
  	assert_not duplicate_chef.valid?
  end

  test "email should be lower case before hitting db " do
    mixed_email = "JohN@Example.com"
    @chef.email = mixed_email
    @chef.save
    assert_equal mixed_email.downcase, @chef.reload.email
  end
end
