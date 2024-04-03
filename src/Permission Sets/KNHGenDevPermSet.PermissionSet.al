/// <summary>
/// PermissionSet KNH Gen Dev PermSet (ID 50601).
/// </summary>
permissionset 50601 "KNH_GenDevPermSet"
{
    Assignable = true;
    Caption = 'Gen Dev PermSet', MaxLength = 30;
    Permissions =
        table KNH_SourceLine = X,
        tabledata KNH_SourceLine = RMID,
        table KNH_Source = X,
        tabledata KNH_Source = RMID,
        table KNH_Note = X,
        tabledata KNH_Note = RMID,
        table KNH_ErrorLog = X,
        tabledata KNH_ErrorLog = RMID,
        codeunit KNH_ConditionalSelection = X,
        codeunit KNH_ConvertBlob = X,
        codeunit KNH_Dictionary = X,
        codeunit KNH_DataTransfer = X,
        codeunit KNH_CopyTest = X,
        codeunit KNH_Letters = X,
        codeunit KNH_FieldTransfer = X,
        codeunit KNH_ErrorHandling = X,
        codeunit KNH_VariantTest = X,
        codeunit KNH_TransferFields = X,
        codeunit KNH_TableFilters = X,
        codeunit KNH_Streaming = X,
        codeunit KNH_Rename = X,
        codeunit KNH_RecordRef = X,
        codeunit KNH_PreprocessorDirectives = X,
        codeunit KNH_Overloads = X,
        codeunit KNH_LoopVariations = X,
        codeunit KNH_Selection = X,
        codeunit KNH_SystemFunctions = X,
        codeunit KNH_List = X,
        codeunit KNH_ChangeCompany = X,
        codeunit KNH_SendEmail = X,
        codeunit KNH_ErrorLog = X,
        page KNH_Sources = X,
        page KNH_SourceLines = X,
        page KNH_Notes = X;
}
