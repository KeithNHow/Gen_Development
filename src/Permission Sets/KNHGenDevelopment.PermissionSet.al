/// <summary>
/// PermSet "KNH_GenDevelopment" (ID 50000).
/// </summary>
permissionset 50600 "KNH_GenDevelopment"
{
    Assignable = true;
    Caption = 'KNH General Dev', MaxLength = 30;
    Permissions =
        codeunit "KNH_VariantTest" = X,
        codeunit "KNH_CopyTest" = X,
        codeunit "KNH_ConditionalSelection" = X,
        codeunit "KNH_Selection" = X,
        codeunit "KNH_Overloads" = X,
        codeunit "KNH_LoopVariations" = X,
        codeunit "KNH_List" = X,
        codeunit "KNH_Dictionary" = X,
        codeunit "KNH_TransferFields" = X,
        codeunit "KNH_SystemFunctions" = X,
        codeunit "KNH_Streaming" = X,
        codeunit "KNH_RecordRef" = X,
        codeunit "KNH_Letters" = X,
        codeunit "KNH_PreprocessorDirectives" = X,
        table "KNH_Note" = X,
        tableData "KNH_Note" = RIMD,
        page "KNH_Notes" = X,
        table "KNH_API" = X,
        tableData "KNH_API" = RIMD,
        table "KNH_Source" = X,
        tableData "KNH_Source" = RIMD;
}
