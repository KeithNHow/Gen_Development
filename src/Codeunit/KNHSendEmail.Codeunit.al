/// <summary>
/// PageExtension CustomerListExt (ID 50602) extends Record Customer List.
/// </summary>
codeunit 50620 "KNH_SendEmail"
{
    trigger OnRun()
    var
        EmailMessage: Codeunit "Email Message";
        Email: Codeunit Email;
        Base64Convert: Codeunit "Base64 Convert";
        TempBlob: Codeunit "Temp Blob";
        MyInStream: Instream;
        MyOutStream: OutStream;
        Recipient: Text;
        Subject: Text;
        Body: Text;
        AttachmentName: Text[250];
        ContentType: Text[250];
        AttachmentBase64: Text;
    //ContentFile: File;
    begin
        Recipient := 'kn_how@hotmail.com';
        Subject := 'Test Email';
        Body := 'This email has been sent from Business Central.';
        AttachmentName := 'C:\Temp\Prices.txt';
        ContentType := 'TXT';
        TempBlob.CreateOutStream(MyOutStream);
        MyOutStream.Write('xxxyyyzzz');
        TempBlob.CreateInStream(MyInstream);
        AttachmentBase64 := Base64Convert.ToBase64(MyInstream);
        EmailMessage.Create(Recipient, Subject, Body);
        EmailMessage.AddAttachment(AttachmentName, ContentType, AttachmentBase64);
        //EmailMessage.AddAttachment(AttachmentName, ContentType, MyInstream);
        Email.Send(EmailMessage, "Email Scenario"::Default);
    end;
}
