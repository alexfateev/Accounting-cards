unit form_doc_edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzButton,
  Data.DB, DBAccess, Uni, RzDBSpin, Vcl.ComCtrls, RzDTP, RzDBDTP, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzDBEdit, RzCmboBx, RzDBCmbo, RzLabel;

type
  TfmDocEdit = class(TForm)
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBSpinEdit1: TRzDBSpinEdit;
    UniDataSource1: TUniDataSource;
    RzDBComboBox2: TRzDBComboBox;
    RzDBComboBox1: TRzDBComboBox;
    procedure fill;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzDBComboBox1Change(Sender: TObject);
    procedure RzDBComboBox2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDocEdit: TfmDocEdit;

implementation

{$R *.dfm}

uses form_card_edit, form_main;

procedure TfmDocEdit.fill;
var
  query: TUniQuery;
begin
  RzDBComboBox1.Items.Clear;
  RzDBComboBox2.Items.Clear;
  query := TUniQuery.Create(nil);
  query.Connection := fmMain.DBConnection;
  query.SQL.text := 'SELECT * FROM t_abonement ORDER BY abon_number';
  query.Execute;
  while not query.Eof  do
    begin
      RzDBComboBox2.AddItemValue(query.FieldByName('abon_name').AsString,query.FieldByName('abon_id').AsString);
      RzDBComboBox1.AddItemValue(query.FieldByName('abon_number').AsString,query.FieldByName('abon_id').AsString);
      query.Next;
    end;
  query.Free;
end;

procedure TfmDocEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmDocEdit.RzButton1Click(Sender: TObject);
begin
  UniDataSource1.DataSet.Post;
  UniDataSource1.DataSet.Refresh;
end;

procedure TfmDocEdit.RzButton2Click(Sender: TObject);
begin
  UniDataSource1.DataSet.Cancel;
end;

procedure TfmDocEdit.RzDBComboBox1Change(Sender: TObject);
begin
  RzDBComboBox2.ItemIndex := RzDBComboBox1.ItemIndex;
end;

procedure TfmDocEdit.RzDBComboBox2Change(Sender: TObject);
begin
  RzDBComboBox1.ItemIndex := RzDBComboBox2.ItemIndex;
end;

end.
