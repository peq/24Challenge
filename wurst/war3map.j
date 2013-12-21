//===========================================================================
// 
// 24hours - CrapAoS
// 
//   Warcraft III map script
//   Date: Sat Dec 21 17:34:40 2013
//   Map Author: Unknown
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
    // Generated
    rect                    gg_rct_warmupColor         = null
    rect                    gg_rct_warmupBW            = null
    camerasetup             gg_cam_InitCam             = null
<<<<<<< HEAD
    camerasetup             gg_cam_BWStartCam          = null
    camerasetup             gg_cam_ColorStartCam       = null
    sound                   gg_snd_QuestFailed         = null
    sound                   gg_snd_almostKillingspree  = null
    sound                   gg_snd_fuckedUp            = null
    sound                   gg_snd_killFrenzy          = null
    sound                   gg_snd_nein                = null
    sound                   gg_snd_SerbianXaXa         = null
    sound                   gg_snd_stopMe              = null
    sound                   gg_snd_toasted             = null
    sound                   gg_snd_youSuck             = null
=======
    sound                   gg_snd_QuestFailed         = null
>>>>>>> 4e88f4efb252f1e0b14060458b436dbb151f5673
    trigger                 gg_trg_Untitled_Trigger_001 = null
    trigger                 gg_trg_Untitled_Trigger_002 = null
    trigger                 gg_trg_Untitled_Trigger_003 = null
    unit                    gg_unit_e001_0009          = null
    unit                    gg_unit_e001_0011          = null
    unit                    gg_unit_e001_0012          = null
    unit                    gg_unit_e001_0013          = null
    unit                    gg_unit_e002_0014          = null
    unit                    gg_unit_e002_0015          = null
    unit                    gg_unit_e002_0016          = null
    unit                    gg_unit_e002_0017          = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Sounds
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_QuestFailed = CreateSound( "Sound\\Interface\\QuestFailed.wav", false, false, false, 10, 10, "" )
    call SetSoundParamsFromLabel( gg_snd_QuestFailed, "QuestFailed" )
    call SetSoundDuration( gg_snd_QuestFailed, 4690 )
    set gg_snd_almostKillingspree = CreateSound( "sounds\\almostKillingspree.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_almostKillingspree, 2096 )
    call SetSoundChannel( gg_snd_almostKillingspree, 0 )
    call SetSoundVolume( gg_snd_almostKillingspree, 127 )
    call SetSoundPitch( gg_snd_almostKillingspree, 1.0 )
    set gg_snd_fuckedUp = CreateSound( "sounds\\fuckedUp.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_fuckedUp, 2346 )
    call SetSoundChannel( gg_snd_fuckedUp, 0 )
    call SetSoundVolume( gg_snd_fuckedUp, 127 )
    call SetSoundPitch( gg_snd_fuckedUp, 1.0 )
    set gg_snd_killFrenzy = CreateSound( "sounds\\killFrenzy.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_killFrenzy, 2616 )
    call SetSoundChannel( gg_snd_killFrenzy, 0 )
    call SetSoundVolume( gg_snd_killFrenzy, 127 )
    call SetSoundPitch( gg_snd_killFrenzy, 1.0 )
    set gg_snd_nein = CreateSound( "sounds\\nein.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_nein, 2460 )
    call SetSoundChannel( gg_snd_nein, 0 )
    call SetSoundVolume( gg_snd_nein, 127 )
    call SetSoundPitch( gg_snd_nein, 1.0 )
    set gg_snd_SerbianXaXa = CreateSound( "sounds\\SerbianXaXa.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_SerbianXaXa, 3916 )
    call SetSoundChannel( gg_snd_SerbianXaXa, 0 )
    call SetSoundVolume( gg_snd_SerbianXaXa, 127 )
    call SetSoundPitch( gg_snd_SerbianXaXa, 1.0 )
    set gg_snd_stopMe = CreateSound( "sounds\\stopMe.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_stopMe, 4046 )
    call SetSoundChannel( gg_snd_stopMe, 0 )
    call SetSoundVolume( gg_snd_stopMe, 127 )
    call SetSoundPitch( gg_snd_stopMe, 1.0 )
    set gg_snd_toasted = CreateSound( "sounds\\toasted.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_toasted, 1628 )
    call SetSoundChannel( gg_snd_toasted, 0 )
    call SetSoundVolume( gg_snd_toasted, 127 )
    call SetSoundPitch( gg_snd_toasted, 1.0 )
    set gg_snd_youSuck = CreateSound( "sounds\\youSuck.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_youSuck, 2330 )
    call SetSoundChannel( gg_snd_youSuck, 0 )
    call SetSoundVolume( gg_snd_youSuck, 127 )
    call SetSoundPitch( gg_snd_youSuck, 1.0 )
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'h000', -2048.0, -2560.0, 270.000 )
    set gg_unit_e002_0014 = CreateUnit( p, 'e002', -1579.0, -2513.8, 293.311 )
    set gg_unit_e002_0015 = CreateUnit( p, 'e002', -2103.7, -2102.5, 211.241 )
endfunction

//===========================================================================
function CreateBuildingsForPlayer4 takes nothing returns nothing
    local player p = Player(4)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'h001', 2112.0, 2112.0, 270.000 )
    set gg_unit_e002_0016 = CreateUnit( p, 'e002', 1475.5, 2056.6, 54.020 )
    set gg_unit_e002_0017 = CreateUnit( p, 'e002', 2176.0, 1472.0, 270.000 )
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_e001_0009 = CreateUnit( p, 'e001', -1578.6, 1068.3, 66.190 )
    set gg_unit_e001_0011 = CreateUnit( p, 'e001', 1680.5, -1579.0, 48.460 )
    set gg_unit_e001_0012 = CreateUnit( p, 'e001', 1521.0, -1718.5, 284.080 )
    set gg_unit_e001_0013 = CreateUnit( p, 'e001', -1734.2, 845.5, 126.630 )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0(  )
    call CreateBuildingsForPlayer4(  )
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings(  )
    call CreateNeutralPassive(  )
    call CreatePlayerUnits(  )
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_warmupColor = Rect( -2752.0, -3104.0, -1248.0, -1664.0 )
    set gg_rct_warmupBW = Rect( 1152.0, 1216.0, 2848.0, 2816.0 )
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_InitCam = CreateCameraSetup(  )
    call CameraSetupSetField( gg_cam_InitCam, CAMERA_FIELD_ZOFFSET, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_InitCam, CAMERA_FIELD_ROTATION, 246.7, 0.0 )
    call CameraSetupSetField( gg_cam_InitCam, CAMERA_FIELD_ANGLE_OF_ATTACK, 351.1, 0.0 )
    call CameraSetupSetField( gg_cam_InitCam, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0 )
    call CameraSetupSetField( gg_cam_InitCam, CAMERA_FIELD_ROLL, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_InitCam, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0 )
    call CameraSetupSetField( gg_cam_InitCam, CAMERA_FIELD_FARZ, 101.0, 0.0 )
    call CameraSetupSetDestPosition( gg_cam_InitCam, 1652.5, 1332.6, 0.0 )

    set gg_cam_BWStartCam = CreateCameraSetup(  )
    call CameraSetupSetField( gg_cam_BWStartCam, CAMERA_FIELD_ZOFFSET, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_BWStartCam, CAMERA_FIELD_ROTATION, 90.0, 0.0 )
    call CameraSetupSetField( gg_cam_BWStartCam, CAMERA_FIELD_ANGLE_OF_ATTACK, 304.0, 0.0 )
    call CameraSetupSetField( gg_cam_BWStartCam, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0 )
    call CameraSetupSetField( gg_cam_BWStartCam, CAMERA_FIELD_ROLL, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_BWStartCam, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0 )
    call CameraSetupSetField( gg_cam_BWStartCam, CAMERA_FIELD_FARZ, 5000.0, 0.0 )
    call CameraSetupSetDestPosition( gg_cam_BWStartCam, 2099.1, 2064.1, 0.0 )

    set gg_cam_ColorStartCam = CreateCameraSetup(  )
    call CameraSetupSetField( gg_cam_ColorStartCam, CAMERA_FIELD_ZOFFSET, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_ColorStartCam, CAMERA_FIELD_ROTATION, 90.0, 0.0 )
    call CameraSetupSetField( gg_cam_ColorStartCam, CAMERA_FIELD_ANGLE_OF_ATTACK, 304.0, 0.0 )
    call CameraSetupSetField( gg_cam_ColorStartCam, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0 )
    call CameraSetupSetField( gg_cam_ColorStartCam, CAMERA_FIELD_ROLL, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_ColorStartCam, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0 )
    call CameraSetupSetField( gg_cam_ColorStartCam, CAMERA_FIELD_FARZ, 5000.0, 0.0 )
    call CameraSetupSetDestPosition( gg_cam_ColorStartCam, -2006.5, -2503.1, 0.0 )

endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Untitled Trigger 001
//===========================================================================
function Trig_Untitled_Trigger_001_Actions takes nothing returns nothing
    call RemoveUnit( gg_unit_e002_0015 )
    call RemoveUnit( gg_unit_e002_0014 )
    call RemoveUnit( gg_unit_e002_0016 )
    call RemoveUnit( gg_unit_e002_0017 )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_001 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_001 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_001, function Trig_Untitled_Trigger_001_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 002
//===========================================================================
function Trig_Untitled_Trigger_002_Actions takes nothing returns nothing
    call MoveRectToLoc( gg_rct_warmupBW, GetRectCenter(GetPlayableMapRect()) )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_002 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_002 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_002, function Trig_Untitled_Trigger_002_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 003
//===========================================================================
function Trig_Untitled_Trigger_003_Actions takes nothing returns nothing
    call KillUnit( gg_unit_e001_0013 )
    call KillUnit( gg_unit_e001_0009 )
    call KillUnit( gg_unit_e001_0012 )
    call KillUnit( gg_unit_e001_0011 )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_003 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_003 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_003, function Trig_Untitled_Trigger_003_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Untitled_Trigger_001(  )
    call InitTrig_Untitled_Trigger_002(  )
    call InitTrig_Untitled_Trigger_003(  )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call ForcePlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(0), false )
    call SetPlayerController( Player(0), MAP_CONTROL_COMPUTER )

    // Player 1
    call SetPlayerStartLocation( Player(1), 1 )
    call ForcePlayerStartLocation( Player(1), 1 )
    call SetPlayerColor( Player(1), ConvertPlayerColor(1) )
    call SetPlayerRacePreference( Player(1), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(1), false )
    call SetPlayerController( Player(1), MAP_CONTROL_USER )

    // Player 2
    call SetPlayerStartLocation( Player(2), 2 )
    call ForcePlayerStartLocation( Player(2), 2 )
    call SetPlayerColor( Player(2), ConvertPlayerColor(2) )
    call SetPlayerRacePreference( Player(2), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(2), false )
    call SetPlayerController( Player(2), MAP_CONTROL_USER )

    // Player 3
    call SetPlayerStartLocation( Player(3), 3 )
    call ForcePlayerStartLocation( Player(3), 3 )
    call SetPlayerColor( Player(3), ConvertPlayerColor(3) )
    call SetPlayerRacePreference( Player(3), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(3), false )
    call SetPlayerController( Player(3), MAP_CONTROL_USER )

    // Player 4
    call SetPlayerStartLocation( Player(4), 4 )
    call ForcePlayerStartLocation( Player(4), 4 )
    call SetPlayerColor( Player(4), ConvertPlayerColor(4) )
    call SetPlayerRacePreference( Player(4), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(4), false )
    call SetPlayerController( Player(4), MAP_CONTROL_COMPUTER )

    // Player 5
    call SetPlayerStartLocation( Player(5), 5 )
    call ForcePlayerStartLocation( Player(5), 5 )
    call SetPlayerColor( Player(5), ConvertPlayerColor(5) )
    call SetPlayerRacePreference( Player(5), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(5), false )
    call SetPlayerController( Player(5), MAP_CONTROL_USER )

    // Player 6
    call SetPlayerStartLocation( Player(6), 6 )
    call ForcePlayerStartLocation( Player(6), 6 )
    call SetPlayerColor( Player(6), ConvertPlayerColor(6) )
    call SetPlayerRacePreference( Player(6), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(6), false )
    call SetPlayerController( Player(6), MAP_CONTROL_USER )

    // Player 7
    call SetPlayerStartLocation( Player(7), 7 )
    call ForcePlayerStartLocation( Player(7), 7 )
    call SetPlayerColor( Player(7), ConvertPlayerColor(7) )
    call SetPlayerRacePreference( Player(7), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(7), false )
    call SetPlayerController( Player(7), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_009
    call SetPlayerTeam( Player(0), 0 )
    call SetPlayerState( Player(0), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(1), 0 )
    call SetPlayerState( Player(1), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(2), 0 )
    call SetPlayerState( Player(2), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(3), 0 )
    call SetPlayerState( Player(3), PLAYER_STATE_ALLIED_VICTORY, 1 )

    //   Allied
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(2), true )

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(2), true )

    // Force: TRIGSTR_022
    call SetPlayerTeam( Player(4), 1 )
    call SetPlayerState( Player(4), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(5), 1 )
    call SetPlayerState( Player(5), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(6), 1 )
    call SetPlayerState( Player(6), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(7), 1 )
    call SetPlayerState( Player(7), PLAYER_STATE_ALLIED_VICTORY, 1 )

    //   Allied
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(6), true )

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(6), true )

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount( 1, 2 )
    call SetStartLocPrio( 1, 0, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 1, 3, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 2, 2 )
    call SetStartLocPrio( 2, 0, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 1, 3, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 3, 2 )
    call SetStartLocPrio( 3, 0, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 1, 2, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 5, 2 )
    call SetStartLocPrio( 5, 0, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 1, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 6, 2 )
    call SetStartLocPrio( 6, 0, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 1, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 7, 2 )
    call SetStartLocPrio( 7, 0, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 1, 6, MAP_LOC_PRIO_HIGH )
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call SetTerrainFogEx( 0, 1000.0, 7000.0, 0.500, 0.502, 0.502, 1.000 )
    call SetWaterBaseColor( 0, 128, 128, 255 )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "VillageDay" )
    call SetAmbientNightSound( "VillageNight" )
    call SetMapMusic( "Music", true, 0 )
    call InitSounds(  )
    call CreateRegions(  )
    call CreateCameras(  )
    call CreateAllUnits(  )
    call InitBlizzard(  )
    call InitGlobals(  )
    call InitCustomTriggers(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_018" )
    call SetMapDescription( "TRIGSTR_020" )
    call SetPlayers( 8 )
    call SetTeams( 8 )
    call SetGamePlacement( MAP_PLACEMENT_TEAMS_TOGETHER )

    call DefineStartLocation( 0, -2112.0, -2624.0 )
    call DefineStartLocation( 1, -2112.0, -2624.0 )
    call DefineStartLocation( 2, -2112.0, -2624.0 )
    call DefineStartLocation( 3, -2112.0, -2624.0 )
    call DefineStartLocation( 4, 2048.0, 2048.0 )
    call DefineStartLocation( 5, 2048.0, 2048.0 )
    call DefineStartLocation( 6, 2048.0, 2048.0 )
    call DefineStartLocation( 7, 2048.0, 2048.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
    call InitAllyPriorities(  )
endfunction

