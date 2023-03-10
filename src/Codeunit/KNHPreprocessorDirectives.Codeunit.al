/// <summary>
/// Codeunit "KNH PreprocessorDirectives" (ID 50613)
/// preprocessor directives can be used to make code conditional
/// compiler directive - read only if debugger in use
/// region directive - used to define a block of code
/// pragma directive - gives the compiler special inst for the compile of the file in which it appears. 
/// 
/// </summary>
codeunit 50613 "KNH_PreprocessorDirectives"
{
#if Debug //Compiler directive
    trigger OnRun()
    begin
    #region - Region directive
        Message('Only in debug versions');
    #endregion
    end;
#endif
}
