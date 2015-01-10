require "hosted_graphite"

module Fluent
  class OutHostedGraphite < Fluent::Output
    # First, register the plugin. NAME is the name of this plugin
    # and identifies the plugin in the configuration file.
    Fluent::Plugin.register_output('hosted_graphite', self)

    config_param :api_key, :string
    config_param :metric_key, :string, default: nil
    config_param :protocol, :string, default: "http"

    # This method is called before starting.
    def configure(conf)
      super
      #
    end

    # This method is called when starting.
    def start
      super
      # ...
    end

    # This method is called when shutting down.
    def shutdown
      super
      # ...
    end

    # This method is called when an event reaches Fluentd.
    # 'es' is a Fluent::EventStream object that includes multiple events.
    # You can use 'es.each {|time,record| ... }' to retrieve events.
    # 'chain' is an object that manages transactions. Call 'chain.next' at
    # appropriate points and rollback if it raises an exception.
    def emit(tag, es, chain)
      chain.next
      es.each {|time,record|
        unless record.include?(@metric_key)
          log.warn "metric_key does not exists."
        else
          metric_key = @metric_key
          metric = record[@metric_key].to_f
          post_metrics(metric_key, metric)
        end
      }
    end


    def post_metrics(metric_key, metric)
      HostedGraphite.api_key = @api_key
      case @protocol
      when "http"
        HostedGraphite.protocol = HostedGraphite::HTTP
      when "tcp"
        HostedGraphite.protocol = HostedGraphite::TCP
      when "udp"
        HostedGraphite.protocol = HostedGraphite::UDP
      end
      result = HostedGraphite.send_metric(metric_key, metric)
      #puts "debug_out: #{@api_key} #{@protocol} #{result} - #{metric_key} - #{metric}"
    end

  end
end
