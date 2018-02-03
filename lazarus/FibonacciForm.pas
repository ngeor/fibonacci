unit FibonacciForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
    btnCalculate: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    ListBox1: TListBox;
    procedure btnCalculateClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

{ Calculates the Fibonacci sequence }
function Fibonacci(n: Integer): Integer;
begin
  if n <= 1 then
    Fibonacci := n
  else
    Fibonacci := Fibonacci(n - 1) + Fibonacci(n - 2);
end;

procedure TMainForm.Label1Click(Sender: TObject);
begin

end;

procedure TMainForm.Edit1Change(Sender: TObject);
begin

end;

procedure TMainForm.btnCalculateClick(Sender: TObject);
var
  n: Integer;
  i: Integer;
begin
  n := StrToInt(Edit1.Text);
  ListBox1.Items.Clear;

  for i := 0 to n do
  begin
    ListBox1.Items.Add('Fibonacci of ' + IntToStr(i) + ' is ' + IntToStr(Fibonacci(i)));
  end;
end;

end.

