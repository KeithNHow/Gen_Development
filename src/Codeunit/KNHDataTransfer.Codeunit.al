/// <summary>
/// Codeunit KNH DataTransfer (ID 50618).
/// DataTransfer
/// 1. AddConstantValue(Any, Integer) - Specifies the given value is to be set in the given field in the destination table.
/// 2. AddFieldValue(Integer, Integer)	- Specifies a source and destination field, where the values from the source field are to be copied to the destination field. The data types of the fields must match, except CODE to TEXT which is allowed.
/// 3. AddJoin(Integer, Integer) -Adds a field pair to be used to create a join condition which determines which rows to transfer, optional for same table transfers.
/// 4. AddSourceFilter - Adds a filter for the source table for the data transfer.
/// 5. CopyFields() - Copies the fields specified in AddFields with filters from AddSourceFilter, and the join conditions from AddJoins in one bulk operation in SQL.
/// 6. CopyRows() - Copies the rows from the source table to the destination table with the fields selected with AddFields and the filters applied with AddSourceFilter, in one bulk operation in SQL.
/// 7. SetTables(Integer, Integer)	- Sets the source and destination tables for the data transfer.
/// 8. UpdateAuditFields([Boolean]) - Sets if audit fields should be updated. If the value is set to false, the audit fields are not updated when calling the CopyFields method. Default value is true. This method is supported only in Business Central on-premises.
/// </summary>

codeunit 50618 "KNH_DataTransfer"
{
    /*
    trigger OnRun()
    begin
        CopyFields();
    end;

    //In this example, you have two tables, Source and Destination. You're planning on obsoleting Description field in the Source Code table. But before you do, you want to copy some values of it into the Description field of the Source table. Specifically, you only want to copy the Description field in rows where the Code field contains an A.

    

    local procedure CopyFields()
    var
        dt: DataTransfer;
        dest: Record "KNH Source";
        src: Record "Source Code";
    begin
        dt.SetTables(Database::"Source Code", Database::"KNH Source");
        dt.AddFieldValue(src.FieldNo("Description"), dest.FieldNo("Description"));
        dt.AddSourceFilter(src.FieldNo("Description"), '*%1*', 'A');
        dt.AddJoin(src.FieldNo("PK"), dest.FieldNo("PK"));
        dt.CopyFields();
    end;

    //In this code example, you copy the PK and S3 fields in the Source table for all rows where S2 equals A and add them as new rows in the Destination table. You use AddConstantValue method to give the field D2 the value X in the inserted rows.

    local procedure CopyRows()
    var
        dt: DataTransfer;
        src: Record Source;
        dest : Record Destination;
    begin
        dt.SetTables(Database::Source, Database::Destination);
        dt.AddFieldValue(src.FieldNo("PK"), dest.FieldNo("PK"));
        dt.AddFieldValue(src.FieldNo("S3"), dest.FieldNo("D3"));
        dt.AddConstantValue('X', dest.FieldNo(D2));
        dt.AddSourceFilter(src.FieldNo("S2"), '=%1', 'A');
        dt.CopyRows();
end;
    */
}