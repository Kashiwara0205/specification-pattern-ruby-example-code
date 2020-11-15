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
  end
end