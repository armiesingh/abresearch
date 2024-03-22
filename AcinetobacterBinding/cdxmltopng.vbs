Dim app, doc, filesys, folder, files, file

' Create an instance of ChemDraw
Set app = CreateObject("ChemDraw.Application")

' Get the file system object
Set filesys = CreateObject("Scripting.FileSystemObject")

' Specify the folder containing CDXML files
Set folder = filesys.GetFolder("C:\Users\ZS135Bs\Desktop\ABResearch\abresearch\AcinetobacterBinding\newcompounds")

' Loop through each file in the folder
For Each file In folder.Files
    ' Check if the file is a CDXML file
    If LCase(filesys.GetExtensionName(file.Path)) = "cdxml" Then
        ' Open the CDXML file in ChemDraw
        Set doc = app.Documents.Open(file.Path)
        
        ' Export the document as a PNG file
        doc.SaveAs Replace(file.Path, ".cdxml", ".png"), "PNG"
        
        ' Close the document
        doc.Close False
    End If
Next

' Quit ChemDraw
app.Quit
