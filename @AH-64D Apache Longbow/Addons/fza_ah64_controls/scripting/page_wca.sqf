if(!(isNil "fza_ah64_nowca")) exitwith {};
_heli = _this select 0;
_bingo = 0;
_trdam = 0;
_mrdam = 0;
_tadsdam = 0;
_gunjam = 0;
_gunfail = 0;
_rtrbrake = 0;
_pnvsfail = 0;
_canopy = 0;
_transdam = 0;
_fcrfail = 0;
_e1fire = 0;
_e2fire = 0;
_apufire = 0;
_mags = magazines _heli;
_damlist = [];
_start = 551;
_end = 576;
_counter = 0;
_selection = 0;
_irjoheat = 0;
_rfjoheat = 0;
_irjfail = 0;
_rfjfail = 0;
_hovhold = 0;
_baton = 0;
_apuon = 0;
_bingoa = 0;

while {(time > -1)} do
{
waituntil{(vehicle player) iskindof "fza_ah64base"};
_heli = vehicle player;
waitUntil {((driver (vehicle player) == player || gunner (vehicle player) == player))};
if(fza_ah64_pl_mpd == "wca" || fza_ah64_pr_mpd == "wca") then
{
	_mags = _heli magazinesturret [-1];
	if(_rtrbrake == 0 && (_heli animationphase "plt_rtrbrake" == 1)) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\RTRBRKON.paa"];
		_rtrbrake = 1;
	};
	if(isengineon _heli || (_heli animationphase "plt_rtrbrake" == 0)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\RTRBRKON.paa"];
		_rtrbrake = 0;
	};
	if(fza_ah64_apuon == 1 && _apuon == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\APUON.paa"];
		_apuon = 1;
	};
	if(fza_ah64_apuon == 0) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\APUON.paa"];
		_apuon = 0;
	};
	if(isAutoHoverOn _heli && _hovhold == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\HOVERHOLD.paa"];
		_hovhold = 1;
	};
	if(!(isAutoHoverOn _heli)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\HOVERHOLD.paa"];
		_hovhold = 0;
	};
	if(_canopy == 0 && (_heli animationphase "gdoor" > 0 || _heli animationphase "pdoor" > 0)) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\CANOPY.paa"];
		_canopy = 1;
	};
	if(_heli animationphase "gdoor" == 0 && _heli animationphase "pdoor" == 0) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\CANOPY.paa"];
		_canopy = 0;
	};	
	if(fza_ah64_fuelsave <= 0.05 && _bingo == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\FWDFUELLO.paa"];
		_bingo = 1;
	};
	if(fza_ah64_fuelsave > 0.05 && _bingo == 1) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\FWDFUELLO.paa"];
		_bingo = 0;
	};
	if(fza_ah64_fuelsave <= 0.1 && _bingoa == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\AFTFUEL.paa"];
		_bingoa = 1;
	};
	if(fza_ah64_fuelsave > 0.1 && _bingoa == 1) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\AFTFUEL.paa"];
		_bingoa = 0;
	};
	if("fza_ah64_tailrotor_dam" in _mags && _trdam == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\TRTRDEGR.paa"];
		_trdam = 1;
	};
	if("fza_ah64_tailrotor_fail" in _mags && _trdam < 2) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\TRTRHYD.paa"];
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\TRTRFAIL.paa"];
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\TRTRDEGR.paa"];
		_trdam = 2;
	};
	if(_trdam > 0 && !("fza_ah64_tailrotor_fail" in _mags || "fza_ah64_tailrotor_dam" in _mags)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\TRTRHYD.paa"];
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\TRTRFAIL.paa"];
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\TRTRDEGR.paa"];
		_trdam = 0;
	};
	if("fza_ah64_rotor_dam" in _mags && _mrdam == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\HRTRRPM.paa"];
		_mrdam = 1;
	};
	if("fza_ah64_rotor_fail" in _mags && _mrdam < 2) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\LRTRRPM.paa"];
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\HRTRRPM.paa"];
		_mrdam = 2;
	};
	if(_mrdam > 0 && !("fza_ah64_rotor_dam" in _mags || "fza_ah64_rotor_fail" in _mags)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\HRTRRPM.paa"];
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\LRTRRPM.paa"];
		_mrdam = 0;
	};
	if("fza_ah64_tads_dam" in _mags && _tadsdam == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\TADSDEGR.paa"];
		_tadsdam = 1;
	};
	if("fza_ah64_tads_fail" in _mags && _tadsdam < 2) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\TADSDEGR.paa"];
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\TADSFAIL.paa"];
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\LASEFAIL.paa"];
		_tadsdam = 2;
	};
	if(_tadsdam > 0 && !("fza_ah64_tads_fail" in _mags || "fza_ah64_tads_dam" in _mags)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\TADSDEGR.paa"];
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\TADSFAIL.paa"];
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\LASEFAIL.paa"];
		_tadsdam = 0;
	};
	if(("fza_ah64_gun_jam" in _mags || "fza_ah64_gun_jam" in magazines _heli) && _gunjam == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\GUNJAM.paa"];
		_gunjam = 1;
	};
	if(_gunjam > 0 && !("fza_ah64_gun_jam" in _mags || "fza_ah64_gun_jam" in magazines _heli)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\GUNJAM.paa"];
		_gunjam = 0;
	};
	if("fza_ah64_gun_fail" in _mags && _gunfail == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\GUNACTFAIL.paa"];
		_gunfail = 1;
	};
	if(_gunfail > 0 && !("fza_ah64_gun_fail" in _mags)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\GUNACTFAIL.paa"];
		_gunfail = 0;
	};
	if("fza_ah64_pnvs_fail" in _mags && _pnvsfail == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\PNVSFAIL.paa"];
		_pnvsfail = 1;
	};
	if(_pnvsfail > 0 && !("fza_ah64_pnvs_fail" in _mags)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\PNVSFAIL.paa"];
		_pnvsfail = 0;
	};
	if("fza_ah64_trans_dam" in _mags && _transdam == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\XMSNDGRD.paa"];
		_transdam = 1;
	};
	if("fza_ah64_trans_fail" in _mags && _transdam < 2) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\XMSNFAIL.paa"];
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\XMSNDGRD.paa"];
		_transdam = 2;
	};
	if(_transdam > 0 && !("fza_ah64_trans_dam" in _mags || "fza_ah64_trans_fail" in _mags)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\XMSNDGRD.paa"];
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\XMSNFAIL.paa"];
		_transdam = 0;
	};
	if("fza_ah64_fcr_fail" in _mags && _fcrfail == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\FCRFAIL.paa"];
		_fcrfail = 1;
	};
	if(_fcrfail > 0 && !("fza_ah64_fcr_fail" in _mags)) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\FCRFAIL.paa"];
		_fcrfail = 0;
	};
	if("fza_ah64_e1_fire" in _mags && _e1fire == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\E1Fire.paa"];
		_e1fire = 1;
	};
	if(!("fza_ah64_e1_fire" in _mags) && _e1fire == 1) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\E1Fire.paa"];
		_e1fire = 0;
	};
	if("fza_ah64_e2_fire" in _mags && _e2fire == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\E2Fire.paa"];
		_e2fire = 1;
	};
	if(!("fza_ah64_e2_fire" in _mags) && _e2fire == 1) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\E2Fire.paa"];
		_e2fire = 0;
	};
	if("fza_ah64_apu_fire" in _mags && _apufire == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\APUF.paa"];
		_apufire = 1;
	};
	if(!("fza_ah64_apu_fire" in _mags) && _apufire == 1) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\APUF.paa"];
		_apufire = 0;
	};
