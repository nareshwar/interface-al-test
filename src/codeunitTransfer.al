codeunit 50146 "Post Transfer - Event Bridge" implements IPushEventBridge
{
    internal procedure PostToEventBridge()
    begin
        Message(TransferDocumentPostedToEventBridgeMsg);
    end;

    internal procedure UpdateDocument()
    begin
        Message(TransferDocUpdatedMsg);
    end;

    var
        TransferDocumentPostedToEventBridgeMsg: Label 'Transfer document has been posted to Event Bridge';
        TransferDocUpdatedMsg: Label 'Transfer document has been updated.';
}