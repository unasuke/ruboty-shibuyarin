require "spec_helper"
#require "ruboty/handlers/shibuyarin"
#require "ruboty/shibuyarin/actions/reaction"

describe Ruboty::Handlers::Shibuyarin do
  context :reaction do
    let(:robot) do
      Ruboty::Robot.new
    end

    let(:reaction) do
      Ruboty::Shibuyarin::Actions::Reaction
    end

    let(:sender) do
      "bob"
    end

    let(:channel) do
      "#general"
    end

    let(:user) do
      "alice"
    end

    let(:body) do
      "rin"
    end

    let(:call) do
      robot.receive(body: body, from: sender, to: channel)
    end

    let(:message) do
      # Dummy Message
      class Message < Hash
        def reply(message)
          message
        end
      end
      Message.new
    end

    it "should post '呼んだ？' when message include /rin|凛|渋谷凛|しぶりん/" do

      message[:text] = "rin"

      action = Ruboty::Shibuyarin::Actions::Reaction.new(message)

      actual = action.send(:call)
      
      expect(actual).to eq("呼んだ？")

    end
  end
end
