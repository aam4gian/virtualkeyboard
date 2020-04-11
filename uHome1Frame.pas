unit uHome1Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, ALFmxLayouts,
  ALFmxObjects, ALFmxEdit, ALCommon, ALFmxStdCtrls, System.Messaging, DW.VirtualKeyboard.Helpers;

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
    Rectangle1: TRectangle;
    ALTrackBar1: TALTrackBar;
    Layout1: TLayout;
    ALTrackBar2: TALTrackBar;
    Layout2: TLayout;
    procedure ALRectangle1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ALRectangle1MouseLeave(Sender: TObject);
    procedure ALVertScrollBox1ViewportPositionChange(Sender: TObject;
      const OldViewportPosition, NewViewportPosition: TPointF);
    procedure ALTrackBar1Tracking(Sender: TObject);
    procedure ALTrackBar2Tracking(Sender: TObject);
  private
    { Private declarations }
    FY: Single;
    FH: Single;
    FBoundHVK: Integer;
    FVKState: Boolean;
    procedure VKStateChangeMessageHandler(const Sender: TObject; const M: TMessage);
  public
    { Public declarations }
    procedure InitFrame;
    procedure ReleaseFrame;
    procedure SetYFocus(aY, aH: Single);
    procedure SetFVKBoundHeight(ABoundH: Integer);
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

procedure TFrameHome1.ALTrackBar1Tracking(Sender: TObject);
begin
  Layout1.Margins.Top := ALTrackBar1.Value;
  AlVertScrollBox1.AniCalculations.ViewportPosition :=
    TALPointD.Create(0,ALTrackBar1.Value);
end;

procedure TFrameHome1.ALTrackBar2Tracking(Sender: TObject);
begin
  Layout2.Margins.Top := ALTrackBar2.Value;
  AlVertScrollBox1.AniCalculations.ViewportPosition :=
    TALPointD.Create(0,-ALTrackBar2.Value);
end;

procedure TFrameHome1.ALVertScrollBox1ViewportPositionChange(Sender: TObject;
  const OldViewportPosition, NewViewportPosition: TPointF);
