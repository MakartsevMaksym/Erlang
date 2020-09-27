-module(list).
-author("makst").
-export([create/1, reverse_create/1, filter/2, reverse/1]).

create(N) -> create(N, []).
create(0, Res) -> Res;
create(N, Res) -> create(N-1, [N|Res]).

reverse_create(N) -> reverse(create(N)).

filter([], _) -> [];
filter([H | T], Limit) ->
  if
    H =< Limit -> [H|filter(T, Limit)];
    true -> filter(T, Limit)
  end.

reverse([]) -> [];
reverse(List) ->
  [H | T] = List,
  reverse(T) ++ [H].