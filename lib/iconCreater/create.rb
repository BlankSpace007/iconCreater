module IconCreater

    class Create

       def initialize(ahash)
         @ahash = ahash
       end

       def createicon(input ,output)

         @ahash.each do |key,value|

           if File::exist?(input)
             if output == nil
               oput = `pwd`.chomp!
             elsif File::ftype(output).eql?'directory'
               oput = output
             else
               p '输出路径并不是文件夹'
               exit 0
             end
             `/usr/local/bin/convert  -resize  #{value}x#{value}  #{input}   #{oput}/#{key}`
           else
             p '输入路径无图片'
             exit 0
           end

         end
         p "输入图片路径：#{input}" if File::exist?(input)
         p "默认输出图片路径：#{`pwd`.chomp!}"  if output == nil
         p "输出图片路径：#{output}"  unless output == nil

       end

    end

end