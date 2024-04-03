/// <summary>
/// Codeunit "KNH_ErrorLog" (ID 50621).
/// </summary>
codeunit 50621 KNH_ErrorLog
{
    TableNo = KNH_ErrorLog;

    trigger OnRun()
    begin
        Rec.init();
        Rec."Entry No." := Rec.GetLastEntryNo() + 1;
        Rec."Table No." := 18;
        Rec."Record No." := 'BCW';
        Rec."Error Code" := 'MissingEmailaddr';
        Rec."Error Text" := 'Email address missing for customer.';
        Rec.Insert();
    end;
}
