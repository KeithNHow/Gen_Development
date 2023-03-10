/// <summary>
/// Page KNH_Notes List (ID 50601).
/// </summary>
page 50601 "KNH_Notes"
{
    ApplicationArea = All;
    Caption = 'Notes List';
    PageType = List;
    SourceTable = "KNH_Note";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Link ID"; Rec."Link ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Link ID field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(Note; Rec.Note)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Note field.';
                }
                field(Created; Rec.Created)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User ID field.';
                }
            }
        }
    }
}
