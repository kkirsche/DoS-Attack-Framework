require 'DDOS_Framework/flood/syn/tsunami'

# Module to hold DDOS Stress Testing
module DDOSFramework
  # Module to contain flood / volumetric attack vectors
  module Flood

    private

    # Source IP Address Methods
    def self.random_source_ip?
      response = ask('Would you like to use random spoofed source IP addresses? ' \
          '(yes/no):  ', %w(yes no)) do |resp|
        resp.readline = true
      end
      return true if response == 'yes'
      false
    end

    def self.spoof_source_ip?
    response = ask('Would you like to use a single spoofed source IP address? ' \
          '(yes/no):  ', %w(yes no)) do |resp|
        resp.readline = true
      end
      return true if response == 'yes'
      false
    end

    def self.spoofed_source_ip
    response = ask('What source IP address would you like to use? ') do |q|
      q.validate = /(([1-2]?\d{1,2})\.){3}([1-2]?\d{1,2})/
    end
    end

    # Source IP Address Methods
    def self.verbose?
      response = ask('Would you like to use verbose mode? (yes/no):  ', %w(yes no)) do |resp|
        resp.readline = true
      end
      return true if response == 'yes'
      false
    end

    def self.predefined_speed?
      response = ask('Would you like to use a predefined speed or manual? (pre/man):  ', %w(pre man)) do |resp|
        resp.readline = true
      end
      return true if response == 'pre'
      false
    end

    def self.predefined_speed
      ask('Which speed would you like to use? (fast (10 pps), faster (100 pps)'\
          ', flood (as fast as possible), other):  ', %w(fast faster flood other)) do |resp|
        resp.readline = true
      end
    end

    def self.microsecond_speed
      ask('Wait how many microsends between sending packets? (Integer):  ', Integer)
    end

    def self.packet_count
      ask('How many packets would you like to send? (Integer):  ', Integer)
    end
  end
end
