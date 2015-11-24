module IconCreater
    class Create

       def initialize(ahash)
         @ahash = ahash
       end



       def createicon(input ,output)

         p "输入图片路径：#{input}" if File::exist?(input)
         p "输出图片路径：#{output}" if File::ftype(output).eql?'directory'
         p "默认输出图片路径：#{`pwd`.chomp!}"  if output == nil
         @ahash.each do |key,value|

           if File::exist?(input)

                if output == nil

                  output = `pwd`.chomp!

                  `cd /`
                  `/usr/local/bin/convert -resize #{value}x#{value}  #{input}  #{output}/#{key}`

                else
                  if File::ftype(output).eql?'directory'

                    `/usr/local/bin/convert -resize #{value}x#{value}  #{input}  #{output}/#{key}`
                  else
                    p '输出路径无效'
                  end

                end





           else
             p '输入路径无图片'
           end

         end



       end

    end

end