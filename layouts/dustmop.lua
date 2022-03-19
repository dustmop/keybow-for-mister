require "keybow"

-- Keybow MINI --

function setup()
    keybow.use_mini()
    keybow.auto_lights(false)
    keybow.clear_lights()

    keybow.set_pixel(0, 0xff, 0x00, 0x00)
    keybow.set_pixel(1, 0x00, 0xff, 0x00)
    keybow.set_pixel(2, 0x00, 0x00, 0xff)
end

-- Key mappings --

function handle_minikey_00(pressed)
    keybow.set_key('A', pressed)
end

function handle_minikey_01(pressed)
    keybow.set_key('B', pressed)
end

function handle_minikey_02(pressed)
    keybow.set_key('C', pressed)
end
