class person
    attr_accessor :name, :age
    attr_reader :id

    def initialize(name= 'unknown', age = nil, parent_permision: true)
        @id = generate_id
        @name = name
        @age = age
        @parent_permision = parent_permision
    end

    def can_use_services?
        of_age? || @parent_permission
    end

    private

    def of_age?
        @age && @age >= 18
    end

    def generate_id
        rand(1..1000)
      end
    end

