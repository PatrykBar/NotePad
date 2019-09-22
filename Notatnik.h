//---------------------------------------------------------------------------

#ifndef NotatnikH
#define NotatnikH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Menus.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TMainMenu *MainMenu1;
        TMenuItem *File1;
        TMenuItem *New1;
        TMenuItem *Open1;
        TMenuItem *N3;
        TMenuItem *Save1;
        TMenuItem *SaveAs1;
        TMenuItem *N1;
        TMenuItem *PageSettings1;
        TMenuItem *Print1;
        TMenuItem *N2;
        TMenuItem *Quit1;
        TMenuItem *Edit1;
        TMenuItem *CUT1;
        TMenuItem *CopyCtrlC1;
        TMenuItem *PasteCtrlV1;
        TMenuItem *Format1;
        TMenuItem *Wrappingpoems1;
        TMenuItem *Font1;
        TMenuItem *View1;
        TMenuItem *Help1;
        TMenuItem *Information1;
        TMenuItem *AboutProgram1;
        TMenuItem *AboutAuthor1;
        TOpenDialog *OpenDialog1;
        TMemo *content;
        TSaveDialog *SaveDialog1;
        TFontDialog *FontDialog1;
        void __fastcall Open1Click(TObject *Sender);
        void __fastcall SaveAs1Click(TObject *Sender);
        void __fastcall Save1Click(TObject *Sender);
        void __fastcall New1Click(TObject *Sender);
        void __fastcall contentKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall Quit1Click(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall CUT1Click(TObject *Sender);
        void __fastcall CopyCtrlC1Click(TObject *Sender);
        void __fastcall PasteCtrlV1Click(TObject *Sender);
        void __fastcall Wrappingpoems1Click(TObject *Sender);
        void __fastcall Font1Click(TObject *Sender);
        void __fastcall AboutProgram1Click(TObject *Sender);
        void __fastcall AboutAuthor1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
