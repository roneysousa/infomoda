// Sistema : InfoModas
// Empresa : InfoG2 Sistemas
// PROGRAMADOR : Roney Erdemann
// Data : 07/07/2005
// hora: 15:00


unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ImgList, Buttons, ExtCtrls, 
  QRCtrls, uCadModProduto, DB, uCadModelo, uCadPedidos, uCadUsuarios,uConfSistema,
  uImpressaoLote, uImpLotes2, uPrintLote, uConfEtiquetas, uCancelamentoPedidos,
  jpeg;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuArquivo: TMenuItem;
    Sair1: TMenuItem;
    ToolBar1: TToolBar;
    Info: TStatusBar;
    Ajuda1: TMenuItem;
    mnuSobreItem: TMenuItem;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    BtnSair: TSpeedButton;
    Image1: TImage;
    sbManutencaoPedidos: TSpeedButton;
    mnuPedidoProduoItem: TMenuItem;
    FechamentodeLote1: TMenuItem;
    ToolButton2: TToolButton;
    sbFechamentoLote: TSpeedButton;
    Cadastro1: TMenuItem;
    mnuModeloItem: TMenuItem;
    N3: TMenuItem;
    spModelos: TSpeedButton;
    ToolButton3: TToolButton;
    Janela1: TMenuItem;
    Cascata1: TMenuItem;
    LadoaLado1: TMenuItem;
    MinimizarTodas1: TMenuItem;
    FecharTodas1: TMenuItem;
    Utilitarios1: TMenuItem;
    Usuarios1: TMenuItem;
    Cadastro2: TMenuItem;
    mnuConfiguracoesSistemaItem: TMenuItem;
    Relatrios1: TMenuItem;
    mnuImpressodeLote1: TMenuItem;
    mnuImpressodeModeloItem: TMenuItem;
    ImpressodePedido1: TMenuItem;
    mnuEtiquetasItem: TMenuItem;
    N1: TMenuItem;
    Pedidos1: TMenuItem;
    N4: TMenuItem;
    mnuCancelamentodePedidoItem: TMenuItem;
    Produo1: TMenuItem;
    Faturamento1: TMenuItem;
    PlanejamentodeProduo1: TMenuItem;
    mnuMPSItem: TMenuItem;
    mnuRemessaItem: TMenuItem;
    mnuLoteSubItem: TMenuItem;
    mnuPedidosSubItem: TMenuItem;
    mnuPlanosItem: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DespesasInternas1Click(Sender: TObject);
    procedure mnuSobreItemClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure spUsoTaxiClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure mnuModeloItemClick(Sender: TObject);
    procedure Cascata1Click(Sender: TObject);
    procedure LadoaLado1Click(Sender: TObject);
    procedure MinimizarTodas1Click(Sender: TObject);
    procedure FecharTodas1Click(Sender: TObject);
    procedure mnuPedidoProduoItemClick(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FechamentodeLote1Click(Sender: TObject);
    procedure mnuConfiguracoesSistemaItemClick(Sender: TObject);
    procedure mnuImpressodeLoteItemClick(Sender: TObject);
    procedure mnuImpressodeLote1Click(Sender: TObject);
    procedure mnuImpressodeModeloItemClick(Sender: TObject);
    procedure ImpressodePedido1Click(Sender: TObject);
    procedure mnuEtiquetasItemClick(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure mnuCancelamentodePedidoItemClick(Sender: TObject);
    procedure PlanejamentodeProduo1Click(Sender: TObject);
    procedure mnuMPSItemClick(Sender: TObject);
    procedure mnuPedidosSubItemClick(Sender: TObject);
    procedure mnuLoteSubItemClick(Sender: TObject);
    procedure Faturamento1Click(Sender: TObject);
    procedure mnuPlanosItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    Function ExisteForm(pForm:TForm):boolean;
    procedure DisplayHint(Sender: TObject);
    procedure Botoes(Opcao : String);
    { Public declarations }
  end;

Const
  M_USERMASTER = 'INFOG2';
  M_SNMASTER   = 'SONIC';

var
  frmPrincipal: TfrmPrincipal;
  frmCadPedidos : TfrmCadPedidos;
  frmCadUsuarios : TfrmCadUsuarios;
  frmConfigSistema : TfrmConfigSistema;
  frmImpressaoLote : TfrmImpressaoLote;
  frmCancelamentoPedidos : TfrmCancelamentoPedidos;
  frmPrintLote : TfrmPrintLote;
  M_CDUSUA, M_NMUSUA : String;

implementation

uses uSobre, uSplash, udmInfoModa, uFuncoes, uLogon, uFechamentoLote,
  uConfRelPedidos, uConfAgregado, uImpMPS, uConfRemessa, uGerarLote,
  uRemessaLote, uGerarFatura, uCadPlanos;


{$R *.dfm}

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
     If Application.MessageBox('Sair do Programa?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
          Application.Terminate;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     CanClose := False;
     If Application.MessageBox('Sair do Programa?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
          CanClose := True;
          Application.Terminate;
     End;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
Var
   M_DTEXPI : Tdate;
begin
     //
     {M_DTEXPI := StrtoDate('22/09/2005');
     //
     If (Date() > M_DTEXPI) Then
     begin
           Application.MessageBox('A validade deste programa expirou!!!'+#13
                                 +'Entre em contato com a InfoG2:'+#13
                                 +'Telefone: (86)226-4510'+#13
                                 +'E_mail...: infog2@globo.com' ,
              'Atenção',MB_DEFBUTTON2+MB_OK+MB_ICONINFORMATION);
           Application.Terminate;
     End; }
     //
     Application.Title := 'InfoModa 1.0';
     ShortDateFormat := 'dd/mm/yyyy';
     //
     Image1.Left := (FrmPrincipal.Width Div 2) - (Image1.Width Div 2);
     Image1.Top := (FrmPrincipal.Height Div 2) - (Image1.Height Div 2 + Info.Height);
     //
     {M_CDUSUA := '000';
     M_NMUSUA := 'InfoG2';}
     //
     Application.OnHint := DisplayHint;
     Info.Panels.Items[3].Text := M_CDUSUA+' - '+M_NMUSUA;
     //Info.Panels.Items[0].Text := Application.Hint;
     //
     Botoes('2');
end;

procedure TfrmPrincipal.DespesasInternas1Click(Sender: TObject);
begin
{  Try
      Application.CreateForm(TfrmRecibo, frmRecibo);
      frmRecibo.Caption := 'Despesas Internas';
      frmRecibo.ShowModal;
  Finally
      frmRecibo.Free;
  End;}
end;

procedure TfrmPrincipal.mnuSobreItemClick(Sender: TObject);
begin
  Try
      Application.CreateForm(TfrmSobre, frmSobre);
      frmSobre.ShowModal;
  Finally
      frmSobre.Free;
  End;
end;

procedure TfrmPrincipal.DisplayHint(Sender: TObject);
begin
      Info.Panels[0].Text := Application.Hint;
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
     Image1.Left := (FrmPrincipal.Width Div 2) - (Image1.Width Div 2);
     Image1.Top := (FrmPrincipal.Height Div 2) - (Image1.Height Div 2 + Info.Height);
end;

procedure TfrmPrincipal.spUsoTaxiClick(Sender: TObject);
begin
{  Try
      Application.CreateForm(TfrmRecibo2, frmRecibo2);
      frmRecibo2.ShowModal;
  Finally
      frmRecibo2.Free;
  End;}
end;


function TfrmPrincipal.ExisteForm(pForm: TForm): boolean;
Var
    I:integer;
begin
    ExisteForm := False;
    For I:= 0 to Screen.FormCount -1 do
        If Screen.Forms[I] = pForm Then
        begin
            ExisteForm := True;
            Break;
        End;
end;

procedure TfrmPrincipal.Botoes(Opcao: String);
begin
     If (Opcao = '1') Then
          ToolBar1.Visible := False
     Else
          ToolBar1.Visible := True;
end;

procedure TfrmPrincipal.btFecharClick(Sender: TObject);
begin
     frmCadModProduto.Close;
end;

procedure TfrmPrincipal.mnuModeloItemClick(Sender: TObject);
begin
    If ExisteForm(frmCadModelo) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCadModelo := TfrmCadModelo.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadModelo.BringToFront;
        frmCadModelo.Focused;
    End;
end;

procedure TfrmPrincipal.Cascata1Click(Sender: TObject);
begin
      //Coloca todas as janelas abertas em cascata.
       Cascade;
end;

procedure TfrmPrincipal.LadoaLado1Click(Sender: TObject);
begin
      //Coloca todas as janelas abertas em lado a lado.
        Tile;
end;

procedure TfrmPrincipal.MinimizarTodas1Click(Sender: TObject);
//minimizar todas as janelas abertas.
Var
   I:integer;
begin
   For I:=MdiChildCount-1 downto 0 do
        MdiChildren[I].WindowState:=wsMinimized;
end;

procedure TfrmPrincipal.FecharTodas1Click(Sender: TObject);
//Fechar todas as janelas abertas.
var
  I: Integer;
begin
  with frmPrincipal do
    for I := MDIChildCount-1 downto 0 do
      MDIChildren[I].Close;
end;

procedure TfrmPrincipal.mnuPedidoProduoItemClick(Sender: TObject);
begin
    If ExisteForm(frmCadPedidos) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCadPedidos := TfrmCadPedidos.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadPedidos.BringToFront;
        frmCadPedidos.Focused;
    End;
end;

procedure TfrmPrincipal.Cadastro2Click(Sender: TObject);
begin
    If ExisteForm(frmCadUsuarios) = False Then
    begin
       LockWindowUpdate(Handle);
       frmCadUsuarios := TfrmCadUsuarios.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadUsuarios.BringToFront;
        frmCadUsuarios.Focused;
    End;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Try
      Application.CreateForm(TfrmLogon, frmLogon);
      frmLogon.ShowModal;
  Finally
      frmLogon.Free;
  End;
end;

procedure TfrmPrincipal.FechamentodeLote1Click(Sender: TObject);
begin
{  Try
      FecharTodas1Click(Sender);
      Application.CreateForm(TfrmFechamentoLote, frmFechamentoLote);
      frmFechamentoLote.ShowModal;
  Finally
      frmFechamentoLote.Free;
  End;}
  //
  Try
      FecharTodas1Click(Sender);
      Application.CreateForm(TfrmGerarLote, frmGerarLote);
      frmGerarLote.ShowModal;
  Finally
      frmGerarLote.Free;
  End;

end;

procedure TfrmPrincipal.mnuConfiguracoesSistemaItemClick(Sender: TObject);
begin
    If ExisteForm(frmConfigSistema) = False Then
    begin
       LockWindowUpdate(Handle);
       frmConfigSistema := TfrmConfigSistema.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmConfigSistema.BringToFront;
        frmConfigSistema.Focused;
    End;
end;

procedure TfrmPrincipal.mnuImpressodeLoteItemClick(Sender: TObject);
begin
    If ExisteForm(frmImpLotes2) = False Then
    begin
       LockWindowUpdate(Handle);
       frmImpLotes2 := TfrmImpLotes2.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmImpLotes2.BringToFront;
        frmImpLotes2.Focused;
    End;
    //
    {If ExisteForm(frmImpressaoLote) = False Then
    begin
       LockWindowUpdate(Handle);

       frmImpressaoLote := TfrmImpressaoLote.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmImpressaoLote.BringToFront;
        frmImpressaoLote.Focused;
    End;}
end;

procedure TfrmPrincipal.mnuImpressodeLote1Click(Sender: TObject);
begin
    If ExisteForm(frmPrintLote) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmPrintLote := TfrmPrintLote.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmPrintLote.BringToFront;
        frmPrintLote.Focused;
    End;
    {If ExisteForm(frmImpLotes2) = False Then
    begin
       LockWindowUpdate(Handle);
       frmImpLotes2 := TfrmImpLotes2.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmImpLotes2.BringToFront;
        frmImpLotes2.Focused;
    End;}
end;

procedure TfrmPrincipal.mnuImpressodeModeloItemClick(Sender: TObject);
begin
   If ExisteForm(frmImpressaoLote) = False Then
    begin
       LockWindowUpdate(Handle);    
       frmImpressaoLote := TfrmImpressaoLote.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmImpressaoLote.BringToFront;
        frmImpressaoLote.Focused;
    End;
end;

procedure TfrmPrincipal.ImpressodePedido1Click(Sender: TObject);
begin
    If ExisteForm(frmImpLotes2) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmImpLotes2 := TfrmImpLotes2.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmImpLotes2.BringToFront;
        frmImpLotes2.Focused;
    End;
end;

procedure TfrmPrincipal.mnuEtiquetasItemClick(Sender: TObject);
begin
    If ExisteForm(frmConfEtiquetas) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmConfEtiquetas := TfrmConfEtiquetas.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmConfEtiquetas.BringToFront;
        frmConfEtiquetas.Focused;
    End;
end;

procedure TfrmPrincipal.Pedidos1Click(Sender: TObject);
begin
  Try
      FecharTodas1Click(Sender);
      Application.CreateForm(TfrmConfRelatorio, frmConfRelatorio);
      frmConfRelatorio.ShowModal;
  Finally
      frmConfRelatorio.Free;
  End;
end;

procedure TfrmPrincipal.mnuCancelamentodePedidoItemClick(Sender: TObject);
begin
    If ExisteForm(frmCancelamentoPedidos) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCancelamentoPedidos := TfrmCancelamentoPedidos.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCancelamentoPedidos.BringToFront;
        frmCancelamentoPedidos.Focused;
    End;
end;

procedure TfrmPrincipal.PlanejamentodeProduo1Click(Sender: TObject);
begin
  Try
      FecharTodas1Click(Sender);
      Application.CreateForm(TfrmConfAgregado, frmConfAgregado);
      frmConfAgregado.ShowModal;
  Finally
      frmConfAgregado.Free;
  End;
end;

procedure TfrmPrincipal.mnuMPSItemClick(Sender: TObject);
begin
  Try
      FecharTodas1Click(Sender);
      Application.CreateForm(TfrmImpMPS, frmImpMPS);
      frmImpMPS.ShowModal;
  Finally
      frmImpMPS.Free;
  End;
end;

procedure TfrmPrincipal.mnuPedidosSubItemClick(Sender: TObject);
begin
  Try
      FecharTodas1Click(Sender);
      Application.CreateForm(TfrmConfRemessa, frmConfRemessa);
      frmConfRemessa.ShowModal;
  Finally
      frmConfRemessa.Free;
  End;
end;

procedure TfrmPrincipal.mnuLoteSubItemClick(Sender: TObject);
begin
  Try
      FecharTodas1Click(Sender);
      Application.CreateForm(TfrmRemessaLote, frmRemessaLote);
      frmRemessaLote.ShowModal;
  Finally
      frmRemessaLote.Free;
  End;
end;

procedure TfrmPrincipal.Faturamento1Click(Sender: TObject);
begin
  Try
      FecharTodas1Click(Sender);
      Application.CreateForm(TfrmGerarFatura, frmGerarFatura);
      frmGerarFatura.ShowModal;
  Finally
      frmGerarFatura.Free;
  End;
end;

procedure TfrmPrincipal.mnuPlanosItemClick(Sender: TObject);
begin
  Try
      FecharTodas1Click(Sender);
      Application.CreateForm(TfrmCadPlanos, frmCadPlanos);
      frmCadPlanos.ShowModal;
  Finally
      frmCadPlanos.Free;
  End;
end;

end.
