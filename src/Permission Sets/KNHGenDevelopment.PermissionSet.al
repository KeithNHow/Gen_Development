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
        table "KNHNote" = X,
        table "KNHSource" = X,
        table "KNHSourceLine" = X,
        tableData "KNHNote" = RIMD,
        tableData "KNHSource" = RIMD,
        tableData "KNHSourceLine" = RIMD,
        page "KNH_Notes" = X;
}
