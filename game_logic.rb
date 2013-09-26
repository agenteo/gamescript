require 'json-schema'

class GameLogic
  attr_reader :errors


  def initialize(data)
    @data = JSON.parse(data)
  end

  def validate!
    @errors = JSON::Validator.fully_validate(schema, @data, :errors_as_objects => true)
  end


  private
  
    def schema
      GameLogicSchema.schema
    end
end
