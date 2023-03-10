/// <summary>
/// PageExt "KNH_OrderProcessing" extends Order Processor Role Center 9006
/// </summary>
pageextension 50601 "KNH_OrderProcessing" extends "Order Processor Role Center"
{
    actions
    {
        addAfter("History")
        {
            action(KNH_OverLoad) //604
            {
                ApplicationArea = All;
                ToolTip = 'OverLoad';
                Caption = 'OverLoad';
                RunObject = codeunit "KNH_Overloads";
            }
        }
        addafter(KNH_OverLoad)
        {
            action("KNH_Copy Test") //601
            {
                ApplicationArea = All;
                ToolTip = 'Copy Test';
                Caption = 'Copy Test';
                RunObject = codeunit "KNH_LoopVariations";
            }
        }
        addafter("KNH_Copy Test")
        {
            action(KNH_Dictionary) //607
            {
                ApplicationArea = All;
                ToolTip = 'Dictionary';
                Caption = 'Dictionary';
                RunObject = codeunit "KNH_Dictionary";
            }
        }
        addafter(KNH_Dictionary)
        {
            action(KNH_SystemFunctions) //609
            {
                ApplicationArea = All;
                ToolTip = 'System Functions';
                Caption = 'System Functions';
                RunObject = codeunit "KNH_SystemFunctions";
            }
        }
        addafter(KNH_SystemFunctions)
        {
            action(KNH_TransferFields)
            {
                ApplicationArea = All;
                ToolTip = 'TransferFields';
                Caption = 'TransferFields';
                RunObject = codeunit "KNH_TransferFields";
            }
        }
        addafter(KNH_TransferFields)
        {
            action(KNH_VariantTest)
            {
                ApplicationArea = All;
                ToolTip = 'Variant Test';
                Caption = 'Variant Test';
                RunObject = codeunit "KNH_VariantTest";
            }
        }
        addafter(KNH_VariantTest)
        {
            action(KNH_RecordRef)
            {
                ApplicationArea = All;
                ToolTip = 'Record Link Export';
                Caption = 'Record Link';
                RunObject = codeunit "KNH_RecordRef";
            }
        }
        addafter(KNH_RecordRef)
        {
            action(KNH_Notes)
            {
                ApplicationArea = All;
                ToolTip = 'Notes';
                Caption = 'Notes';
                RunObject = Page "KNH_Notes";
            }
        }
    }
}