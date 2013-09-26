class GameLogicSchema

  def self.schema
    {
      type: "object",
        required: ['gameMode', 'frameRate'],
        properties: {
        gameMode: {
          enum: [ "startGame", "endGame", "displayFrame" ]
        },
        frameRate: {
          type: "integer",
          minimum: 1
        }
      }
    }
  end

end
