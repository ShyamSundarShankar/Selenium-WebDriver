Attribute VB_Name = "Module1"
Sub BrowsingHistory()

'Getting Input Values
StartDate = InputBox("Enter the Start Date in MM/DD/YY format from which History to be Scrapped", "Chrome History Scrapper")
EndDate = InputBox("Enter the End Date in MM/DD/YY format from which History to be Scrapped", "Chrome History Scrapper")

'Creating Output Sheet
Sheets.Add After:=Sheets("Index"): ActiveSheet.Name = "ChromeHistory"

'Initiating Driver
Dim Driver As New ChromeDriver

'Accessing Site/URL Path
Driver.Get "https://www.google.co.in"
Driver.Wait (1000)

Driver.FindElementByClass("gb_ve gb_Aa gb_Fb").Click



End Sub
