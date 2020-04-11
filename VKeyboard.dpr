program VKeyboard;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  uHome1Frame in 'uHome1Frame.pas' {FrameHome1: TFrame},
  uHome2Frame in 'uHome2Frame.pas' {FrameHome2: TFrame},
  uHome3Frame in 'uHome3Frame.pas' {FrameHome3: TFrame},
  uHome4Frame in 'uHome4Frame.pas' {FrameHome4: TFrame},
  uHome5Frame in 'uHome5Frame.pas' {FrameHome5: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
