/// <summary>
/// Table KNH Source (ID 50602).
/// </summary>
table 50602 "KNH Source"
{
    Caption = 'KNH Source';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
