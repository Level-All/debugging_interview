## Steps to get running

```
$> mix ecto.drop && MIX_ENV=test mix ecto.drop
$> mix ecto.create && mix ecto.migrate
$> mix run priv/repo/seeds.exs
```
