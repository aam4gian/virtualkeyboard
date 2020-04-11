unit uHome4Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, ALFmxEdit,
  ALFmxLayouts, ALFmxObjects, ALCommon;

type
  TFrameHome4 = class(TFrame)
    ALRectangle1: TALRectangle;
    Text2: TText;
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
    Text1: TText;
    procedure ALVertScrollBox1ViewportPositionChange(Sender: TObject;
      const OldViewportPosition, NewViewportPosition: TPointF);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitFrame;
  end;

implementation

{$R *.fmx}

procedure TFrameHome4.ALVertScrollBox1ViewportPositionChange(Sender: TObject;
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

procedure TFrameHome4.InitFrame;
begin
  AlVertScrollBox1.AniCalculations.ViewportPosition :=
    TALPointD.Create(0,1);
end;

end.
