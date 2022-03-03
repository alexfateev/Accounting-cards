program std_card;

uses
  Vcl.Forms,
  form_main in 'form_main.pas' {fmMain},
  form_abonement in 'form_abonement.pas' {fmAbonement},
  form_abonent_edit in 'form_abonent_edit.pas' {fmAbonentEdit},
  form_doc_type in 'form_doc_type.pas' {fmDocType},
  form_doc_type_edit in 'form_doc_type_edit.pas' {fmDocTypeEdit},
  form_card_edit in 'form_card_edit.pas' {fmCardEdit},
  form_doc_edit in 'form_doc_edit.pas' {fmDocEdit},
  form_issued_doc in 'form_issued_doc.pas' {fmIssuedDoc},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Учет карточек';
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmAbonement, fmAbonement);
  Application.CreateForm(TfmAbonentEdit, fmAbonentEdit);
  Application.CreateForm(TfmDocType, fmDocType);
  Application.CreateForm(TfmDocTypeEdit, fmDocTypeEdit);
  Application.CreateForm(TfmIssuedDoc, fmIssuedDoc);
  Application.CreateForm(TfmCardEdit, fmCardEdit);
  Application.Run;
end.
