@echo off
for %%f in ("C:\Users\ZS135Bs\Desktop\ABResearch\abresearch\AcinetobacterBinding\newcompounds\*.pdbqt") do (
    echo Processing ligand %%f
    mkdir "C:\Users\ZS135Bs\Desktop\ABResearch\abresearch\AcinetobacterBinding\newcompounds\%%~nf"
    "C:\Users\ZS135Bs\Desktop\ABResearch\abresearch\AcinetobacterBinding\vina.exe" --config conf.txt --ligand "%%f" --out "C:\Users\ZS135Bs\Desktop\Chem 312\Input\%%~nf\out.pdbqt" --log "C:\Users\ZS135Bs\Desktop\ABResearch\abresearch\AcinetobacterBinding\newcompounds\%%~nf\log.txt"
)
