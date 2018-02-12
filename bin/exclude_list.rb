module Deployment
  def exclude_list
    @result = []
    exclude_file = File.join("config", "deploy", "exclude_list")
    File.readlines(exclude_file).each { |line| @result << line.strip } if File.exist?(exclude_file)
    @result.reject { |r| r.empty? }
  end
end
