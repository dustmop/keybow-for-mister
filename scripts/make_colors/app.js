const ra = require('raster');

let colors = ra.mixColors([ 0, 0xff0000,
                           16, 0xff8800,
                           32, 0xffff00,
                           48, 0x88ff00,
                           64, 0x880000]);
console.log(colors);
