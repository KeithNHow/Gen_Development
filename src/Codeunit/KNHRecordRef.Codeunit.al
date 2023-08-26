/// <summary>
/// Codeunit KNH_RecordRef (ID 50611).
/// RecordRef - References a record in a table.
/// RecordID - Contains the table number and the primary key of a table.
/// </summary>
codeunit 50611 "KNH_RecordRef"
{
    trigger OnRun()
    begin
        EmailRecordRef();
        //RecordLinkExport();
    end;

    /// <summary>
    /// MyRecordRef.
    /// </summary>
    procedure MyRecordRef()
    var
        CustRecRef: RecordRef;
        MyFieldRef: FieldRef;
        CustRecId: RecordId;
    begin
        CustRecRef.Open(Database::Customer); //Open table
        MyFieldRef := CustRecRef.Field(1); //Assign first field in table
        MyFieldRef.Value := '50000'; //Assign Value to field
        if CustRecRef.Find('=') then begin //Find record
            CustRecId := CustRecRef.RecordId; //Convert RecRef to RecId
            CustRecRef.Get(CustRecId);
            Message(Format(CustRecRef)); //Display record content
        end;
    end;

    local procedure EmailRecordRef()
    var
        ERecordRef: RecordRef;
        Counter: Integer;
    begin
        ERecordRef.Open(Database::"Sent Email"); //Open table
        ERecordRef.SetRecFilter();
        if ERecordRef.FindSet() then
            repeat
                Counter += 1;
            until ERecordRef.Next() = 0;
        Message(Format(Counter));
    end;

    /// <summary>
    /// CustRecordRef.
    /// </summary>
    procedure CustRecordRef()
    var
        CRecordRef: RecordRef;
        //CustRecordId: RecordId;
        varFilters: Text;
        FoundMsg: Label 'The filter is set on the %1 field.', Comment = '%1 = varFilters';
    begin
        CRecordRef.Open(Database::Customer); //Open table
        //MyFieldRef := EmailRecordRef.Field(1); //Assign first field in table
        //MyFieldRef.Value := ''; //Assign Value to field
        CRecordRef.SetRecFilter();
        varFilters := CRecordRef.GetFilters;
        Message(FoundMsg, varFilters);
    end;

    /// <summary>
    /// RecordLinkRecRef.
    /// </summary>
    procedure RecordLinkRecRef()
    var
        RecordLink: Record "Record Link";
    begin
        RecordLink.SetRange(Type, 1);
        if RecordLink.FindFirst() then
            Message('%1', RecordLink."Record ID")
        else
            Message('No records found in the table');
    end;

    /// <summary>
    /// RecordLinkExport.
    /// </summary>
    procedure RecordLinkExport()
    var
        Opportunity: Record Opportunity;
        RecordLink: Record "Record Link";
        KNHNote: Record "KNH_Note";
        OppRecordRef: RecordRef;
        MyInStream: InStream;
        LongText: Text;
    begin
        Opportunity.FindSet(); //Find records
        repeat
            OppRecordRef.GetTable(Opportunity); //open table
            RecordLink.SetCurrentKey("Record ID"); //Set key
            RecordLink.SetRange("Record ID", OppRecordRef.RecordId); //Filter records
            RecordLink.SetRange(Company, CompanyName);
            Recordlink.SetAutoCalcFields(Note);
            if RecordLink.FindSet() then //Check if table has records
                repeat
                    KNHNote.Init();
                    KNHNote."Link ID" := RecordLink."Link ID";
                    KNHNote.Description := RecordLink.Description;
                    RecordLink.Note.CreateInStream(MyInStream);
                    MyInstream.Read(LongText);
                    KNHNote.Note := CopyStr(Format(LongText), 1, 50);
                    KNHNote.Created := RecordLink.Created;
                    KNHNote."User ID" := RecordLink."User ID";
                    KNHNote."To User ID" := RecordLink."To User ID";
                    KNHNote.Insert();
                until RecordLink.Next() = 0
        //RecordLink.Delete();
        until Opportunity.Next() = 0; //Next Record
    end;
}
