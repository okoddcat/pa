# 爬 Pa

Ranging activities of Github repos.



## Installation

### Install as an executable file

```shell
gem install geiyepa
```



### Setup

1. Tell `geiyepa` the repos which you want to scrape

    ```shell
    mkdir -p ~/.pa/cache
    echo "mtanneb/pa" >> ~/.pa/repos
    ```

2. Export your Github token to console

    ```shell
    export TOKEN="YOUR GITHUB TOKEN"
    ```

## Usage

```shell
$ pa

"mtanneb/pa"
MESSAGE                           | AUTHOR     | DATE
----------------------------------|------------|--------------------------
feat: create a gem package        | Martin Tan | 2021-06-16 14:20:53 +0800
feat: add cache and github client | Martin Tan | 2021-06-16 12:19:22 +0800
Init                              | Martin Tan | 2021-06-16 12:00:41 +0800
```



The defualt timezone is UTC+8, you can customize it by the following command.

```shell
export TIMEZONE="Asia/Shanghai"
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mtanneb/pa. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/mtanneb/pa/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Pa project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mtanneb/pa/blob/master/CODE_OF_CONDUCT.md).
