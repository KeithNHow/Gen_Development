/// <summary>
/// Codeunit "KNH System Functions" (ID 50609).
/// </summary>
codeunit 50609 "KNH_SystemFunctions"
{
    trigger OnRun()
    var
        selection: Integer;
        options: Text;
        functionTxt: Label 'DateFromDateTime,TimeFromDateTime,DWYtoDate,EncryptText,Substring,Trim,Replace,PadRight,InsertString,RandomizeNumber,RoundingNumber,Evaluation,FormatDateInteger,FormatDateText,FormatDateText2,CopyString,ShowMessage,StrPosition,StrLength,CalculateDate,CreateGUID,DateToDMY,MyError,MyLastError,ReplaceText,IncString,ThisModule,StringSubstNo,FindCustomer';
        selectionTxt: Label 'Choose one of the following options:';
    begin
        Options := functionTxt;
        selection := Dialog.StrMenu(Options, 1, selectionTxt);
        case selection of
            1:
                DatefromDateTime();
            2:
                TimefromDateTime();
            3:
                DWYtoDate();
            4:
                EncryptText();
            5:
                Substring();
            6:
                Trim();
            7:
                Replace();
            8:
                PadRight();
            9:
                InsertString();
            10:
                RandomizeNumber();
            11:
                RoundingNumber();
            12:
                Evaluation();
            13:
                FormatDateInteger();
            14:
                FormatDateText();
            15:
                FormatDateText2();
            16:
                CopyString();
            17:
                ShowMessage();
            18:
                StrPosition();
            19:
                StrLength();
            20:
                CalculateDate();
            21:
                CreateGUID();
            22:
                DateToDMY();
            23:
                MyError();
            24:
                MyLastError();
            25:
                ReplaceText();
            26:
                IncString();
            27:
                ThisModule();
            28:
                StringSubstNo();
            29:
                FindCustomer()
            else
                exit;
        end;
    end;

    #region
    //1
    local procedure DatefromDateTime()
    var
        myDate: Date;
        myDateTime: DateTime;
    begin
        myDateTime := CurrentDateTime;
        myDate := System.DT2Date(myDateTime);
        Message(Format(myDate));
    end;

    //2
    local procedure TimefromDateTime()
    var
        myTime: Time;
        myDateTime: DateTime;
    begin
        myDateTime := CurrentDateTime;
        myTime := System.DT2Time(myDateTime);
        Message(Format(myTime));
    end;

    //3
    local procedure DWYtoDate()
    var
        myDate: Date;
        day: Integer;
        week: Integer;
        year: Integer;
    begin
        day := 5; //permitted range 1 -7
        week := 23;
        year := 2023;
        myDate := System.DWY2Date(day, week, year);
        Message(Format(myDate));
    end;

    //4
    local procedure EncryptText()
    var
        myText: Text;
    begin
        myText := 'ABC123';
        myText := Encrypt(myText);
        Message('Value: ' + myText);
    end;

    #endregion

    #region
    //5
    local procedure SubString()
    var
        mySubstring: Text[50];
        myText: Text[50];
    begin
        myText := 'Here we go again. Another day in paradis.';
        mySubstring := myText.Substring(12, 5);
        Message(mySubstring);
    end;

    //6
    local procedure Trim()
    var
        myExtract: Text;
        myText: Text[100];
    begin
        myText := '    Here we go again. Another difficult day.    ';
        myExtract := myText.Trim();
        Message(myExtract);
    end;

    //7
    local procedure Replace()
    var
        oldText: Text;
        newText: Text;
        myText: Text;
    begin
        oldText := 'Merry Christmas';
        newText := 'Happy New Year';
        myText := myText.Replace(oldText, newText);
        Message(newText);
    end;

    //8
    local procedure PadRight()
    var
        Result: Text;
        myText: Text;
    begin
        Result := myText.PadRight(10, 'X');
        Message(Result);
    end;

    //9
    local procedure InsertString()
    var
        oldString: Text;
        mySubString: Text;
        newString: Text;
        Pos: Integer;
    begin
        oldString := 'Oh God';
        mySubString := 'My';
        Pos := 4;
        newString := Text.InsStr(oldString, mySubString, Pos);
        Message(newString);
    end;

    #endregion

    #region

    //10
    local procedure RandomizeNumber()
    var
        Number: Integer;
    begin
        //RANDOMIZE - Generates a set of random numbers from which the RANDOM Function (Integer) will select a random number
        Number := 100;
        Randomize(Number);
        //RANDOM - Returns a pseudo-random number
        Number := Random(Number);
        Message(Format(Number));
    end;

    //11
    local procedure RoundingNumber()
    var
        myNumber: Decimal;
    begin
        myNumber := Round(50.3468, 0.01, '<');
        Message(Format(myNumber)); //Ans = 50.34
        myNumber := Round(50.3468, 0.01, '>');
        Message(Format(myNumber)); //Ans = 50.35
        myNumber := Round(50.3468, 0.01);
        Message(Format(myNumber)); //Ans = 50.34    
    end;

    //12
    local procedure Evaluation()
    var
        myNumber: Integer;
        MyDate: Date;
    begin
        Evaluate(myNumber, '123456'); //Convert string to number
        Message('This is the life - ' + Format(myNumber)); //Convert back to string
        Evaluate(MyDate, '020622'); //Convertstring to date
        Message('The date is - ' + Format(MyDate)); //convert back to string
    end;

    //13
    local procedure FormatDateInteger()
    var
        myDate: Date;
        myTime: Time;
    begin
        myDate := 20220415D;
        myTime := 110540T;
        Message(Format(myDate, 0, 9));
        //2022-04-15
        Message(Format(myDate, 0, 9) + 'T' + FORMAT(myTime, 0, 9));
        //2022-04-15T11:05:40
    end;

    //14
    local procedure FormatDateText()
    var
        myDate: Date;

    begin
        myDate := WorkDate();
        Message(Format(myDate, 0, '<WeekDay Text> <Month Text> <Year4>'));
        //April 15 2022
    end;

    //15
    local procedure FormatDateText2()
    var
        myDate: Date;
    begin
        myDate := WorkDate();
        Message(Format(myDate, 0, '<Day>/<Month>/<Year4>'));
        //2022 04 Friday 15
    end;

    #endregion

    #region

    //16
    local procedure CopyString()
    var
        newString: Text;
    begin
        newString := COPYSTR('I am a very old man', 8, 4);
        Message(newString); //Copies characters 'very'
    end;

    //17
    local procedure ShowMessage()
    var
        ShowTxt: Label 'Code is running on a client.';
    begin
        if GuiAllowed then
            Message(ShowTxt);
    end;

    //18
    local procedure StrPosition()
    var
        Pos: Integer;
        myText: Text;
    begin
        myText := 'I am a very old man.';
        Pos := StrPos(MyText, 'v');
        Message(Format(Pos)); //Searches str for matching character.
    end;

    //19
    local procedure StrLength()
    var
        Len: Integer;
        myText: Text;
    begin
        myText := 'I am a very old man.';
        Len := StrLen(myText);
        Message(Format(Len)); //Len = 20
    end;

    #endregion

    #region

    //20
    local procedure CalculateDate()
    var
        MyDate: Date;
    begin
        MyDate := CalcDate('<1M+CM+1D>', Today()); //first of curr mth
        Message(Format(MyDate));
    end;

    //21
    local procedure CreateGUID()
    var
        myGuid: Guid;
    begin
        myGuid := System.CreateGuid();
        Message(Format(myGuid));
    end;

    //22
    local procedure DateToDMY()
    var
        inputDate: Date;
        day: Integer;
        month: Integer;
        year: Integer;
        myTxt: Label 'Today is day %1 of month %2 of the year %3.', Comment = '%1 = Day ; %2 = Week ; %3 = Year';
    begin
        inputDate := Today;
        day := Date2DMY(inputDate, 1);
        month := Date2DMY(inputDate, 2);
        year := Date2DMY(inputDate, 3);
        Message(myTxt, Day, Month, Year);
    end;

    //23
    local procedure MyError()
    begin
        Error('My codeunit does not work.');
    end;

    //24
    local procedure MyLastError()
    begin
        ClearLastError();
        Message('The last error was error code: ' + GetLastErrorCode() + ' error text ' + GetLastErrorText());
    end;

    //25
    local procedure ReplaceText()
    var
        Description: text[100];
    begin
        Description := 'my & my < my > my "     ';
        Description := CopyStr(Description.Replace('&', 'X'), 1, 100);
        Description := CopyStr(Description.Replace('<', 'X'), 1, 100);
        Description := CopyStr(Description.Replace('>', 'X'), 1, 100);
        Description := CopyStr(Description.Replace('"', 'X'), 1, 100);
        Description := CopyStr(Description.Replace(' ', ''), 1, 100);
        Message(Description);
        //Result = 'myXmyXmyXmyX';
    end;

    //26
    local procedure IncString()
    var
        MyString: Text;
    begin
        MyString := 'AB000100X';
        MyString := IncStr(MyString);
        Message(MyString);
    end;

    //27
    local procedure ThisModule()
    var
        MyModule: ModuleInfo;
    begin
        Message(Format(MyModule.Name()));
    end;

    //28
    local procedure StringSubStNo()
    var
        Str: Text[1024];
        AccountNo: Integer;
        Balance: Decimal;
        Text0Txt: Label 'The balance of account %1 is $ %2', Comment = '%1 = AcNo, %2 = Balance, %3 = Str';
        Text1Txt: Label 'The test string before StrSubstNo is called:\\%1', Comment = '%1 = Str';
        Text2Txt: Label 'The string after StrSubstNo is called:\\%1', Comment = '%1 = ';
    begin
        Str := Text0Txt;
        AccountNo := 3452;
        Balance := 2345 + 5462;
        Message(Text1Txt, Str);
        Str := StrSubStNo(Str, AccountNo, Balance);
        Message(Text2Txt, Str);
    end;

    //29
    local procedure FindCustomer()
    var
        Customer: Record Customer;
        FirstRecord: Code[20];
        LastRecord: Code[20];
        Counter: Integer;
        FindCustomerMsg: Label 'First customer record %1, Last customer record %2', Comment = '%1 = FirstRecord, %2 = Last Record';
    begin
        Counter := 0;
        if Customer.Find('+') then
            repeat
                if Counter = 0 then begin
                    FirstRecord := Customer."No.";
                    Counter := 1;
                end;
            until Customer.Next(-1) = 0;
        LastRecord := Customer."No.";
        Message(FindCustomerMsg, FirstRecord, LastRecord);
    end;

    #endregion
}
