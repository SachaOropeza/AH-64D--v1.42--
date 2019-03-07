# AH-64D Project
Originally based on Franze & Nodunit AH-64D - Project by Sacha 'Voodoo' Oropeza & Community.

# CHANGELOG NOTES:
*07/03/2019*
- Removed NAV fixes on the A3 map, now TSD only.
- Fixed waypoint script error on the editor.
- Tweaked 30mm rounds max speed.

*02/03/2019*
- Fixed aircraft weight after rearming - by Zeitsev.
- Removed fza_ah64d_b2e for further FCR fixes, performances and code improvements.
- Minor AFM tweaking - by Zeitsev.

*21/02/2019*
- AFM update - by Keplager and BradMick.
- Couple sounds tweaking.
- Possible M230 performance fix.

*13/01/2019*
- Minor sound tweaks.
- Minor change to WPN page on LST & LRFD channels.

*08/12/2018*
- Reworked GUN FXD symbology.
- Added Master Arm/Safe.
- Retextured 230 GAL fuel tanks.
- Added 300 rounds magazine by default.
- Added refuel/repair and rearm delay.

*07/12/2018*
- Resized ASE threat circles.
- Removed BARO ALT in Cruise mode from CPG's TADS view.
- Fixed APU sounds on dedicated server.
- Reworked HDU script, it's now temporary on by default however the procedure still needs to be done.

*04/12/2018*
- Reworked M261 sounds.
- Fixed UI "white" menu bug.
- Tweaked M230 sound.
- Tweaked engines and rotor sounds at distance.

*24/11/2018*
- Fixed flares issue making vanilla aircrafts not being able to drop flares - by Jamo.
- Fixed Rearm & Repair feature.

*04/10/2018*
- Added dynamic engines throttle levers - by Keplager.
- Added proper onboard radios (VHF ARC-186, UHF ARC-164, FM1 ARC-201D, FM2 ARC-201D).  
- Fixed APU & BATT MP synchronization on dedicated servers.
- Tweaked AGM-114 area of effect.
- Replaced IHADSS 180°, 360°, 270° and 90° headings by S, N, W and E.

*28/09/2018*
- Tweaked M230 damage and effects.

*17/09/2018*
- Update on the Advanced Flight Model (AFM), rotor intertia fixed - by Keplager.

*16/09/2018*
- Removed fza_ah64d_chaff30 upon rearming.
- Added hot refuel.
- Removed APU 3D virtual object placeholder.
- Restored ability for PLT to close CPG door.
- Rewrited bunch of scripts, performance are increased in SP.
- Added NVS MODE switch simulation.
- Added aircraft state persistence.
- Tweaked weapon sounds at distance.
- Added single flare dispense instead of burst.


*02/09/2018*
- Updated Advanced Flight Model (AFM) data - by Keplager.
- Increased HDU PNVS resolution.
- Fixed autohover values - by Keplager.
- Unstowed TADS and PNVS camera once APU is running.
- Added NVS MODE cockpit interaction.
- Fixed HDU PNVS FPS.

*11/07/2018*
- Core file architecture rework - by Yax.
- Restored ability for CPG to take controls.
- Fixed CPG POV and hands position.
- Minor fix to Optical Relay Tube (ORT) 3D model.
- Added ingame monocle. (w/ Keplager + Yax)
- Removed vanilla UI lock box.
- Removed vanilla NVG mode to PNVS.
- Removed green cursor upon 3rd person.
- Fixed GUN azimuth limit on HMD ACQ. (/w Jamo)
- Reworked TADS informations display.
- Added RKT FXD symbology.
- Reworked TADS DTV colors.
- Disabled PNVS view if not enough electrical power.
- Added new PNVS rendering effect.
- Added new APU & ENG 3D sounds.
- Added APU sound loop. (/w Reyhard)
- External sounds adjustments.
- Changed IHADSS & IHADSS BRT toggle sounds.
- Added two steps IHADSS procedure, first put the monocle on and then click IHADSS BRT to put it alive (requires APU). 
- Added threat circles to ASE MPD page.
- Fixed laser issue not showing up on objects (buildings, rocks, vehicles...) at long distances - by Reyhard.
- Fixed ENG starters glitch.
- Added Fire Panel Test WARN sounds.

*11/07/2018*
- M230 & RKT distance sound adjustments.
- Restored M230 vibrations upon firing.
- Restored M230 barrel smoke effect.
- Battery should now provide supply by itself for CPG in MP.
- Minor change to ACRE 2 onboard radio configuration.

*10/07/2018*
- Fixed flares count display.
- Initial TSD display set to 1km.
- Added TSD MAP automatic compatibility with all maps - by Farquharson.

*11/06/2018*
- Fixed gun ammo count on WPN page.

*29/04/2018*
- Advanced Flight Model (AFM) update based on real engines performances.
- Reduced waypoint transition distance (from 500 to 50 meters).
- Fixed SMG_Burst error.
- Minor changes to auto-hover mode detector.
- Added initial steerpoint (WP0) upon spawning.
- Changed default M230 position to FXD.
- Disabled TADS imagery when engines off.


