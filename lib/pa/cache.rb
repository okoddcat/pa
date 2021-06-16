require 'fileutils'

module Pa
  class Cache
    attr_reader :path

    def initialize(path)
      @path = File.join(path, 'cache')
    end

    def fetch(key, time, &block)
      write(key, (yield block)) if !exists?(key) || expired?(key, time)
      read key
    end

    private

    def expired?(key, time)
      Time.now.in_time_zone(App.config.timezone) - File.mtime(file_path(key)) > time
    end

    def exists?(key)
      File.exist? file_path(key)
    end

    def read(key)
      IO.read file_path(key), mode: 'r'
    end

    def write(key, content)
      initialize_path! file_path(key)
      IO.write file_path(key), content
    end

    def file_path(key)
      File.expand_path File.join(path, key)
    end

    def initialize_path!(path)
      return if File.exist?(path)

      FileUtils.mkdir_p File.dirname path
      FileUtils.touch path
    end
  end
end
