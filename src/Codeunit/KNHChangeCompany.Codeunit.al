/// <summary>
/// Codeunit "KNH_ChangeCompany" (ID 50622).
/// </summary>
codeunit 50622 KNH_ChangeCompany
{
    trigger OnRun()
    var
        Company: Record Company;
        Customer: Record Customer;
    begin
        if Company.FindSet() then
            repeat
                Company.ChangeCompany(Company.Name);
                if Customer.Findset(true, false) then
                    repeat
                        Customer."Name 2" := 'X';
                        Customer.Modify();
                    until Customer.Next() = 0;
            until Company.Next() = 0;
        Message('Update complete for all Companies');
    end;
}
