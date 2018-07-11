/// @arg a
/// @arg b
/// @arg limit

//Args
var _a = argument[0];
var _b = argument[1];
var _limit = argument[2];

//Difference 1
var diff1 = abs(_a - _b);

//Difference 2
if (_a>_b) _a -= _limit;
else if (_a<_b) _a += _limit;

var diff2 = abs(_a - _b);

return min(diff1, diff2);