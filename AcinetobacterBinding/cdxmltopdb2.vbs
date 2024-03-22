Dim app, doc, filesys, folder, files, file

' Create an instance of ChemDraw3D
Set app = CreateObject("Chem3D.Application")

' Get the file system object
Set filesys = CreateObject("Scripting.FileSystemObject")

' Specify the folder containing CDXML files
Set folder = filesys.GetFolder("C:\Users\ZS135Bs\Desktop\ABResearch\abresearch\AcinetobacterBinding\newcompounds")

' Loop through each file in the folder
For Each file In folder.Files
    ' Check if the file is a CDXML file
    If LCase(filesys.GetExtensionName(file.Path)) = "c3xml" Then
        ' Open the CDXML file in ChemDraw3D
        Set doc = app.Documents.Open(file.Path)
        
        ' Save the document as a PDB file
        doc.SaveAs Replace(file.Path, ".c3xml", ".pdb"), "PDB"
        
        ' Close the document
        doc.Close False
    End If
Next

' Quit ChemDraw3D
app.Quit