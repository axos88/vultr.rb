module Vultr
  class RegionsResource < Resource
    def list(**params)
      response = get_request("regions", params: params)
      Collection.from_response(response, key: "regions", type: Region)
    end

    def list_availability(region_id:)
      Object.new get_request("regions/#{region_id}/availability").body
    end
  end
end
