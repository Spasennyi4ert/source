-module(source_server_sup).
-behaviour(supervisor).

-export([start_link/2, init/1]).

start_link(Type, Item) ->
    supervisor:start_link({local, Type}, ?MODULE, [Type, Item]).

init([Type, Item]) ->
    Child = [{Type, {source_server, start_link, [Type, Item]}, permanent, 5000, worker, [source_server]}],
    {ok, {{one_for_one, 1, 3600}, Child}}.
