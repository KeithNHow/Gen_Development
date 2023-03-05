/// <summary>
/// Page KNH_API (ID 50602).
/// </summary>
page 50602 "KNH_API"
{
    Caption = 'KNH API';
    PageType = Card;
    SourceTable = "KNH_API";
    ApplicationArea = ALL;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Id; Rec.Id)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Id field.';
                }
            }
        }
    }
}
