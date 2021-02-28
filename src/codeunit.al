codeunit 50140 "Event Bridge Test"
{

    procedure SetInterface(var EventBridgeType: Enum "Event Bridge Document Type")
    begin
        EventType := EventBridgeType;
    end;

    trigger OnRun()
    begin
        ProcessDocument(EventType);
    end;

    local procedure ProcessDocument(EventInterface: Interface IPushEventBridge)
    begin
        EventInterface.PostToEventBridge();
        EventInterface.UpdateDocument();
    end;

    var
        EventType: Enum "Event Bridge Document Type";
}
