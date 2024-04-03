//Marking a record id used to find records and then refer to them at some later time in program execution. 
codeunit 50623 "KNH_MarkedCustomers"
{
    trigger OnRun()
    var
        Customer: Record Customer;
        No1: Integer;
        No2: Integer;
        Count1Msg: Label 'Number of records in Customer table: %1\', Comment = '%1 = Count';
        Count2Msg: Label 'Number of records MarkedOnly: %2', Comment = '%2 = Count';
    begin
        No1 := Customer.Count();
        Customer.SetCurrentKey(Customer."No.");
        if Customer.FindSet() then
            repeat
                if Customer."No." in ['1036', '1060'] then begin
                    Customer.Mark(true);
                    No1 += 1;
                end;
            until Customer.Next() = 0;
        Customer.MarkedOnly(true);
        if Customer.Findset() then
            repeat
                No2 += 1;
            until Customer.Next() = 0;
        Message(Count1Msg + Count2Msg, No1, No2);
    end;
}