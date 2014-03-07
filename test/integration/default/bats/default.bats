#!/usr/bin/env bats

@test "ensure apache2 is installed" {
  run /usr/bin/apache2
  [ "$status" -eq 0 ]
}

@test "apache is available on port 80" {
  run nc -z 0.0.0.0 80
  [ $status -eq 0 ]
}

@test "apache is available on port 443" {
  run nc -z 0.0.0.0 443
  [ $status -eq 0 ]
}
