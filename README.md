# Mapp

`map` for nested Array

## Installation

```
$ gem install mapp
```

## Usage

```ruby
require 'mapp'

[[1, 2], [3, 4]].mapp(&:to_s)
#=> [['1', '2'], ['3', '4']]

[
  [
    [7, [0, 1, 2], 9], [0, 1, 2]
  ],
  [
    [1, 2, 3], [4, 5, 6]
  ]
].mapp(&:to_s)
#=>
# [
#   [
#     ["7", ["0", "1", "2"], "9"], ["0", "1", "2"]
#   ],
#   [
#     ["1", "2", "3"], ["4", "5", "6"]
#   ]
# ]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mapp/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
