require "./gorira_mod/specification/purchase_banana_specifiaction"
module GoriraMod
  class Gorira
    attr_reader :name
    attr_reader :sex
    attr_reader :position

    def initialize name:, sex:, position:
      @name = name
      @sex = sex
      @position = position
    end

    def purchase_banana
      # バナナを購入できるかどうかの仕様を作成
      specification = PurchaseBananaSpecifiaction.new()
      if specification.is_satisfied_by(self)
        puts "バナナを購入できたよ"
      else
        puts "バナナを購入できなかったよ"
      end
    end
  end
end