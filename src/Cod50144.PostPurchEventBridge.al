codeunit 50144 "Post Purch. - Event Bridge" implements IPushEventBridge
{
    internal procedure PostToEventBridge()
    begin
        Message(PurchDocumentPostedToEventBridgeMsg);
    end;

    internal procedure UpdateDocument()
    begin
        Message(PurchDocUpdatedMsg);
    end;

    var
        PurchDocumentPostedToEventBridgeMsg: Label 'Purchase document has been posted to Event Bridge';
        PurchDocUpdatedMsg: Label 'Purchase document has been updated.';
}