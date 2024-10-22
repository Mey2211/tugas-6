unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormTranslasi }

  TFormTranslasi = class(TForm)
    ButtonHorizontal: TButton;
    ButtonVertikal: TButton;
    ButtonDiagonal: TButton;
    ButtonHapus: TButton;
    EditX: TEdit;
    EditY: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure ButtonDiagonalClick(Sender: TObject);
    procedure ButtonHorizontalClick(Sender: TObject);
    procedure ButtonVertikalClick(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
  private
    x1, y1, x2, y2: Integer;
    geserX, geserY: Integer;
  public

  end;

var
  FormTranslasi: TFormTranslasi;

implementation

{$R *.lfm}

{ TFormTranslasi }

procedure TFormTranslasi.FormPaint(Sender: TObject);
begin
  // Inisialisasi posisi dan ukuran persegi panjang
  x1 := 10;
  y1 := 10;
  x2 := 100;
  y2 := 50;
  // Gambar persegi panjang di posisi awal
  Canvas.Rectangle(x1, y1, x1 + x2, y1 + y2);
end;

procedure TFormTranslasi.FormPaint(Sender: TObject);
begin
x1 := 10;
y1 := 10;
x2 := 100;
y2 := 50;
Canvas.Rectangle(x1, y1, x1+x2, y1+y2);
end;
procedure TFormTranslasi.ButtonHorizontalClick(Sender: TObject);
const ges = 0;
begin
geserX := strToInt(EditX.Text);
GeserY := ges;
x1 := x1 + geserX;
y1 := y1 + gesery;
Canvas.Rectangle(x1 + y1, y1, x1 + x2, y1 + y2);
end;
procedure TFormTranslasi.ButtonVertikalClick(Sender: TObject);
const x = 0;
begin
geserX := X;
GeserY := StrToInt(EditY.Text);
x1 := x1 + geserX;
y1 := y1 + gesery;
Canvas.Rectangle(x1, y1, x1 + x2, y1 + y2);
end;
procedure TFormTranslasi.ButtonDiagonalClick(Sender: TObject);
var i : integer;
begin
for i := 1 to 5 do
begin
cascade;
geserX := strToInt(EditX.Text);
gesery := StrToInt(EditY.Text);
X1 := X1 + geserX;
Y1 := Y1 + geserY;
Canvas.Rectangle(X1, y1, x1+x2, y1+y2);
Canvas.Font.size := 20;
Canvas.Font.Name := 'Arial';
Canvas.Font.Style := [fsBold];
Canvas.TextOut(x1+43, y1+13, IntToStr(i));
Sleep(1000);
end;
end;
procedure TFormTranslasi.ButtonHapusClick(Sender: TObject);
begin
Invalidate;
EditX.Text := '0';
EditY.Text := '0';
end;
end.
