/// <summary>
/// PageExtension KNH Customer List (ID 50602) extends Record Customer List.
/// </summary>
pageextension 50602 "KNH_CustomerList" extends "Customer List"
{
    actions
    {
        addafter("Co&mments")
        {
            action(KNH_Sendemails)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sent Emails';
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                PromotedCategory = Category7;
                Image = ShowList;
                ToolTip = 'View a list of emails that you have sent to this customer.';
                trigger OnAction()
                var
                    Email: Codeunit Email;
                begin
                    Email.OpenSentEmails(Database::"Sales Header", Rec.SystemId);
                end;
            }
            action(KNH_Source)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Import Source Records';
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                PromotedCategory = Category7;
                Image = Import;
                ToolTip = 'Import source records.';
                RunObject = Xmlport KNH_Source;
            }
        }
    }
}
