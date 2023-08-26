/// <summary>
/// Page KNH SourceLines (ID 50603).
/// </summary>
page 50603 "KNH_SourceLines"
{
    ApplicationArea = All;
    Caption = 'Source Lines';
    PageType = List;
    SourceTable = KNH_SourceLine;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }
    }
}
