require "./const"
require 'date'
module GoriraMod
  class PurchaseBananaSpecifiaction
    def initialize
      # 結果を変えてくないから固定値を入れている
      # 本当は、Date.todayのつもり
      @current_date = Date.new(2020, 2, 05)
    end

    def is_satisfied_by(gorira)
      # - 11月以降なら、全てのゴリラがバナナを購入可能
      return true if @current_date.month >= 11
      # - 性別がメスでありポジションが一般である
      return true if female_and_common?(gorira)
      # - 性別がオスでありポジションが社長である
      return true if male_and_president?(gorira)

      # 上の仕様に当てはらまなかったゴリラは購入不可
      return false
    end

    private

    def female_and_common? gorira
      gorira.sex == Const::GoriraMod::Sex::FEMALE && gorira.position == Const::GoriraMod::Position::COMMON
    end

    def male_and_president? gorira
      gorira.sex == Const::GoriraMod::Sex::MALE && gorira.position == Const::GoriraMod::Position::PESIDENT
    end
  end
end