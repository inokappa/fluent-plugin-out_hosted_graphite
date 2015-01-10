require 'helper'

class OutHostedGraphite < Test::Unit::TestCase
  def setup
    Fluent::Test.setup
  end

  CONFIG = %[
    api_key xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
    metric_key foo.bar
    protocol http
  ]
  # CONFIG = %[
  #   path #{TMP_DIR}/out_file_test
  #   compress gz
  #   utc
  # ]

  def create_driver(conf = CONFIG, tag='test')
    Fluent::Test::OutputTestDriver.new(Fluent::OutHostedGraphite, tag).configure(conf)
  end

  def test_configure
    d = create_driver(CONFIG)
    assert_equal d.instance.api_key, 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
    assert_equal d.instance.metric_key, 'foo.bar'
    assert_equal d.instance.protocol, 'http'
  end

  def test_post_metrics
    metric_key = 'foo.bar'
    record = {
      'foo.bar' => '0.01'
    }
    d = create_driver
    p = d.instance.post_metrics(metric_key, record)
    assert_equal p, { 'foo.bar' => 0.01 }
  end

end
