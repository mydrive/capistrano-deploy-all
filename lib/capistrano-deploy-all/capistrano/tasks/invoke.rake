namespace :invoke do
  set :task, ENV["task"]

  desc "Invoke Rake task"
  task :rake do
    on primary fetch(:migration_role) do
      within "#{current_path}" do
        with rails_env: fetch(:rails_env) do
          exclude = Regexp.union([/\Adb:.+/, /\Aasset:.+/])
          info(capture(:rake, fetch(:task))) unless fetch(:task).match(exclude)
        end
      end
    end
  end
end
