using SlackSDK
using Test
using Random

@testset "construct webclient" begin
    @test_throws ErrorException WebClient()
    t = "xxob-12345-abcde"
    client = WebClient(t)
    @test client !== nothing
    b = IOBuffer()
    show(b, client)
    @test String(take!(b)) == "Slack Web API client, with base url 'https://www.slack.com/api/' and token 'xxob-123....de'"
    ENV["SLACK_API_TOKEN"] = t
    client = WebClient(t)
    @test client !== nothing
    b = IOBuffer()
    show(b, client)
    @test String(take!(b)) == "Slack Web API client, with base url 'https://www.slack.com/api/' and token 'xxob-123....de'"
end

@testset "method availability" begin
    client = WebClient("xxob-12345-abcde")  # dummy token
    @test getproperty(client, :chat_delete) !== nothing
    @test getproperty(client, :chat_postMessage) !== nothing
    @test getproperty(client, :admin_apps_approved_list) !== nothing
    @test_throws UndefVarError getproperty(client, :chat_doesnotexist)
    @test_throws UndefVarError getproperty(client, :doesnotexist_delete)
end

## TODO : Actually exercise the api. Needs workspace and token
