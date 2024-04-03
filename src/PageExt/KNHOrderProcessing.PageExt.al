/// <summary>
/// PageExt "KNH OrderProcessing" extends Order Processor Role Center 9006
/// </summary>
pageextension 50601 "KNH_OrderProcessing" extends "Order Processor Role Center"
{
    actions
    {
        addafter("History")
        {
            action(KNH_OverLoad)
            {
                ApplicationArea = All;
                ToolTip = 'OverLoad';
                Caption = 'OverLoad';
                RunObject = codeunit "KNH_Overloads";
            }
        }
        addafter(KNH_OverLoad)
        {
            action("KNH_Copy Test")
            {
                ApplicationArea = All;
                ToolTip = 'Copy Test';
                Caption = 'Copy Test';
                RunObject = codeunit "KNH_LoopVariations";
            }
        }
        addafter("KNH_Copy Test")
        {
            action(KNH_Dictionary)
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
        addafter(KNH_Notes)
        {
            action(KNH_Source)
            {
                ApplicationArea = All;
                ToolTip = 'Open sources page.';
                Caption = 'Sources';
                RunObject = Page KNH_Sources;
            }
        }
        addafter(KNH_Source)
        {
            action(KNH_Rename)
            {
                ApplicationArea = All;
                ToolTip = 'Rename';
                Caption = 'Rename';
                RunObject = Codeunit KNH_Rename;
            }
        }
        addafter(KNH_Rename)
        {
            action(KNH_SendEmail)
            {
                ApplicationArea = All;
                ToolTip = 'Send Email';
                Caption = 'Send Email';
                RunObject = Codeunit KNH_SendEmail;
            }
        }
        addafter(KNH_SendEmail)
        {
            action(KNH_ErrorLog)
            {
                ApplicationArea = All;
                ToolTip = 'Error Log';
                Caption = 'Error Log';
                RunObject = Codeunit KNH_ErrorLog;
            }
        }
        addafter(KNH_ErrorLog)
        {
            action(KNH_ChangeCompany)
            {
                ApplicationArea = All;
                ToolTip = 'Change Company';
                Caption = 'Change Company';
                RunObject = Codeunit KNH_ChangeCompany;
            }
        }
        addafter(KNH_ChangeCompany)
        {
            action(KNH_MarkedCustomers)
            {
                ApplicationArea = All;
                ToolTip = 'Marked Customers';
                Caption = 'Marked Customers';
                RunObject = Codeunit KNH_MarkedCustomers;
            }
        }
    }
}