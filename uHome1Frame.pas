unit uHome1Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, ALFmxLayouts,
  ALFmxObjects, ALFmxEdit;

type
  TFrameHome1 = class(TFrame)
    Text1: TText;
    ALVertScrollBox1: TALVertScrollBox;
    ALEdit1: TALEdit;
    ALEdit2: TALEdit;
    ALEdit3: TALEdit;
    ALEdit4: TALEdit;
    ALEdit5: TALEdit;
    ALEdit6: TALEdit;
    ALEdit7: TALEdit;
    ALEdit8: TALEdit;
    ALEdit9: TALEdit;
    ALEdit10: TALEdit;
    ALEdit11: TALEdit;
    ALEdit12: TALEdit;
    ALEdit13: TALEdit;
    ALEdit14: TALEdit;
    ALEdit15: TALEdit;
    ALEdit16: TALEdit;
    ALEdit17: TALEdit;
    ALEdit18: TALEdit;
    ALEdit19: TALEdit;
    ALEdit20: TALEdit;
    ALEdit21: TALEdit;
    ALRectangle1: TALRectangle;
    Text2: TText;
    procedure ALRectangle1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ALRectangle1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrameHome1.ALRectangle1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  ALRectangle1.shadow.enabled := True;
end;

procedure TFrameHome1.ALRectangle1MouseLeave(Sender: TObject);
begin
  ALRectangle1.shadow.enabled := False;
end;

end.
