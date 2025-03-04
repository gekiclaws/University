module Contexts
  module Faculties

    def create_faculties
      @profq  = FactoryBot.create(:faculty, department: @is)
      @koz    = FactoryBot.create(:faculty, department: @cs, first_name: "David", last_name: "Kosbie")
      @kaufer = FactoryBot.create(:faculty, department: @english, first_name: "David", last_name: "Kaufer", active: false)
    end
    
    def destroy_faculties
      @profq.destroy
      @koz.destroy
      @kaufer.destroy
    end
  end
end
