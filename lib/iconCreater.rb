require "iconCreater/version"
require 'iconCreater/input'
require 'iconCreater/create'
require 'iconCreater/parser'

module IconCreater

  class Run

    def run

      inp =  Parser.new.parse


      creat = Create.new({"Icon57.png" => 57,
                          "Icon57@2x.png"=> 114,
                          "Icon-60.png"=> 60,
                          "Icon-60@2x.png"=> 120,
                          "Icon-60@3x.png"=> 180,
                          "Icon-72.png"=> 72,
                          "Icon-72@2x.png"=> 144,
                          "Icon-76.png"=> 76,
                          "Icon-76@2x.png"=> 152,
                          "Icon-40-iOS7.png"=> 40,
                          "Icon-40-iOS7@2x.png"=> 80,
                          "Icon-40-iOS7@3x.png"=> 120,
                          "Icon-50.png"=> 50,
                          "Icon-50@2x.png"=> 100,
                          "Icon-29.png"=> 29,
                          "Icon-29@2x.png"=> 58,
                          "Icon-29@3x.png"=> 87});
      creat.createicon(inp.iconPath,inp.outputPath)
    end

  end




end
