class UISL_TacticalHUD extends UIScreenListener;

event OnInit (UIScreen Screen)
{
	local XComTacticalCheatManager CheatManager;

	if (UITacticalHUD(Screen) == none) return;

	CheatManager = XComTacticalCheatManager(class'WorldInfo'.static.GetWorldInfo().GetALocalPlayerController().CheatManager);
	CheatManager.DisableFirstEncounterVO = true;
}