//jammer oheats
	if(fza_ah64_irjammer > 55 && _irjoheat == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\irjamoheat.paa"];
		_irjoheat = 1;
	};
	if(fza_ah64_irjammer < 5 && _irjoheat == 1) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\irjamoheat.paa"];
		_irjoheat = 0;
	};
	if(fza_ah64_rfjammer > 55 && _rfjoheat == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\rfjamoheat.paa"];
		_rfjoheat = 1;
	};
	if(fza_ah64_rfjammer < 5 && _rfjoheat == 1) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\rfjamoheat.paa"];
		_rfjoheat = 0;
	};
//jammer fails
	if("fza_ah64_irjamfail" in _mags && _irjfail == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\IRJAMFAIL.paa"];
		_irjfail = 1;
	};
	if(!("fza_ah64_irjamfail" in _mags) && _irjfail == 1) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\IRJAMFAIL.paa"];
		_irjfail = 0;
	};
	if("fza_ah64_rfjamfail" in _mags && _rfjfail == 0) then
	{
		_damlist = _damlist + ["\fza_ah64_us\tex\MPD\RJAMFAIL.paa"];
		_rfjfail = 1;
	};
	if(!("fza_ah64_rfjamfail" in _mags) && _rfjfail == 1) then
	{
		_damlist = _damlist - ["\fza_ah64_us\tex\MPD\RJAMFAIL.paa"];
		_rfjfail = 0;
	};
	if(fza_ah64_pr_mpd == "wca") then
	{
		_start = 551;
		_end = 576;
		_heli setobjecttexture [303,"\fza_ah64_us\tex\MPD\WCA.paa"];
		_counter = count _damlist - 1;
		_selection = _start;
		while {(_counter >= 0 && _selection <= _end)} do
		{
			_heli setobjecttexture [_selection,(_damlist select _counter)];
			_selection = _selection + 1;
			_counter = _counter - 1;
		};
		if(count _damlist < 26) then
		{
			_selection = _end;
			while {(_selection >= (count _damlist + _start))} do
			{
				_heli setobjecttexture [_selection,""];
				_selection = _selection - 1;
			};
		};
	} else {
		_heli setobjecttexture [551,""];
		_heli setobjecttexture [552,""];
		_heli setobjecttexture [553,""];
		_heli setobjecttexture [554,""];
		_heli setobjecttexture [555,""];
		_heli setobjecttexture [556,""];
		_heli setobjecttexture [557,""];
		_heli setobjecttexture [558,""];
		_heli setobjecttexture [559,""];
		_heli setobjecttexture [560,""];
		_heli setobjecttexture [561,""];
		_heli setobjecttexture [562,""];
		_heli setobjecttexture [563,""];
		_heli setobjecttexture [564,""];
		_heli setobjecttexture [565,""];
		_heli setobjecttexture [566,""];
		_heli setobjecttexture [567,""];
		_heli setobjecttexture [568,""];
		_heli setobjecttexture [569,""];
		_heli setobjecttexture [570,""];
		_heli setobjecttexture [571,""];
		_heli setobjecttexture [572,""];
		_heli setobjecttexture [573,""];
		_heli setobjecttexture [574,""];
		_heli setobjecttexture [575,""];
		_heli setobjecttexture [576,""];
	};
	if(fza_ah64_pl_mpd == "wca") then
	{
		_start = 578;
		_end = 603;
		_heli setobjecttexture [302,"\fza_ah64_us\tex\MPD\WCA.paa"];
		_counter = count _damlist - 1;
		_selection = _start;
		while {(_counter >= 0 && _selection <= _end)} do
		{
			_heli setobjecttexture [_selection,(_damlist select _counter)];
			_selection = _selection + 1;
			_counter = _counter - 1;
		};
		if(count _damlist < 26) then
		{
			_selection = _end;
			while {(_selection >= (count _damlist + _start))} do
			{
				_heli setobjecttexture [_selection,""];
				_selection = _selection - 1;
			};
		};
	} else {
		_heli setobjecttexture [577,""];
		_heli setobjecttexture [578,""];
		_heli setobjecttexture [579,""];
		_heli setobjecttexture [580,""];
		_heli setobjecttexture [581,""];
		_heli setobjecttexture [582,""];
		_heli setobjecttexture [583,""];
		_heli setobjecttexture [584,""];
		_heli setobjecttexture [585,""];
		_heli setobjecttexture [586,""];
		_heli setobjecttexture [587,""];
		_heli setobjecttexture [588,""];
		_heli setobjecttexture [589,""];
		_heli setobjecttexture [590,""];
		_heli setobjecttexture [591,""];
		_heli setobjecttexture [592,""];
		_heli setobjecttexture [593,""];
		_heli setobjecttexture [594,""];
		_heli setobjecttexture [595,""];
		_heli setobjecttexture [596,""];
		_heli setobjecttexture [597,""];
		_heli setobjecttexture [598,""];
		_heli setobjecttexture [599,""];
		_heli setobjecttexture [600,""];
		_heli setobjecttexture [601,""];
		_heli setobjecttexture [602,""];
		_heli setobjecttexture [603,""];
	};
} else {
		_heli setobjecttexture [550,""];
		_heli setobjecttexture [551,""];
		_heli setobjecttexture [552,""];
		_heli setobjecttexture [553,""];
		_heli setobjecttexture [554,""];
		_heli setobjecttexture [555,""];
		_heli setobjecttexture [556,""];
		_heli setobjecttexture [557,""];
		_heli setobjecttexture [558,""];
		_heli setobjecttexture [559,""];
		_heli setobjecttexture [560,""];
		_heli setobjecttexture [561,""];
		_heli setobjecttexture [562,""];
		_heli setobjecttexture [563,""];
		_heli setobjecttexture [564,""];
		_heli setobjecttexture [565,""];
		_heli setobjecttexture [566,""];
		_heli setobjecttexture [567,""];
		_heli setobjecttexture [568,""];
		_heli setobjecttexture [569,""];
		_heli setobjecttexture [570,""];
		_heli setobjecttexture [571,""];
		_heli setobjecttexture [572,""];
		_heli setobjecttexture [573,""];
		_heli setobjecttexture [574,""];
		_heli setobjecttexture [575,""];
		_heli setobjecttexture [576,""];
		_heli setobjecttexture [577,""];
		_heli setobjecttexture [578,""];
		_heli setobjecttexture [579,""];
		_heli setobjecttexture [580,""];
		_heli setobjecttexture [581,""];
		_heli setobjecttexture [582,""];
		_heli setobjecttexture [583,""];
		_heli setobjecttexture [584,""];
		_heli setobjecttexture [585,""];
		_heli setobjecttexture [586,""];
		_heli setobjecttexture [587,""];
		_heli setobjecttexture [588,""];
		_heli setobjecttexture [589,""];
		_heli setobjecttexture [590,""];
		_heli setobjecttexture [591,""];
		_heli setobjecttexture [592,""];
		_heli setobjecttexture [593,""];
		_heli setobjecttexture [594,""];
		_heli setobjecttexture [595,""];
		_heli setobjecttexture [596,""];
		_heli setobjecttexture [597,""];
		_heli setobjecttexture [598,""];
		_heli setobjecttexture [599,""];
		_heli setobjecttexture [600,""];
		_heli setobjecttexture [601,""];
		_heli setobjecttexture [602,""];
		_heli setobjecttexture [603,""];

};
sleep 0.05;
};