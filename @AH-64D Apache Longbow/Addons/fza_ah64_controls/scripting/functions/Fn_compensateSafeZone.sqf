/* ----------------------------------------------------------------------------
Function: fza_fnc_compensateSafezone

Description:
    Takes a cordinate input, and outputs the coordinates to be used within fza_radddisp_nobounds to get that screen position (used for IHADSS)

Parameters:
    _x: the x position
    _y: the y position

Returns:
    [_x, _y] - the compensated position

Examples:
    (begin example)
    _result = [0, 0] call fza_fnc_compensateSafezone;
    //_result => [-3, -3] - whatever [safeZoneX, safeZoneY] evaluates to
    (end)

Author:
    mattysmith22, ollieollieolllie
---------------------------------------------------------------------------- */
[_this # 0 - safeZoneX, _this # 1 - safeZoneY];