begin
  if ALEdit1.Position.Y < NewViewportPosition.Y then
    ALEdit1.RemoveNativeView
  else
  begin
    if (ALEdit1.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit1.Height) then
      ALEdit1.RemoveNativeView
    else ALEdit1.AddNativeView;
  end;

  if ALEdit2.Position.Y < NewViewportPosition.Y then
    ALEdit2.RemoveNativeView
  else
  begin
    if (ALEdit2.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit2.Height) then
      ALEdit2.RemoveNativeView
    else ALEdit2.AddNativeView;
  end;

  if ALEdit3.Position.Y < NewViewportPosition.Y then
    ALEdit3.RemoveNativeView
  else
  begin
    if (ALEdit3.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit3.Height) then
      ALEdit3.RemoveNativeView
    else ALEdit3.AddNativeView;
  end;

  if ALEdit4.Position.Y < NewViewportPosition.Y then
    ALEdit4.RemoveNativeView
  else
  begin
    if (ALEdit4.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit4.Height) then
      ALEdit4.RemoveNativeView
    else ALEdit4.AddNativeView;
  end;

  if ALEdit5.Position.Y < NewViewportPosition.Y then
    ALEdit5.RemoveNativeView
  else
  begin
    if (ALEdit5.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit5.Height) then
      ALEdit5.RemoveNativeView
    else ALEdit5.AddNativeView;
  end;

  if ALEdit6.Position.Y < NewViewportPosition.Y then
    ALEdit6.RemoveNativeView
  else
  begin
    if (ALEdit6.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit6.Height) then
      ALEdit6.RemoveNativeView
    else ALEdit6.AddNativeView;
  end;

  if ALEdit7.Position.Y < NewViewportPosition.Y then
    ALEdit7.RemoveNativeView
  else
  begin
    if (ALEdit7.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit7.Height) then
      ALEdit7.RemoveNativeView
    else ALEdit7.AddNativeView;
  end;

  if ALEdit8.Position.Y < NewViewportPosition.Y then
    ALEdit8.RemoveNativeView
  else
  begin
    if (ALEdit8.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit8.Height) then
      ALEdit8.RemoveNativeView
    else ALEdit8.AddNativeView;
  end;

  if ALEdit9.Position.Y < NewViewportPosition.Y then
    ALEdit9.RemoveNativeView
  else
  begin
    if (ALEdit9.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit9.Height) then
      ALEdit9.RemoveNativeView
    else ALEdit9.AddNativeView;
  end;

  if ALEdit10.Position.Y < NewViewportPosition.Y then
    ALEdit10.RemoveNativeView
  else
  begin
    if (ALEdit10.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit10.Height) then
      ALEdit10.RemoveNativeView
    else ALEdit10.AddNativeView;
  end;

  if ALEdit11.Position.Y < NewViewportPosition.Y then
    ALEdit11.RemoveNativeView
  else
  begin
    if (ALEdit11.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit11.Height) then
      ALEdit11.RemoveNativeView
    else ALEdit11.AddNativeView;
  end;

  if ALEdit12.Position.Y < NewViewportPosition.Y then
    ALEdit12.RemoveNativeView
  else
  begin
    if (ALEdit12.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit12.Height) then
      ALEdit12.RemoveNativeView
    else ALEdit12.AddNativeView;
  end;

  if ALEdit13.Position.Y < NewViewportPosition.Y then
    ALEdit13.RemoveNativeView
  else
  begin
    if (ALEdit13.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit13.Height) then
      ALEdit13.RemoveNativeView
    else ALEdit13.AddNativeView;
  end;

  if ALEdit14.Position.Y < NewViewportPosition.Y then
    ALEdit14.RemoveNativeView
  else
  begin
    if (ALEdit14.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit14.Height) then
      ALEdit14.RemoveNativeView
    else ALEdit14.AddNativeView;
  end;

  if ALEdit15.Position.Y < NewViewportPosition.Y then
    ALEdit15.RemoveNativeView
  else
  begin
    if (ALEdit15.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit15.Height) then
      ALEdit15.RemoveNativeView
    else ALEdit15.AddNativeView;
  end;

  if ALEdit16.Position.Y < NewViewportPosition.Y then
    ALEdit16.RemoveNativeView
  else
  begin
    if (ALEdit16.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit16.Height) then
      ALEdit16.RemoveNativeView
    else ALEdit16.AddNativeView;
  end;

  if ALEdit17.Position.Y < NewViewportPosition.Y then
    ALEdit17.RemoveNativeView
  else
  begin
    if (ALEdit17.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit17.Height) then
      ALEdit17.RemoveNativeView
    else ALEdit17.AddNativeView;
  end;

  if ALEdit18.Position.Y < NewViewportPosition.Y then
    ALEdit18.RemoveNativeView
  else
  begin
    if (ALEdit18.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit18.Height) then
      ALEdit18.RemoveNativeView
    else ALEdit18.AddNativeView;
  end;

  if ALEdit19.Position.Y < NewViewportPosition.Y then
    ALEdit19.RemoveNativeView
  else
  begin
    if (ALEdit19.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit19.Height) then
      ALEdit19.RemoveNativeView
    else ALEdit19.AddNativeView;
  end;

  if ALEdit20.Position.Y < NewViewportPosition.Y then
    ALEdit20.RemoveNativeView
  else
  begin
    if (ALEdit20.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit20.Height) then
      ALEdit20.RemoveNativeView
    else ALEdit20.AddNativeView;
  end;

  if ALEdit21.Position.Y < NewViewportPosition.Y then
    ALEdit21.RemoveNativeView
  else
  begin
    if (ALEdit21.Position.Y - NewViewportPosition.Y) >
      (ALVertScrollBox1.Height - ALEdit21.Height) then
      ALEdit21.RemoveNativeView
    else ALEdit21.AddNativeView;
  end;
end;

procedure TFrameHome1.InitFrame;
begin
  ReleaseFrame;
  TMessageManager.DefaultManager.SubscribeToMessage(TVKStateChangeMessage, VKStateChangeMessageHandler);
  AlVertScrollBox1.AniCalculations.ViewportPosition :=
    TALPointD.Create(0,AlVertScrollBox1.VScrollBar.Max);

  ALTrackBar1.Max := AlVertScrollBox1.VScrollBar.Max;
  ALTrackBar2.Max := AlVertScrollBox1.Height;
end;

procedure TFrameHome1.ReleaseFrame;
begin
  TMessageManager.DefaultManager.Unsubscribe(TVKStateChangeMessage, VKStateChangeMessageHandler);
end;

procedure TFrameHome1.SetFVKBoundHeight(ABoundH: Integer);
begin
  FBoundHVK := ABoundH;
end;

procedure TFrameHome1.SetYFocus(aY, aH: Single);
begin
  FY := aY;
  FH := aH;
end;

procedure TFrameHome1.VKStateChangeMessageHandler(const Sender: TObject;
  const M: TMessage);
var
  rY: Single;
begin
  if TVKStateChangeMessage(M).KeyboardVisible then
  begin
    if TVirtualKeyboard.IsVisible then
    begin
      FVKState := True;
      Application.ProcessMessages;
      rY := FY - ALVertScrollBox1.Position.Y;
      Layout2.Margins.Top := rY;
      AlVertScrollBox1.AniCalculations.TouchTracking := [];
    end
    else
    begin
      FVKState := False;
      Layout2.Margins.Top := 0;
      AlVertScrollBox1.AniCalculations.TouchTracking := [ttVertical];
    end;
  end;
end;

end.
