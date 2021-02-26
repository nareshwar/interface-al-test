codeunit 50140 "Azure Test"
{
    procedure AzureTest()
    var
        Client: HttpClient;
        Content: HttpContent;
        ResponseMessage: HttpResponseMessage;
        Stream: InStream;
        Url: Text;
        ResponseText: Text;
    begin
        Url := 'hhttps://test101sqs.azurewebsites.net/api/Test101Sqs?code=yCz7bsJ5szaNhRbk1DA0JWA5477fau0IKAN1WDmBaDza7/UpVBz5ww==';

        if not client.Post(Url, Content, ResponseMessage) then
            exit;

        //if not ResponseMessage.IsSuccessStatusCode() then
        //    exit;
        ResponseMessage.Content().ReadAs(ResponseText);
        Message(ResponseText);
    end;
}