module Deployment
  def deployments
    @deployments ||= [].tap do |deployments|
      Dir[File.join("config", "deploy", "*.rb")].each do |file|
        deployment = file.split("/").last[0..-4]
        next if deployment == "deployment" || exclude_list.include?(deployment)
        puts "Include #{deployment}? (Y/n): "
        response = gets.strip
        if response.empty? || response.downcase == "y"
          deployments << deployment
        end
      end
    end
  end

  def exclude_list
    @exclude_list ||= [].tap do |exclude_list|
      exclude_file = File.join("config", "deploy", "exclude_list")
      File.readlines(exclude_file).each { |line| exclude_list << line.strip } if File.exist?(exclude_file)
      exclude_list.reject! { |r| r.empty? }
    end
  end
end
