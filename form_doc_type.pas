unit form_doc_type;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzButton, Vcl.ExtCtrls, RzPanel, Data.DB, DBAccess, Uni, MemDS;

type
  TfmDocType = class(TForm)
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
    RzPanel1: TRzPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure UniDataSource1DataChange(Sender: TObject; Field: TField);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDocType: TfmDocType;

implementation

{$R *.dfm}

uses form_main, form_doc_type_edit;

procedure TfmDocType.FormCreate(Sender: TObject);
begin
  try
    UniTable1.Active := true;
  except
    on E: Exception do
      Application.MessageBox(PWideChar(e.Message),PWideChar(e.ClassName),MB_ICONERROR);
  end;
end;

procedure TfmDocType.RzToolButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Удалить запись?','Подтверждение',MB_ICONQUESTION+MB_YESNO) = ID_YES then
    UniTable1.Delete;
  UniTable1.Refresh;
end;

procedure TfmDocType.RzToolButton2Click(Sender: TObject);
begin
  UniTable1.Edit;
  fmDocTypeEdit.ShowModal;
end;

procedure TfmDocType.RzToolButton3Click(Sender: TObject);
begin
  UniTable1.Append;
  fmDocTypeEdit.ShowModal;
end;

procedure TfmDocType.UniDataSource1DataChange(Sender: TObject; Field: TField);
begin
  if UniTable1.RecordCount = 0 then
    begin
      RzToolButton1.Enabled := false;
      RzToolButton2.Enabled := false;
    end else begin
      RzToolButton1.Enabled := true;
      RzToolButton2.Enabled := true;
    end;

end;

end.
