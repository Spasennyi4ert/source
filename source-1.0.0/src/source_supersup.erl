-module(source_supersup).
-behaviour(supervisor).

-export([start_link/0, start_server/2, stop_server/1]).
-export([init/1]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
    {ok, {{one_for_one, 4, 500}, []}}.

start_server(Feed, Item) ->
    ChildSpec = {Feed, {source_server_sup, start_link, [Feed, Item]}, permanent, 5000, supervisor, [source_server_sup]},
    supervisor:start_child(?MODULE, ChildSpec).

stop_server(Feed) ->
    supervisor:terminate_child(?MODULE, Feed),
    supervisor:delete_child(?MODULE, Feed).
