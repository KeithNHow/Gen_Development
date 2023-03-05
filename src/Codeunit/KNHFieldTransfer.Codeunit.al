/// <summary>
/// Codeunit "KNH FieldTransfer" (ID 50617).
/// </summary>
codeunit 50617 "KNH_FieldTransfer"
{
    trigger OnRun()
    var
        SalesHeader: Record "Sales Header";
        SalesInvoiceHeader: Record "Sales Invoice Header";
        NoSeries: Record "No. Series";
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgmt: Codeunit NoSeriesManagement;
    begin
        SalesHeader.SetRange(Invoice);
        if SalesHeader.FindSet() then begin
            NoSeries.Get(SalesSetup."Invoice Nos.");
            repeat
                SalesInvoiceHeader.Init();
                SalesInvoiceHeader."No." := NoSeriesMgmt.GetNextNo(SalesSetup."Invoice Nos.", WorkDate(), true);
                SalesInvoiceHeader.TransferFields(SalesHeader, false);
                SalesInvoiceHeader.Insert();
            until SalesHeader.Next() = 0;
        end;
    end;
}
