# IconCreater

A command-line tool for creating all icons  of iOS App.

## Requirements

You need install ImageMagick

## Installation

Then install this gem
```ruby
  gem install iconCreater
```
**注意: 如果你的系统是 Mac OS X 10.11 以后的版本, 由于10.11引入了 `rootless`, 无法直接安装 iconCreater, 有以下两种解决办法:**


1\. 指定 iconCreater 中 bin 文件的 PATH

```sh
$ export PATH=/usr/local/bin:$PATH;gem install -n /usr/local/bin iconCreater
```

2\. 重写 Ruby Gem 的 bindir

```sh
$ echo 'gem: --bindir /usr/local/bin' >> ~/.gemrc
$ gem install iconCreater
```

## Usage
不输入返回路径，则在当前路径输出所有尺寸的图片
```sh
iconCreater -i xxx.jpg
```
当输入返回路径，则在输出路径位置输出所有尺寸的图片
```sh
iconCreater -i xxx.jpg -o /xxx/output
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/BlankSpace007/iconCreater. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

