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

    def configure(conf)
      super

      if @metric_key
        @metric_key = @metric_key.split(',')
      end
    end

    def emit(tag, es, chain)
      chain.next
      es.each do |time,record|
        @metric_key.each do |metric_key|
          record.select do |k,v|
            if metric_key.include?(k)
              metric = record[k].to_f
              post_metrics(k, metric)
            end
          end
        end
      end
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
      #puts "debug_out: #{@api_key} #{@protocol} - #{metric_key} - #{metric}\n"
    end

  end
end
