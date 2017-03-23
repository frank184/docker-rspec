require "docker/rspec/version"

module Docker
  module RSpec
    class Run
      def initialize(options = {})!
        @container = options[:container] || 'rspec'
        @docker_options = options[:docker]
        @rspec_options = options[:rspec]
        run!
      end

      def command
        @command ||= "docker-compose #{@docker_options} exec #{@container} rspec #{@rspec_options}"
      end

      def run!
        $stdout.puts exec command
      end
    end
  end
end
