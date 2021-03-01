page 50141 "Event Bridge Test Page"
{
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Event Bridge Test Page';
    PageType = StandardDialog;
    layout
    {
        area(Content)
        {
            field("Event Bridge Type"; EventBridgeType)
            {
                Caption = 'Event Bridge Type';
                ApplicationArea = All;
            }
        }
    }

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if CloseAction = Action::OK then begin
            EventBridgeProcessing.SetInterface(EventBridgeType);
            EventBridgeProcessing.Run();
        end;

    end;

    var
        EventBridgeType: Enum "Event Bridge Document Type";
        EventBridgeProcessing: Codeunit "Event Bridge Processing";
}