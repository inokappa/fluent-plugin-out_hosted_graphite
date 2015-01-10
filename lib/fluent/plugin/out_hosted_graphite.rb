require "hosted_graphite"

module Fluent
  class OutHostedGraphite < Fluent::Output
    Fluent::Plugin.register_output('hosted_graphite', self)

    config_param :api_key, :string
    config_param :metric_key, :string, default: nil
    config_param :protocol, :string, default: "http"

    def configure(conf)
      super
      #
    end

    def start
      super
      # ...
    end

    def shutdown
      super
      # ...
    end

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
      HostedGraphite.send_metric(metric_key, metric)
      #result = HostedGraphite.send_metric(metric_key, metric)
      #puts "debug_out: #{@api_key} #{@protocol} #{result} - #{metric_key} - #{metric}"
    end

  end
end
