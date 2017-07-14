module Deployment
  def deployments
    @deployments ||= [].tap do |deployments|
      Dir[File.join("config", "deploy", "*.rb")].each do |file|
        deployment = file.split("/").last[0..-4]
        next if deployment == "deployment"
        puts "Include #{deployment}? (Y/n): "
        response = gets.strip
        if response.empty? || response.downcase == "y"
          deployments << deployment
        end
      end
    end
  end
end
