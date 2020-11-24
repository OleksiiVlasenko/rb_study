require 'yaml'

class Setting

  CONFIG_FILE = 'settings.yml'

  class << self

    def get(key)
      load_settings[key.to_s]['value']
    end

    def update(params, role)
      settings = load_settings
      params.each do |key, value|
        key = key.to_s
        settings[key]['value'] = value.to_s if has_access?(role, key)
      end
      save_settings(settings)
    end

    def has_access?(role, key)
      return unless setting = load_settings[key]
      role >= setting['role']
    end

    def load_settings
      @config ||= YAML.load(File.read(file_path))
    end

    private

    def save_settings(settings)
      File.write(file_path, settings.to_yaml)
    end

    def file_path
      "config/#{CONFIG_FILE}"
    end

  end

end