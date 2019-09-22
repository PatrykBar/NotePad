//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm3::Button1Click(TObject *Sender)
{
        if(Application->MessageBox("He is handsome?", "Confirm", MB_YESNO | MB_ICONQUESTION) == IDYES)
        {
                Form3->Close();
        }
        else
        {
                Application->Terminate();
        }

}
//---------------------------------------------------------------------------
 