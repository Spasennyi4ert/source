-module(source_app).
-behaviour(application).

-export([start/2, stop/1]).

start(normal, _startArgs) ->
    {ok, Pid} = source_supersup:start_link(),
%    {ok, Conf} = file:consult("source.config"),
%    [application:set_env(ars, Conn, Data) || {Conn, Data} <- Conf],
%	ftrca:start(),
    {ok, Pid}.

stop(_State) ->
%	ftrca:stop(),
    ok.
