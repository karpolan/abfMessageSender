unit formMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, abfControls, abfEdits;

type

//==============================================================================
// TfrmMain
//==============================================================================
// Main form

  TfrmMain = class(TForm)
    btnSend: TButton;
    btnPost: TButton;
    grpInput: TGroupBox;
    edHandle: TabfIntegerEdit;
    chbHandle: TCheckBox;
    lbHandle: TLabel;
    lbMessage: TLabel;
    edMessage: TabfIntegerEdit;
    chbMessage: TCheckBox;
    lbWParam: TLabel;
    edWParam: TabfIntegerEdit;
    chbWParam: TCheckBox;
    lbLParam: TLabel;
    edLParam: TabfIntegerEdit;
    chbLParam: TCheckBox;
    grpResult: TGroupBox;
    lbResult: TLabel;
    edResult: TabfIntegerEdit;
    chbResult: TCheckBox;
    procedure chbClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

{******************************************************************************}
implementation
{******************************************************************************}
{$R *.dfm}

//==============================================================================
// TfrmMain
//==============================================================================
// Main form
{ TfrmMain }

procedure TfrmMain.chbClick(Sender: TObject);
const
  cFormats: array[Boolean] of TabfNumberFormat = (nfDec, nfHex);
  cDigits: array[Boolean] of Integer = (0, 8);
var
  C: TComponent;
begin
  C := FindComponent('ed' + Copy(TComponent(Sender).Name, 4, MaxInt));
  if not Assigned(C) then Exit;

  TabfIntegerEdit(C).NumberFormat := cFormats[TCheckBox(Sender).Checked];
  TabfIntegerEdit(C).Digits       := cDigits[TCheckBox(Sender).Checked];
end;

//------------------------------------------------------------------------------

procedure TfrmMain.btnSendClick(Sender: TObject);
var
  HWnd: THandle;
begin
  HWnd := edHandle.Value;
  if HWnd = 0 then HWnd := HWND_BROADCAST;

  edResult.Value := SendMessage(HWnd, edMessage.Value, edWParam.Value,
    edLParam.Value);
end;

//------------------------------------------------------------------------------

procedure TfrmMain.btnPostClick(Sender: TObject);
var
  HWnd: THandle;
begin
  HWnd := edHandle.Value;
  if HWnd = 0 then HWnd := HWND_BROADCAST;

  edResult.Value := 0;
  PostMessage(HWnd, edMessage.Value, edWParam.Value, edLParam.Value);
end;

//------------------------------------------------------------------------------

end{unit formMain}.
