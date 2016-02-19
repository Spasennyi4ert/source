-module(source).

-export([start_server/2, stop_server/1]).

start_server(Feed,Item) ->
    source_supersup:start_server(Feed,Item).

stop_server(Feed) ->
    source_supersup:stop_server(Feed).
