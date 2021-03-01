codeunit 50145 "Post Sales - Event Bridge" implements IPushEventBridge
{
    internal procedure PostToEventBridge()
    begin
        Message(SalesDocumentPostedToEventBridgeMsg);
    end;

    internal procedure UpdateDocument()
    begin
        Message(SalesDocUpdatedMsg);
    end;

    var
        SalesDocumentPostedToEventBridgeMsg: Label 'Sales document has been posted to Event Bridge.';
        SalesDocUpdatedMsg: Label 'Sales document has been updated.';
}