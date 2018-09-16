unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.Ribbon, Vcl.RibbonLunaStyleActnCtrls, Vcl.ActnMenus, Vcl.RibbonActnMenus;

type
  TForm1 = class(TForm)
    Ribbon1: TRibbon;
    ActionManager1: TActionManager;
    RibbonPage1: TRibbonPage;
    RibbonPage2: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    RibbonGroup4: TRibbonGroup;
    ActionZamowieniaWRealziacji: TAction;
    ImageListSmall: TImageList;
    ActionNoweZamowienie: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    ImageListLarge: TImageList;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
    ActionZamowieniaPrzeterminowane: TAction;
    ActionZamowieniaZrealizowane: TAction;
    RibbonGroup2: TRibbonGroup;
    ActionZamowieniaDrukuj: TAction;
    ActionZamowieniaPopraw: TAction;
    ActionZamowieniaPokaz: TAction;
    ActionZamowieniaUsun: TAction;
    Action1: TAction;
    Action2: TAction;
    ActionMenu1: TAction;
    ActionMenu2: TAction;
    ActionMenu3: TAction;
    ActionMenu4: TAction;

    procedure MyActionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    procedure AttachAllActionExecute;


  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.FormShow(Sender: TObject);
begin
  AttachAllActionExecute;
end;

procedure TForm1.MyActionExecute(Sender: TObject);
begin
  if Sender is TAction then
    MessageDlg('Click on ' + TAction(Sender).Caption,mtInformation,[mbOk],0);
end;

procedure TForm1.AttachAllActionExecute;
var
  i: Integer;
begin
  with ActionManager1 do
    for i := 0 to ActionCount-1 do
       TAction(Actions[i]).OnExecute := MyActionExecute;
end;

end.
