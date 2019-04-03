class HogwartsService
  def conn
    url ='http://hogwarts-as-a-service.herokuapp.com/api/v1/'
    Faraday.new(url: url) do |faraday|
      faraday.headers['x_api_key'] = ENV['HOGWARTS_KEY']
      faraday.adapter  Faraday.default_adapter
    end
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_students(house_id)
    url = "house/#{house_id}"
    get_json(url)
  end

  def get_houses
    get_json("house")
  end
end
