%%
%% Copyright (c) 2021 dushin.net
%% All rights reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
-module(ssd1306_inversion_example).

-export([start/0]).

start() ->
    SSD1306Config = #{
        sda_pin => 21,
        scl_pin => 22
    },
    {ok, SSD1306} = ssd1306:start(SSD1306Config),
    ssd1306:clear(SSD1306),
    ssd1306:set_contrast(SSD1306, 255),
    loop(SSD1306).


loop(SSD1306) ->
    Text = io_lib:format(
        "  !!AtomVM!!~n~nFree heap:~n~p bytes~n",
        [erlang:system_info(esp32_free_heap_size) ]
    ),
    io:format("Displaying text: ~s~n", [Text]),
    ssd1306:clear(SSD1306),
    ssd1306:set_text(SSD1306, Text),
    ssd1306:set_inversion(SSD1306, true),
    timer:sleep(1000),
    ssd1306:set_inversion(SSD1306, false),
    timer:sleep(1000),
    loop(SSD1306).
