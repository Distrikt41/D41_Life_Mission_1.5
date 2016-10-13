/*
 *  @author:    Insane
 *  @project:   Distrikt41
 *  @params:    ?
 *  @return:    -
 *  @example:   [20, "ich stehe da oben im titel", {(speed player <= 20)}, [], {hint "scheene langsam. so isch richtig!"}, {hint "buuuh! schnell is kaka"}] call life_fnc_D41_UIDisplayCountdownAndExecute;
 */


if !(isNil "D41_UIDisplayCountdownHandler") exitWith { diag_log "D41_UIDisplayCountdownAndExecute: already active!"; false };
D41_UIDisplayCountdownStartTime = time;

params [
    ["_time", 0, [0]],
    ["_text", "", [""]],
    ["_condition", {true}, [{}]],
    ["_arguments", [], [[]]],
    ["_codeFinished", {}, [{}]],
    ["_codeFailed", {}, [{}]],
    ["_drawIcon", "\A3\ui_f\data\igui\cfg\actions\settimer_ca.paa", [""]]              // optional
];

D41_UIDisplayCountdownHandler = [{    
    (_this select 0) params ["_time","_text","_condition","_arguments","_codeFinished","_codeFailed","_drawIcon"];    
    private _timeLeft = _time - ((time - D41_UIDisplayCountdownStartTime)); 
    private _executedConditionBoolean = _arguments call _condition;
    
    //diag_log format["(%2) current condition bool: %1", (_arguments call _condition), _timeLeft];     
    // erfolg?  >> wenn zeit abgelaufen & condition true 
    if (
        (_timeLeft <= 0) &&
        (_executedConditionBoolean)
    ) exitWith {
        [_arguments, _timeLeft] call _codeFinished;
        [D41_UIDisplayCountdownHandler] call CBA_fnc_removePerFrameHandler;
        D41_UIDisplayCountdownHandler = nil;
    };
    
    // abbruchbedinungen  >> wenn condition false 
    if (
        !(alive player) ||                              // hardcoded: player dead?
        (life_istazed) ||                               // hardcoded: player tazed?
        (life_interrupted) ||                           // hardcoded: interruped?
        (!_executedConditionBoolean)
    ) exitWith {
        [_arguments, _timeLeft] call _codeFailed;
        [D41_UIDisplayCountdownHandler] call CBA_fnc_removePerFrameHandler; 
        D41_UIDisplayCountdownHandler = nil;
    };
    
    // wenn beides nicht der fall, so zeige mir den timer an 
    drawIcon3D [_drawIcon, [1, 1, 1, 0.75], (positionCameraToWorld [0, 1.35, 5]), 1, 1, 0, format[localize "STR_D41_UICountdownTimer", _text, (round(_timeLeft) max 0)], 1, 0.03];
}, 0, [_time,_text,_condition,_arguments,_codeFinished,_codeFailed,_drawIcon]] call CBA_fnc_addPerFrameHandler;


true 