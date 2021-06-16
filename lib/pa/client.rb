module Pa
  class Client
    class << self
      def branches(repo)
        client.branches repo
      end

      def commits(repo, branch, per_page = 5)
        client.commits(repo, branch, per_page: per_page).each_with_object({}) do |commit, res|
          res[commit.sha] = { message: commit.commit.message,
                              author: commit.commit.author.name,
                              date: commit.commit.committer.date.in_time_zone(App.config.timezone) }
        end
      end

      def puts(commits)
        tp commits.values.reject { |h| h[:message].start_with? 'Merge' }
                  .sort_by { |h| h[:date] }.reverse[0..5],
           { message: { width: 60 } }, :author, :date
      end

      private

      def client
        @client ||= Octokit::Client.new(access_token: App.config.token)
      end
    end
  end
end
