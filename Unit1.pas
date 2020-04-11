unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FrameStand,
  ALFmxTabControl, FMX.Effects, FMX.Layouts, ALFmxObjects,
  uHome1Frame, uHome2Frame, uHome3Frame, uHome4Frame, uHome5Frame;

type
  TForm1 = class(TForm)
    FrameStand1: TFrameStand;
    RecBackground: TALRectangle;
    recHeader: TALRectangle;
    GridPanelLayout1: TGridPanelLayout;
    btnHome1: TALRectangle;
    txtHome1: TText;
    imgHome1: TImage;
    btnHome2: TALRectangle;
    txtHome2: TText;
    imgHome2: TImage;
    btnHome3: TALRectangle;
    txtHome3: TText;
    ImgHome3: TImage;
    btnHome4: TALRectangle;
    txtHome4: TText;
    imgHome4: TImage;
    btnHome5: TALRectangle;
    txtHome5: TText;
    imgHome5: TImage;
    ShadEF: TShadowEffect;
    TabHome: TALTabControl;
    TabHome1: TALTabItem;
    TabHome4: TALTabItem;
    TabHome5: TALTabItem;
    TabHome2: TALTabItem;
    TabHome3: TALTabItem;
    FrameStand2: TFrameStand;
    FrameStand3: TFrameStand;
    FrameStand4: TFrameStand;
    FrameStand5: TFrameStand;
    procedure FormCreate(Sender: TObject);
    procedure FormFocusChanged(Sender: TObject);
    procedure btnHome1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnHome1Tap(Sender: TObject; const Point: TPointF);
    procedure btnHome2Tap(Sender: TObject; const Point: TPointF);
    procedure btnHome3Tap(Sender: TObject; const Point: TPointF);
    procedure btnHome4Tap(Sender: TObject; const Point: TPointF);
    procedure btnHome5Tap(Sender: TObject; const Point: TPointF);
  private
    { Private declarations }
    FHome1Frame: TFrameInfo<TFrameHome1>;
    FHome2Frame: TFrameInfo<TFrameHome2>;
    FHome3Frame: TFrameInfo<TFrameHome3>;
    FHome4Frame: TFrameInfo<TFrameHome4>;
    FHome5Frame: TFrameInfo<TFrameHome5>;
    function GetHome1: TFrameInfo<TFrameHome1>;
    function GetHome2: TFrameInfo<TFrameHome2>;
    function GetHome3: TFrameInfo<TFrameHome3>;
    function GetHome4: TFrameInfo<TFrameHome4>;
    function GetHome5: TFrameInfo<TFrameHome5>;
  public
    { Public declarations }
    property AHome1: TFrameInfo<TFrameHome1> read GetHome1;
    property AHome2: TFrameInfo<TFrameHome2> read GetHome2;
    property AHome3: TFrameInfo<TFrameHome3> read GetHome3;
    property AHome4: TFrameInfo<TFrameHome4> read GetHome4;
    property AHome5: TFrameInfo<TFrameHome5> read GetHome5;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TForm1 }

procedure TForm1.btnHome1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  ShadEF.enabled := False;
  ShadEF.Parent := Sender as TALRectangle;
  with Sender as TALRectangle do
  begin
    ShadEF.enabled := True;
    Repaint;
  end;
end;

procedure TForm1.btnHome1Tap(Sender: TObject; const Point: TPointF);
begin
  TabHome.SetActiveTabWithTransition(TabHome1,TALTabTransition.Slide);
end;

procedure TForm1.btnHome2Tap(Sender: TObject; const Point: TPointF);
begin
  TabHome.SetActiveTabWithTransition(TabHome2,TALTabTransition.Slide);
end;

procedure TForm1.btnHome3Tap(Sender: TObject; const Point: TPointF);
begin
  TabHome.SetActiveTabWithTransition(TabHome3,TALTabTransition.Slide);
end;

procedure TForm1.btnHome4Tap(Sender: TObject; const Point: TPointF);
begin
  TabHome.SetActiveTabWithTransition(TabHome4,TALTabTransition.Slide);
end;

procedure TForm1.btnHome5Tap(Sender: TObject; const Point: TPointF);
begin
  TabHome.SetActiveTabWithTransition(TabHome5,TALTabTransition.Slide);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AHome1.Show();
  AHome2.Show();
  AHome3.Show();
  AHome4.Show();
  AHome5.Show();
  TabHome.SetActiveTabWithTransition(TabHome1,TALTabTransition.Slide);
end;

procedure TForm1.FormFocusChanged(Sender: TObject);
var
  aPoint: TPointF;
  aFocused : TControl;
  aFocusRect: TRectF;
begin
  if Assigned(Focused) then
  begin
    aFocused := TControl(Focused.GetObject);
    aFocusRect := aFocused.AbsoluteRect;
    aPoint := aFocused.LocalToAbsolute(PointF(0,0));
  end;
end;

function TForm1.GetHome1: TFrameInfo<TFrameHome1>;
begin
  if not Assigned(FHome1Frame) then
    FHome1Frame := FrameStand1.New<TFrameHome1>(TabHome1);
  Result := FHome1Frame;
end;

function TForm1.GetHome2: TFrameInfo<TFrameHome2>;
begin
  if not Assigned(FHome2Frame) then
    FHome2Frame := FrameStand2.New<TFrameHome2>(TabHome2);
  Result := FHome2Frame;
end;

function TForm1.GetHome3: TFrameInfo<TFrameHome3>;
begin
  if not Assigned(FHome3Frame) then
    FHome3Frame := FrameStand3.New<TFrameHome3>(TabHome3);
  Result := FHome3Frame;
end;

function TForm1.GetHome4: TFrameInfo<TFrameHome4>;
begin
  if not Assigned(FHome4Frame) then
    FHome4Frame := FrameStand4.New<TFrameHome4>(TabHome4);
  Result := FHome4Frame;
end;

function TForm1.GetHome5: TFrameInfo<TFrameHome5>;
begin
  if not Assigned(FHome5Frame) then
    FHome5Frame := FrameStand5.New<TFrameHome5>(TabHome5);
  Result := FHome5Frame;
end;

end.
