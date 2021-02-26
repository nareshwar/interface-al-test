enum 50142 "Event Bridge Document Type" implements IPushEventBridge
{
    Extensible = true;
    AssignmentCompatibility = true;
    value(1; SalesOrder)
    {
        Caption = 'Sales Order';
        Implementation = IPushEventBridge = "Post Sales - Event Bridge";

    }

    value(2; PurchaseOrder)
    {
        Caption = 'Purchase Order';
        Implementation = IPushEventBridge = "Post Purch. - Event Bridge";
    }

    value(3; TransferOrder)
    {
        Caption = 'Transfer Order';
        Implementation = IPushEventBridge = "Post Transfer - Event Bridge";

    }
}