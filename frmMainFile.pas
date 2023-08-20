unit frmMainFile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,
  RTTI,
  Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Bde.DBTables;

type
  TForm1 = class(TForm)
    btnGetTypeNames: TButton;
    editFormPosition: TEdit;
    editFormBidiMode: TEdit;
    editWindowState: TEdit;
    editDragKind: TEdit;
    Table1: TTable;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    editCar: TEdit;
    editTableState: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    rgCars: TRadioGroup;
    procedure btnGetTypeNamesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure rgCarsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  Table1.Open;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Table1.Close;
end;

procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  editTableState.Text := TRttiEnumerationType.GetName(Table1.State);
end;

procedure TForm1.btnGetTypeNamesClick(Sender: TObject);
begin
  editFormPosition.Text := TRttiEnumerationType.GetName(Self.Position);
  editFormBidiMode.Text := TRttiEnumerationType.GetName(Self.BiDiMode);
  editWindowState.Text  := TRttiEnumerationType.GetName(Self.WindowState);
  editDragKind.Text     := TRttiEnumerationType.GetName(Self.DragKind);
end;

procedure TForm1.rgCarsClick(Sender: TObject);
type
  TCar = (carVolvo, carMercedes, carToyota, carNissan);
var
  Car : TCar;
begin
  case rgCars.ItemIndex of
  0: Car := carVolvo;
  1: Car := carMercedes;
  2: Car := carToyota;
  3: Car := carNissan;
  end;

  editCar.Text := TRttiEnumerationType.GetName(Car);
end;

end.
