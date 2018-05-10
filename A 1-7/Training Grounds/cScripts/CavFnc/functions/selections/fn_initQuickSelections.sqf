/*
 * Author: CPL.Brostrom.A 
 * This function contain quick selection buttons and categorys.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Size Type <SIZE> ["none","lite","medium","full","ranger"]
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelections;
 * [this,"lite"] call cScripts_fnc_initQuickSelections;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]],["_selectSize", "none"]];

// make default ACE category
private _icon = "cScripts\Data\Icon\icon_01.paa";
if ((_selectSize == "full") or (_selectSize == "medium") or (_selectSize == "lite")) then {
    [_object,"cScriptQuickSelectionMenu","Quick Selection",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);
    [_object,"cScriptQuickSelectionStandard","Standard",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
};
if ((_selectSize == "ranger")) then {
    [_object,"cScriptQuickSelectionMenu","Quick Selection",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);
};

// make default ACE category
private _icon = "cScripts\Data\Icon\icon_01.paa";
if ((_selectSize == "full") or (_selectSize == "medium") or (_selectSize == "lite")) then {
    [_object,"cScriptQuickSelectionMenu","Quick Selection",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);
    [_object,"cScriptQuickSelectionStandard","Standard",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
};
// make additional category
if ((_selectSize == "full")) then {
    [_object,"cScriptQuickSelectionSpecial","Special",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
};
if ((_selectSize == "full") or (_selectSize == "medium")) then {
    [_object,"cScriptQuickSelectionCrew","Crew",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
};

if ((_selectSize == "full") or (_selectSize == "medium") or (_selectSize == "lite")) then {
    // make addAction Topic
    _object addAction ["Quick Selection", {}];

    // make Quick Selections
    [_object,"Helo Pilot","CAV_HeloPilot"] call FUNC(addQuickSelection);
    [_object,"Fixed Wing Pilot","CAV_FixedPilot"] call FUNC(addQuickSelection);
};

if ((_selectSize == "full") or (_selectSize == "medium")) then {
	[_object,"Squad Leader","CAV_SquadLeader"] call FUNC(addQuickSelection);
    [_object,"Fire Team Leader","CAV_TeamLeader","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionSpecial']] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman","CAV_AutomaticRifleman","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionSpecial']] call FUNC(addQuickSelection);
    [_object,"Grenadier","CAV_Grenadier","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionSpecial']] call FUNC(addQuickSelection);
    [_object,"Rifleman","CAV_Rifleman"] call FUNC(addQuickSelection);
    [_object,"Combat Life Saver","CAV_CombatLifesaver","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionSpecial']] call FUNC(addQuickSelection);
};

if ((_selectSize == "full")) then {
    [_object,"Officer","CAV_Officer","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionSpecial']] call FUNC(addQuickSelection);
    [_object,"Platoon Medic","CAV_PlatoonMedic","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionSpecial']] call FUNC(addQuickSelection);
    [_object,"Engineer","CAV_Engineer","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionSpecial']] call FUNC(addQuickSelection);
	
	[_object,"Tank Commander","CAV_TankCommander","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionCrew']] call FUNC(addQuickSelection);
    [_object,"Tank Gunner","CAV_TankGunner","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionCrew']] call FUNC(addQuickSelection);
    [_object,"Tank Driver","CAV_TankDriver","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionCrew']] call FUNC(addQuickSelection);
    [_object,"Tank Loader","CAV_TankLoader","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionCrew']] call FUNC(addQuickSelection);
};