unit form_card_edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, RzPanel, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls, RzCmboBx, RzDBCmbo, RzLabel,
  Vcl.Mask, RzEdit, RzDBEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TfmCardEdit = class(TForm)
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    RzPanel2: TRzPanel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzDBComboBox1: TRzDBComboBox;
    RzDBEdit1: TRzDBEdit;
    RzLabel4: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzPanel3: TRzPanel;
    DBGridEh1: TDBGridEh;
    UniQuery2: TUniQuery;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    procedure fillType;
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure UniDataSource2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCardEdit: TfmCardEdit;

implementation

{$R *.dfm}

uses form_main, form_doc_edit;

procedure TfmCardEdit.fillType;
var
  query: TUniQuery;
begin
  RzDBComboBox1.Items.Clear;
  query := TUniQuery.Create(nil);
  query.Connection := fmMain.DBConnection;
  query.SQL.Text := 'SELECT * FROM t_type ORDER BY type_name';
  query.Open;
  while not query.Eof do
    begin
      RzDBComboBox1.AddItemValue(query.FieldByName('type_name').AsString,query.FieldByName('type_id').AsString);
      query.Next;
    end;
  query.Free;
end;

procedure TfmCardEdit.FormCreate(Sender: TObject);
begin
  fillType;
  UniQuery1.Open;
  UniQuery2.Open;
end;

procedure TfmCardEdit.RzButton1Click(Sender: TObject);
begin
  UniQuery1.Post;
  //UniQuery2.Post;
  //UniQuery1.Connection.Commit;
  fmMain.DBConnection.Commit;
  UniQuery1.Refresh;
  UniQuery2.Refresh;
end;

procedure TfmCardEdit.RzButton2Click(Sender: TObject);
begin
  UniQuery1.Cancel;
  UniQuery1.Connection.Rollback;
end;

procedure TfmCardEdit.RzToolButton1Click(Sender: TObject);
var
  form : TfmDocEdit;
begin
  form := TfmDocEdit.Create(nil);
  form.fill;
  form.UniDataSource1.DataSet := UniQuery2;
  //fmDocEdit.fill;
  UniQuery2.Insert;
  UniQuery2.FieldByName('doc_card_id').AsInteger := UniQuery1.FieldByName('card_id').AsInteger;
  UniQuery2.FieldByName('doc_date').AsDateTime := Now;
  form.ShowModal;
end;

procedure TfmCardEdit.RzToolButton2Click(Sender: TObject);
var
  form : TfmDocEdit;
begin
  form := TfmDocEdit.Create(nil);
  form.fill;
  UniQuery2.Edit;
  form.Showmodal;
end;

procedure TfmCardEdit.RzToolButton3Click(Sender: TObject);
begin
  if Application.MessageBox('Удалить запись?','Подтверждение',MB_ICONQUESTION+MB_YESNO) = ID_YES then
    UniQuery2.Delete;
end;

procedure TfmCardEdit.UniDataSource2DataChange(Sender: TObject; Field: TField);
begin
  if UniQuery2.RecordCount = 0 then
    begin
      RzToolButton2.Enabled :=false;
      RzToolButton3.Enabled :=false;
    end else begin
      RzToolButton2.Enabled :=true;
      RzToolButton3.Enabled :=true;
    end;

end;

end.
