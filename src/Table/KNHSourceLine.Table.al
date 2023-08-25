/// <summary>
/// Table "KNH Source Lines" (ID 50601).
/// </summary>
table 50601 "KNHSourceLine"
{
    Caption = 'KNHSourceLines';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
            DataClassification = CustomerContent;
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Code", "Source Code")
        {
            Clustered = true;
        }
    }
}
