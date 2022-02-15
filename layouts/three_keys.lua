require "keybow"

-- Standard number pad mapping --

-- Key mappings --

function handle_minikey_00(pressed)
    keybow.set_key("0", pressed)
end

function handle_minikey_01(pressed)
    keybow.set_key("A", pressed)
end

function handle_minikey_02(pressed)
    keybow.set_key(keybow.ENTER, pressed)
end
