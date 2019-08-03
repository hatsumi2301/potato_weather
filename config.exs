config :potato_weather, ELASTICSEARCH_ENV: "staging"

config :potato_weather, :elasticsearch_settings_staging,
  username: "username",
  password: "password",
  json_library: Jason,
  url: "https://server_address",
  api: Elasticsearch.API.HTTP,
  indexes: %{
    restaurants_staging: %{
      settings: "/priv/elasticsearch/restaurant.json",
      store: MyApp.ElasticsearchStore,
      sources: [MyApp.RestaurantIntegration],
      bulk_page_size: 10,
      bulk_wait_interval: 5000
    }
  },
  default_options: [
    timeout: 10_000,
    recv_timeout: 5_000,
    hackney: [pool: :elasticsearh_pool]
  ]

config :potato_weather, :elasticsearch_settings_prod,
  username: "username",
  password: "password",
  json_library: Jason,
  url: "https://server_address",
  api: Elasticsearch.API.HTTP,
  indexes: %{
    restaurants_prod: %{
      settings: "/priv/elasticsearch/restaurant.json",
      store: MyApp.ElasticsearchStore,
      sources: [MyApp.RestaurantIntegration],
      bulk_page_size: 100,
      bulk_wait_interval: 3000
    }
  },
  default_options: [
    timeout: 10_000,
    recv_timeout: 5_000,
    hackney: [pool: :elasticsearh_pool]
  ]
