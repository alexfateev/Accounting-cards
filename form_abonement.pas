unit form_abonement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, RzButton, Data.DB, DBAccess, Uni, MemDS,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, RzPanel;

type
  TfmAbonement = class(TForm)
    RzPanel1: TRzPanel;
    DBGridEh1: TDBGridEh;
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    procedure FormCreate(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure UniDataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAbonement: TfmAbonement;

implementation

{$R *.dfm}

uses form_main, form_abonent_edit;

procedure TfmAbonement.FormCreate(Sender: TObject);
begin
  UniTable1.Active := true;
end;

procedure TfmAbonement.RzButton1Click(Sender: TObject);
begin
  UniTable1.Insert;
  fmAbonentEdit.ShowModal;
end;

procedure TfmAbonement.RzButton2Click(Sender: TObject);
begin
  UniTable1.Edit;
  fmAbonentEdit.ShowModal;
end;

procedure TfmAbonement.RzButton3Click(Sender: TObject);
begin
  if Application.MessageBox('Удалить запись?','Подтеврждение',MB_ICONQUESTION+MB_YESNO) = ID_Yes then
    try
      UniTable1.Delete;
      UniTable1.Refresh;
    except
      on E: Exception do
        Application.MessageBox(PWideChar(e.Message),PWideChar(e.ClassName),MB_ICONERROR);
    end;

end;

procedure TfmAbonement.UniDataSource1DataChange(Sender: TObject; Field: TField);
begin
  if UniTable1.RecordCount = 0 then
    begin
      RzToolButton2.Enabled := false;
      RzToolButton3.Enabled := false;
    end else begin
      RzToolButton2.Enabled := true;
      RzToolButton3.Enabled := true;
    end;

end;

end.
