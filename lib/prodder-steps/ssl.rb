Before do
  @aruba_timeout_seconds = 5
end

When(/^we test using the "(.*?)" protocol$/) do |protocol|
  run("sslyze.py --#{protocol} #{ENV['HOST']}")
  assert_exit_status(0)
end

When(/^we check the certificate$/) do
  run("sslyze.py --certinfo=basic #{ENV['HOST']}")
  assert_exit_status(0)
end

When(/^we test certificate renegotiation$/) do
  run("sslyze.py --reneg #{ENV['HOST']}")
  assert_exit_status(0)
end
