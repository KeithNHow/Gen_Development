/// <summary>
/// Page KNH Sources (ID 50602).
/// </summary>
page 50602 "KNH_Sources"
{
    ApplicationArea = All;
    Caption = 'Sources';
    PageType = List;
    SourceTable = "KNH_Source";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                    ToolTip = 'Specifies the code.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                    ToolTip = 'Specifies the Description';
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            group("&Source")
            {
                Caption = '&Source';
                Image = SourceDocLine;

                action(SourceLine)
                {
                    ApplicationArea = All;
                    Caption = 'Source Line';
                    Image = Line;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Source lines related to Source.';
                    RunObject = Page "KNH_SourceLines";
                    RunPageLink = "Source Code" = field(Code);
                }
            }
        }
    }
}
