cp_config_file = File.join(Rails.root, 'config', 'compropago.yml')

raise "#{cp_config_file} no existe" unless File.exist?(cp_config_file)

cp_config = YAML.load_file(cp_config_file)[Rails.env]

$cp_client = Client.new(cp_config["public"], cp_config["private"], Rails.env.production?)