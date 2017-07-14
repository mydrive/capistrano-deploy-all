Dir[File.join(__dir__, "**", "tasks", "*.rake")].each { |file| load file }
