object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Convert Type To String'
  ClientHeight = 661
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 27
    Top = 79
    Width = 95
    Height = 23
    Caption = 'Table State'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 27
    Top = 179
    Width = 63
    Height = 23
    Caption = 'Position'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 27
    Top = 216
    Width = 76
    Height = 23
    Caption = 'BidiMode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 27
    Top = 253
    Width = 110
    Height = 23
    Caption = 'WindowState'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 27
    Top = 290
    Width = 78
    Height = 23
    Caption = 'DragKind'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnGetTypeNames: TButton
    Left = 27
    Top = 120
    Width = 270
    Height = 49
    Caption = 'Get Type Names'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnGetTypeNamesClick
  end
  object editFormPosition: TEdit
    Left = 145
    Top = 175
    Width = 152
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object editFormBidiMode: TEdit
    Left = 145
    Top = 212
    Width = 152
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object editWindowState: TEdit
    Left = 145
    Top = 249
    Width = 152
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object editDragKind: TEdit
    Left = 145
    Top = 286
    Width = 152
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 27
    Top = 24
    Width = 270
    Height = 33
    DataSource = DataSource1
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object editCar: TEdit
    Left = 218
    Top = 355
    Width = 152
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object editTableState: TEdit
    Left = 145
    Top = 76
    Width = 152
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object rgCars: TRadioGroup
    Left = 27
    Top = 339
    Width = 185
    Height = 142
    Caption = 'Select Car'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Volvo'
      'Mercedes'
      'Toyota'
      'Nissan')
    ParentFont = False
    TabOrder = 7
    OnClick = rgCarsClick
  end
  object Table1: TTable
    DatabaseName = 'UMCLocalTemp'
    TableName = 'Accounts.DB'
    Left = 80
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 128
  end
end
