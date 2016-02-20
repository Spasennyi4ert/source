{application,source,
             [{registered,[]},
              {vsn,"1.0.0"},
              {modules,[source,source_app,source_server,source_server_sup,
                        source_supersup]},
              {applications,[stdlib,kernel]},
              {mod,{source_app,[]}},
	      {registered, [source]},
              {env,[
		{feed_a,[{source, "10.50.129.90"},{port, "34003"},{group, "239.192.70.3"}]},
		{feed_b,[{source, "10.50.129.90"},{port, "35003"},{group, "239.192.175.3"}]},
		{feed_c,[{source, "10.50.129.90"},{port, "34004"},{group, "239.192.70.4"}]},
		{feed_d,[{source, "10.50.129.90"},{port, "35004"},{group, "239.192.175.4"}]}
	      ]}
]}.
