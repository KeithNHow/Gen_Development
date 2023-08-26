/// <summary>
/// Codeunit KNH Rename (ID 50619).
/// </summary>
codeunit 50619 "KNH_Rename"
{
    TableNo = KNH_Source;

    trigger OnRun()
    var
        KNHSourceLine: Record KNH_SourceLine;
    begin
        Rec.Get('CODETWO');
        Rec.Rename('CODATWO');
        KNHSourceLine.SetRange("Source Code", 'CODETWO');
        if KNHSourceLine.FindSet(true, true) then
            repeat
                KNHSourceLine.Rename(KNHSourceLine.Code, 'CODATWO');
            until KNHSourceLine.Next() = 0;
    end;
}
