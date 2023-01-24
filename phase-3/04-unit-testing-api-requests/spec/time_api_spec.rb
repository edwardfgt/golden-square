require 'time_api'

describe TimeError do
  it "calls an API to provide difference between current and API time" do
    requester = double :requester
    allow(requester).to receive(:get)
    .with(URI("https://worldtimeapi.org/api/ip"))
    .and_return('{"abbreviation":"GMT","client_ip":"82.163.117.26","datetime":"2023-01-24T14:52:36.267920+00:00","day_of_week":2,"day_of_year":24,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1674571956,"utc_datetime":"2023-01-24T14:52:36.267920+00:00","utc_offset":"+00:00","week_number":4}')
    time = Time.new(2023, 1, 24, 14, 49, 50)
    time_error = TimeError.new(requester)
    expect(time_error.error(time)).to eq 166.26792
  end
end