*13/04/2018*
- Advanced Flight Model (AFM) update.
- Added ACRE 2 support (requires development build & ACE) /w AN-PRC117F, Racks & Infantry Telephone.
- Fixed 'Gun Crosshair Fixed' symbology.

*08/04/2018*
- Changed Custom User 11 for IHADSS Toggle.
- Changed Custom User 12 for HDU PNVS Toggle.
- Restored GUN pipper for P*, removed for CPG (WIP).
- Edited CPG FOV. 
- Enhanced Crosshair (Custom User 20) visibility. 
- Lighten interactions trough action menu.
- Restored AH-64D Apache (without Longbow FCR).
- Removed vehicle chat regarding CPG laser state.
- Partially fixed misaligned backlight textures.
- Added signature files.

*04/04/2018*
- Advanced Flight Model (AFM) changes.
- PNVS azimuth bug fixed (-90°/+90°)

*02/04/2018*
- ENG RMPD PAGE rework to match real aircraft values (WIP).
- Complexified startup procedure.
- Tweaked animations to be less restrictive.
- Fixed TADS optic stability.

*11/03/2018*
- Dynamic rotor sound.
- Added damage sounds.
- New startup/shutdown procedure based on the real aircraft (WIP).
- Flares effects display fixed.
- Fixed internal & external startup sounds.
- Increased engine spooling time.
- Removed M230 full auto for burst with proper sound effect.
- Crash wreck fixed.
- Tweaked armor values.
- New M230 gun calculation based on laser range, own speed, movement and ballistics.
- Reduced 30mm ammo velocity.
- Increased 30mm ammo spread.
- Fixed TADS & M230 AZ limits.
- Fixed PNVS AZ & EL limits. 
- Changed default loadout.
- Changed CPG animation.
- Changed AGM-114, M230 & Hydras sound effects. 

*20/08/2017*
- Proper "laser on" symbology display while CPG is head down in RTO - by blindbat2006.
- PLT optics zoom slightly enhanced.
- Added laser system keybindings (Custom User 5 & Custom User 10).
- Replacement of few old sounds by better quality ones.
- Overall aircraft sounds volume tweaked.

*23/07/2017*
- PNVS mouse control slowed down (even more) - by blindbat2006.

*22/07/2017*
- Removed vanilla locking display - by blindbat2006.

*11/07/2017*
- Short term fix for FCR - by blindbat2006.
- Engine sounds lowered - by blindbat2006.
- Fixed RPT spam - by blindbat2006.

*03/04/2017*
- Added TADS NVG.
- Reduced PNVS motion sensitivity.

*20/03/2017*
- Added internal lights.
- Fixed flares memorypoint.

*19/03/2017*
- Replaced chaffs by flares.
- Enhanced startup and shutdown sound.
- Various volume tweaks.
- Added external lights.
- New optic effects for PLT.

*10/03/2017*
- Reduced APU volume.
- Reduced ignition starters volumes.
- Reworked startup sound.
- Reworked shutdown sound.
- TADS slew is now fixed to the ground (Point of Interest).
- Added new PLT DTV/PNVS optics in order to counter A3 limitations regarding aircraft performances.
- Early flares system, replacing the old one, doesn't display flares/chaffs quantities (WIP).
- Added new get-in animation.
- Added ground-to-air radar threats compatibility (A3+RHS+LOP) - now positively identified by the ASE.
- Added support vehicles compatibility (A3+RHS) - Arming menu will be available whether Ammo, Fuel, or Repair truck is placed.
- Aircraft compatibility with ACE refueling system.
- Increased CPG TADS axis sensitivity.
- AGM-114L cannot track laser spot anymore.
- Added Waypoint Cycle Backward/Forward - Custom User 17 & Custom User 18.

*23/02/2017*
- Edited AFM now based on A3 B_Heli_Attack_01 (WIP).
- Edited get-in & get-out sounds.
- Tweaked cockpit interior sounds volumes.
- New engine interior sound captured from the real aircraft.
- Aircraft will spawn all doors opened by default.
- TSD NAV mode instead of TSD ATK initialized by default.
- Edited default skin.

*20/02/2017*
- Added realistic flyby external sounds (JSRS4).
- Re-edited AGM-114 Hellfire sound (JSRS4).
- Re-edited M230 sound (JSRS4).
- Re-edited M261 rocket launcher sound (JSRS4).
- Fixed prime.rvmat error - by Shifty.FR.
- Changed "B_30mm_AP" to "B_30mm_MP" ammo settings.

*11/02/2017*
- PNVS zoom enhanced w/ WHOT FLIR & NVG.
- APU sound is longer (not looped yet).
- Edited Hellfire launch sound.
- Edited M230 sound.
- Tweaked Hellfire damage according to different types.
- Tweaked Hellfire explosion animation.
- Enhanced M230 dispersion.
