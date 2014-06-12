require "zipzapzop/version"

module Zip
  class Zapzop
    VALID_COMMANDS = [ "zip", "zap", "zop"]

    def initialize
      @command_history = [] 
      @messages = []
      @in_progress = true
    end

    def in_progress?
      return @in_progress
    end

    def command_history
      return @command_history
    end

    def messages
      return @messages
    end

    def valid_command? command
      VALID_COMMANDS.include? command.downcase
    end

    def valid_commands?(commands)
      @command_history == commands
    end

    def pass(commands, new_command, person)
      return unless self.valid_command?(new_command)
      if valid_commands?(commands)
        @command_history.push new_command 
        @messages.clear 
        @messages.push "Excellent, now it is #{person}'s turn'"
      else
        @messages.clear
        @messages.push "ZIP ZAP ZOP, GAME OVER"
        @messages.push "We lasted #{@command_history.length} rounds."
        @command_history.clear
        @in_progress = false
      end
    end
  end
end
