require "./gorira_mod/specification/purchase_banana_specifiaction"
module GoriraMod
  class GoriraContainer
    def initialize goriras
      @goriras = goriras
    end

    def select_can_purchase_banana_gorira
      specification = PurchaseBananaSpecifiaction.new()
      @goriras.select{|s| specification.is_satisfied_by(s) }
    end
  end
end