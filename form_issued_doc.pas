unit form_issued_doc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.Mask,
  RzEdit, Vcl.ExtCtrls, RzPanel, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzButton, Data.DB, DBAccess, Uni, MemDS, RzLabel;

type
  TfmIssuedDoc = class(TForm)
    RzPanel1: TRzPanel;
    RzEdit1: TRzEdit;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzToolButton1: TRzToolButton;
    DBGridEh1: TDBGridEh;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzComboBox3: TRzComboBox;
    procedure fill;
    procedure FormCreate(Sender: TObject);
    procedure RzComboBox1Change(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzComboBox3Select(Sender: TObject);
    procedure RzComboBox1Select(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmIssuedDoc: TfmIssuedDoc;

implementation

{$R *.dfm}

uses form_main, form_card_edit;

procedure TfmIssuedDoc.DBGridEh1DblClick(Sender: TObject);
var
  form : TfmCardEdit;
begin
  if UniQuery1.RecNo = 0 then Exit;
  if not fmMain.DBConnection.InTransaction then
    fmMain.DBConnection.StartTransaction;
  form := TfmCardEdit.Create(nil);
  form.UniQuery1.Locate('card_id',UniQuery1.FieldByName('card_id').AsInteger,[]);
  form.UniQuery1.Edit;
  form.ShowModal;
  UniQuery1.Refresh;
end;

procedure TfmIssuedDoc.fill;
var
  q: TUniQuery;
begin
  RzComboBox1.Items.Clear;
  RzComboBox2.Items.Clear;
  RzComboBox3.Items.Clear;
  q := TUniQuery.Create(nil);
  q.Connection := fmMain.DBConnection;
  q.SQL.Text := 'SELECT * FROM t_abonement ORDER BY abon_name';
  q.Execute;
  while not q.Eof do
    begin
      RzComboBox1.AddItemValue(q.FieldByName('abon_name').AsString,q.FieldByName('abon_id').AsString);
      RzComboBox3.AddItemValue(q.FieldByName('abon_number').AsString,q.FieldByName('abon_id').AsString);
      q.Next;
    end;
  q.SQL.Text := 'SELECT * FROM t_type ORDER BY type_name';
  q.Execute;
  while not q.Eof do
    begin
      RzComboBox2.AddItemValue(q.FieldByName('type_name').AsString,q.FieldByName('type_id').AsString);
      q.Next;
    end;
  q.Free;
end;

procedure TfmIssuedDoc.FormCreate(Sender: TObject);
begin
  UniQuery1.Open;
end;

procedure TfmIssuedDoc.FormShow(Sender: TObject);
begin
  RzToolButton1Click(RzToolButton1);
end;

procedure TfmIssuedDoc.RzComboBox1Change(Sender: TObject);
var
  abon, typedoc, find: string;
  filter: string;
begin
  if length(Trim(RzComboBox1.Text)) = 0 then
    abon := '' else
      abon := '(abon_id = '+RzComboBox1.Value+') and ';
//  if length(Trim(RzComboBox2.Text)) = 0 then
//    typedoc := '' else
//      typedoc := '(typedoc = '+RzComboBox2.Value+') and ';
  if length(Trim(RzEdit1.Text)) = 0 then
    find := '' else
      find := '(card_number like ''%'+Trim(RzEdit1.Text)+'%'' or ' +
        'card_name like ''%'+ Trim(RzEdit1.Text) +'%'' or ' +
        'card_sign like ''%'+ Trim(RzEdit1.Text) +'%'' or ' +
        'abon_name like ''%'+ Trim(RzEdit1.Text) +'%'' or ' +
        'abon_number = '''+ Trim(RzEdit1.Text)+'''' +')';
//  filter := abon + typedoc + find;
  filter := abon + typedoc + find;

  if Copy(filter,Length(filter)-4,5)= ' and ' then
    delete(filter,Length(filter)-4,5);

  UniQuery1.Filter := filter;
  UniQuery1.Filtered := true;

end;

procedure TfmIssuedDoc.RzComboBox1Select(Sender: TObject);
begin
  RzComboBox3.ItemIndex := RzComboBox1.ItemIndex;
  RzComboBox1Change(RzComboBox1);
end;

procedure TfmIssuedDoc.RzComboBox3Select(Sender: TObject);
begin
  RzComboBox1.ItemIndex := RzComboBox3.ItemIndex;
  RzComboBox1Change(RzComboBox1);
end;

procedure TfmIssuedDoc.RzToolButton1Click(Sender: TObject);
begin
  UniQuery1.Filtered := false;
  RzComboBox1.ItemIndex := -1;
  RzComboBox2.ItemIndex := -1;
  RzEdit1.Text := '';
end;

end.
