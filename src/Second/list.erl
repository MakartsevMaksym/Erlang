-module(list).
-author("makst").
-export([create/1, reverse_create/1]).

create(N) -> create(N, []).
create(0, Res) -> Res;
create(N, Res) -> create(N-1, [N|Res]).

reverse_create(N) -> reverse_create(N, []).
reverse_create(0, Res) -> Res;
reverse_create(N, Res) -> reverse_create(N-1, Res ++ [N]).