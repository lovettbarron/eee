-- Murder most foul
-- Crow controlling Plaits in stereo and VCA, into stero out
-- Idea: harmonies and stereo shapes
--
-- output 1 = 1v/oct
-- output 2 = gate
-- output 3 = env1
-- output 4 = env2
--
-- K2 randomize Env1
-- K3 randomize Env1
-- E2 Env1 variablilty
-- E3 Env2 variability

local scope = {0,0}
local rate = 1

function init()
  -- Crow setup
  crow.output[1].receive = function(v) out(1,v) end
  crow.output[2].receive = function(v) out(2,v) end
  crow.output[3].receive = function(v) out(3,v) end
  crow.output[3].receive = function(v) out(4,v) end
  
  -- Init waveform
  wave = {}
  for i = 1,2 do
    wave[i] = {}
    wave[i].full = {}
    for j=1,5 do
      wave[i][j] = {}
      wave[i][j].volt = 0
      wave[i][j].slew = 0
      wave[i][j].shape = 0
      wave[i][j].to = nil
    end
  end
