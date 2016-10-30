/*
 *  @author:    Insane
 *  @project:   Distrikt41
 *  @params:    ?
 *  @return:    -
 *  @example:   [20, "Fortschritt Faulheit", {(speed player <= 20)}, [], {hint "scheene langsam. so isch richtig!"}, {hint "buuuh! schnell is kaka"}] call life_fnc_D41_UIDisplayProgressBarAndExecute;
 */
#define LAYER 100
#define IDC_BAR 38200
#define IDC_BAR_PROGRESSBAR 38201
#define IDC_BAR_TITLE 38202
#define IDC_TIMER 38300


if !(isNil "D41_UIProgressBarHandler") exitWith { diag_log "D41_UIDisplayProgressBarAndExecute: already active!"; false };
D41_UIDisplayCountdownStartTime = time;
D41_UIProgressBarManualSuccess = false;

params [
    ["_time", 0, [0]],                                                                  // wenn 0, muss condition true sein, damit abgeschlossen wird >> abbruch daher nicht moeglich, muss ueber condition geloest werden
    ["_text", "", [""]],
    ["_condition", {true}, [{}]],
    ["_arguments", [], [[]]],
    ["_codeFinished", {}, [{}]],
    ["_codeFailed", {}, [{}]],
    ["_tickTime", 0.1, [0]]                                                             // optional          
];

D41_UIProgressBarHandler = [{    
    disableSerialization;
    (_this select 0) params ["_time","_text","_condition","_arguments","_codeFinished","_codeFailed"];    
    private _timeLeft = _time - ((time - D41_UIDisplayCountdownStartTime)); 
    private _uiObject = uiNamespace getVariable ["life_progress", displayNull];
    private _executedConditionBoolean = _arguments call _condition;
    private _noTimeCountdown = (_time == 0);

    // abbruchbedinungen  >> wenn zeit abgelaufen & condition false 
    if (
        !(alive player) ||                              // hardcoded: player dead?
        (life_istazed) ||                               // hardcoded: player tazed?
        (life_interrupted) ||                           // hardcoded: interruped?
        (!_noTimeCountdown && !_executedConditionBoolean)
    ) exitWith {
        [D41_UIProgressBarHandler] call CBA_fnc_removePerFrameHandler;
        [_arguments, _timeLeft] call _codeFailed;
        if !(isNull _uiObject) then { 
            LAYER cutText ["", "PLAIN"]; 
        };
        D41_UIProgressBarHandler = nil;
    };

    // bar visible? (eg. tfar block)    
    if (isNull _uiObject) then { 
        LAYER cutRsc ["life_progress", "PLAIN"]; 
    };    

    // update progress bar
    private _progressBar = _uiObject displayCtrl IDC_BAR_PROGRESSBAR;
    private _titleText = _uiObject displayCtrl IDC_BAR_TITLE;
    private _percentProgress = 100 - ((_timeLeft * 100) / _time);
    _titleText ctrlSetText format[localize "STR_D41_UIProgressBar", _text, (round(_percentProgress) min 100), "%"];
    _progressBar progressSetPosition (_percentProgress / 100);
    
    // erfolg?  >> wenn zeit abgelaufen & condition true 
    if (
        (
            (_noTimeCountdown || _timeLeft <= 0) &&
            (_executedConditionBoolean)
        ) ||
        (D41_UIProgressBarManualSuccess)
    ) exitWith {
        [D41_UIProgressBarHandler] call CBA_fnc_removePerFrameHandler;
        [_arguments, _timeLeft] call _codeFinished;
        if !(isNull _uiObject) then { 
            LAYER cutText ["", "PLAIN"]; 
        };
        D41_UIProgressBarHandler = nil;
    };
}, _tickTime, [_time,_text,_condition,_arguments,_codeFinished,_codeFailed]] call CBA_fnc_addPerFrameHandler;


true 