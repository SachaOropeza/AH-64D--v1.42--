params["_heli"];
if (fza_ah64_pfzcache select 1 == "all" || fza_ah64_pfzcache select 1 == (name player)) then {
    _pfzIndex = _heli getVariable "fza_ah64_pfz_count";
    if(1 <= _pfzIndex && _pfzIndex <= 8) then {
        _pfzs = _heli getVariable "fza_ah64_pfzs";
        _pfzs set [_pfzIndex - 1, (fza_ah64_pfzcache select 2)];
        _heli setVariable ["fza_ah64_pfzs", _pfzs, true];
        {
            if (!(_x in fza_ah64_targetlist)) then {
                fza_ah64_targetlist = fza_ah64_targetlist + (fza_ah64_pfzcache select 2);
            };
        }
        foreach(fza_ah64_pfzcache select 2);
    };
    _heli vehiclechat format["%1 Targets downloaded from %2.", count(fza_ah64_pfzcache select 2), fza_ah64_pfzcache select 0];
};