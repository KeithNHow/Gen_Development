/// <summary>
/// Unknown "GenDev_Perms" (ID 50000).
/// </summary>
permissionset 50600 "KNH _GenDev_Perms"
{
    Assignable = true;
    Caption = 'KNH General Dev', MaxLength = 30;
    Permissions =
        codeunit "KNH Variant Test" = X,
        codeunit "KNH Copy Test" = X,
        codeunit "KNH Conditional Selection" = X,
        codeunit "KNH Selection" = X,
        codeunit "KNH Overloads" = X,
        codeunit "KNH Loop Variations" = X,
        codeunit "KNH List" = X,
        codeunit "KNH Dictionary" = X,
        codeunit "KNH TransferFields" = X,
        codeunit "KNH System Functions" = X,
        codeunit "KNH Streaming" = X,
        codeunit "KNH RecordRef" = X,
        codeunit "KNH Letters" = X,
        codeunit "KNH Preprocessor Directives" = X,
        table "KNH Note" = X,
        tableData "KNH Note" = RIMD,
        page "KNH Notes" = X,
        table "KNH API" = X,
        tableData "KNH API" = RIMD;
}
