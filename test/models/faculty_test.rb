require "test_helper"

class FacultyTest < ActiveSupport::TestCase
  # Matchers
  should belong_to(:department)
  should have_many(:assignments)
  should have_many(:courses).through(:assignments)

  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_inclusion_of(:rank).in_array(%w[Assistant\ Professor Associate\ Professor Professor]).with_message("is not an option")

  # Context
  context "Given context" do
    setup do 
      # build the testing context here...
      create_departments
      create_faculties
    end

    # with that testing context, write your tests...
    should "show in alphabetical order" do
      assert_equal ["Kaufer, David", "Kosbie, David", "Quesenberry, Jeria"], Faculty.alphabetical.map { |f| "#{f.last_name}, #{f.first_name}" }
    end
    
    should "show 2 active faculties" do
      assert_equal 2, Faculty.active.size
      assert_equal ["David", "Jeria"], Faculty.active.map {|o| o.first_name }.sort
    end
  end
end
