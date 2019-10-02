//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Notatnik.h"
#include "Unit2.h"
#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

AnsiString  File_Name="";
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Open1Click(TObject *Sender)
{
        if (OpenDialog1->Execute())
        {
        try{
             content->Lines->LoadFromFile(OpenDialog1->FileName);
             File_Name = OpenDialog1->FileName;
           }
           catch(...)
           {
              ShowMessage("Make sure the file exists!!");
           }

        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SaveAs1Click(TObject *Sender)
{
        if (SaveDialog1->Execute())
        {
        try{
             content->Lines->SaveToFile(SaveDialog1->FileName);
             File_Name = SaveDialog1->FileName;
           }
           catch(...)
           {
              ShowMessage("Unable to write");
           }

        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Save1Click(TObject *Sender)
{
        if (File_Name!="")
        {
                content->Lines->SaveToFile(SaveDialog1->FileName);
        }
        else
        {
                Form1->SaveAs1Click(MainMenu1);
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::New1Click(TObject *Sender)
{
        if(Application->MessageBox("Create a new file?", "Confirm", MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES)
        {
                content->Lines->Clear();
                File_Name="";
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::contentKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if (Shift.Contains(ssCtrl))
        {
                if ((Key == 's') || (Key == 'S'))
                {
                      Form1->Save1Click(MainMenu1);
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Quit1Click(TObject *Sender)
{
        if(Application->MessageBox("Close the program?", "Confirm", MB_YESNO | MB_ICONQUESTION) == IDYES)
        {
                Application->Terminate();
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
        if(Application->MessageBox("Close the program?", "Confirm", MB_YESNO | MB_ICONQUESTION) == IDNO)
        {
                Action=caNone;
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::CUT1Click(TObject *Sender)
{
        content->CutToClipboard();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::CopyCtrlC1Click(TObject *Sender)
{
        content->CopyToClipboard();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::PasteCtrlV1Click(TObject *Sender)
{
        content->PasteFromClipboard();        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Wrappingpoems1Click(TObject *Sender)
{
        if (Wrappingpoems1->Checked==true)
        {
                Wrappingpoems1->Checked=false;
                content->WordWrap=false;
                content->ScrollBars = ssBoth;
        }
        else
        {
                Wrappingpoems1->Checked=true;
                content->WordWrap=true;
                content->ScrollBars = ssVertical;
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Font1Click(TObject *Sender)
{
    if (FontDialog1->Execute())
    {
     content->Font->Name = FontDialog1->Font->Name;
     content->Font->Color = FontDialog1->Font->Color;
     content->Font->Size = FontDialog1->Font->Size;
     content->Font->Style = FontDialog1->Font->Style;
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::AboutProgram1Click(TObject *Sender)
{
        Form2->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::AboutAuthor1Click(TObject *Sender)
{
        Form3->ShowModal();
}
//---------------------------------------------------------------------------
