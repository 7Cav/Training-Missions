/*
 * Author: CPL.Brostrom.A 
 * This function contain insignia selection buttons and categorys.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * call cScripts_fnc_initInsigniaSelections;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];


// Make ACE Category
private _icon = "cScripts\Data\Icon\icon_00.paa";
[_object,"cScriptInsigniaSelectionMenu","Insignia",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);
[_object,"cScriptInsigniaSelectionMisc","Misc",_Icon,["ACE_MainActions","cScriptInsigniaSelectionMenu"]] call FUNC(addAceCategory);

// Make addAction Topic.
_object addAction ["Insignia Selection", {}];

// Add the Insignia Selections 
[_object,"Remove Insignia"] call FUNC(addInsigniaSelection);
//[_object,"Platoon Insignia 1/A/1-7","1A_17_Insignia","cScripts\Data\Insignia\1-A-17.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia A/1/A/1-7","A1A_17_Insignia","cScripts\Data\Insignia\A-1-A-17.paa"] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia B/1/A/1-7","B1A_17_Insignia","cScripts\Data\Insignia\B-1-A-17.paa"] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia C/1/A/1-7","C1A_17_Insignia","cScripts\Data\Insignia\C-1-A-17.paa"] call FUNC(addInsigniaSelection);

[_object,"Platoon Insignia 2/A/1-7","2A_17_Insignia","cScripts\Data\Insignia\2-A-17.paa"] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia A/2/A/1-7","A2A_17_Insignia","cScripts\Data\Insignia\A-2-A-17.paa"] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia B/2/A/1-7","B2A_17_Insignia","cScripts\Data\Insignia\B-2-A-17.paa"] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia C/2/A/1-7","C2A_17_Insignia","cScripts\Data\Insignia\C-2-A-17.paa"] call FUNC(addInsigniaSelection);

// 7th Cavalry Gaming Insignias
[_object,"7th Cavalry Insignia","7_Insignia","cScripts\Data\Insignia\7.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionMisc']] call FUNC(addInsigniaSelection);
[_object,"7th Cavalry Insignia (M81)","7_m81_Insignia","cScripts\Data\Insignia\7_m81.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionMisc']] call FUNC(addInsigniaSelection);
[_object,"7th Cavalry Insignia (OCP)","7_ocp_Insignia","cScripts\Data\Insignia\7_ocp.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionMisc']] call FUNC(addInsigniaSelection);

[_object,"Platoon Insignia 2/C/1-7","2C_17_Insignia","cScripts\Data\Insignia\2-C-17.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionMisc']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 1/1/C/1-7","11C_17_Insignia","cScripts\Data\Insignia\1-1-C-17.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionMisc']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 2/1/C/1-7","21C_17_Insignia","cScripts\Data\Insignia\2-1-C-17.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionMisc']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 3/1/C/1-7","31C_17_Insignia","cScripts\Data\Insignia\3-1-C-17.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionMisc']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 4/1/C/1-7","41C_17_Insignia","cScripts\Data\Insignia\4-1-C-17.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionMisc']] call FUNC(addInsigniaSelection);
