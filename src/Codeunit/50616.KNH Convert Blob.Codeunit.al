/// <summary>
/// Codeunit KNH Convert Blob (ID 50616).
/// </summary>
codeunit 50616 "KNH Convert Blob"
{
    TableNo = "Company Information";

    trigger OnRun()
    var
        FieldRef29: FieldRef;
        CRecordRef: RecordRef;
    begin
        FieldRef29 := CRecordRef.Field(29); //Assign Picture field in table
        ConvertBlobToBase64String(FieldRef29);
    end;

    local procedure ConvertBlobToBase64String(var pFieldRef: FieldRef): Text
    var
        Base64Convert: Codeunit "Base64 Convert";
        TempBlob: Codeunit "Temp Blob";
        varInStream: InStream;
    begin
        TempBlob.FromRecordRef(pFieldRef.Record(), pFieldRef.Number());
        TempBlob.CreateInStream(varInStream);
        exit(Base64Convert.ToBase64(varInStream));
    end;
}
