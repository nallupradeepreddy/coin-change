## Steps to run

Command to run change.rb

```
$ ruby change.rb
```

Command to test change_spec.rb

```
$ ruby change_spec.rb
```

Example

```
available_coins = {25 => 'quarter', 10 => 'dime', 5 => 'nickel', 1 => 'penny'}
Change.change_for(17, available_coins)

Output: {"dime"=>1, "nickel"=>1, "penny"=>2}
```

## Steps to install ruby for ubuntu
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
rvm use 2.4
```

