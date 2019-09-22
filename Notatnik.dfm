object Form1: TForm1
  Left = 381
  Top = 232
  Width = 1305
  Height = 675
  Caption = 'Notebook'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object content: TMemo
    Left = 0
    Top = 0
    Width = 1289
    Height = 616
    Align = alClient
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyDown = contentKeyDown
  end
  object MainMenu1: TMainMenu
    Left = 320
    Top = 56
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = 'New'
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Caption = 'Open'
        OnClick = Open1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Save1: TMenuItem
        Caption = 'Save Ctrl+S'
        OnClick = Save1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As'
        OnClick = SaveAs1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object PageSettings1: TMenuItem
        Caption = 'Page Settings'
      end
      object Print1: TMenuItem
        Caption = 'Print'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Quit1: TMenuItem
        Caption = 'Quit'
        OnClick = Quit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      object CUT1: TMenuItem
        Caption = 'Cut Ctrl+X'
        OnClick = CUT1Click
      end
      object CopyCtrlC1: TMenuItem
        Caption = 'Copy Ctrl+C'
        OnClick = CopyCtrlC1Click
      end
      object PasteCtrlV1: TMenuItem
        Caption = 'Paste Ctrl+V'
        OnClick = PasteCtrlV1Click
      end
    end
    object Format1: TMenuItem
      Caption = 'F&ormat'
      object Wrappingpoems1: TMenuItem
        Caption = 'Wrapping poems'
        Checked = True
        OnClick = Wrappingpoems1Click
      end
      object Font1: TMenuItem
        Caption = 'Font'
        OnClick = Font1Click
      end
    end
    object View1: TMenuItem
      Caption = '&View'
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object Information1: TMenuItem
        Caption = '&Information'
        object AboutProgram1: TMenuItem
          Caption = 'About Program'
          OnClick = AboutProgram1Click
        end
        object AboutAuthor1: TMenuItem
          Caption = 'About Author'
          OnClick = AboutAuthor1Click
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Text files (txt)|*.txt|All files|*.*'
    Left = 320
    Top = 144
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Text file (.txt)|*.txt|All Files|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 360
    Top = 144
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 408
    Top = 144
  end
end
