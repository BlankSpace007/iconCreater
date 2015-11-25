
module IconCreater
  class Parser
    require 'optparse'
    require 'iconCreater/input'

    def parse

      inp = Input.new;

      OptionParser.new do |opts|
        opts.banner = "Usage: iconCreater [intrerval]  [arguments...]"

        opts.on("-i", "--icon ICON", "Set The Path of Icon") do |i|
          inp.iconPath = i;
        end
        opts.on("-o", "--output OUTPUT", "Set The Path of Output") do |o|
          inp.outputPath = o;
        end
        opts.on("-v", "--version", "Print the version") do
          p IconCreater::VERSION
          exit 0
        end
        opts.on("-h", "--help", "Print the help") do
          puts opts
          exit 0
        end
      end.parse!

      inp
    end
  end
end
