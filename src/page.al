page 50141 "Event Bridge Test Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Event Bridge Test Page';

    actions
    {
        area(Processing)
        {
            action("Event Test")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                end;
            }
        }
    }
}