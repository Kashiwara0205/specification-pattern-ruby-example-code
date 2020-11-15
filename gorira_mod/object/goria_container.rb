require "./gorira_mod/specification/purchase_banana_specifiaction"
module GoriraMod
  class GoriraContainer
    def initialize goriras
      @goriras = goriras
    end

    # [検証]
    # バナナを購入できるゴリラを保持しているかどうか
    def has_can_purchase_gorira?
      specification = PurchaseBananaSpecifiaction.new()
      @goriras.any?{|a| specification.is_satisfied_by(a) }
    end

    # [選択]
    # バナナを購入できるゴリラのみを抽出する
    def select_can_purchase_banana_gorira
      specification = PurchaseBananaSpecifiaction.new()
      @goriras.select{|s| specification.is_satisfied_by(s) }
    end
  end
end