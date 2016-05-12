program InfoModa;

uses
  Forms,
  udmInfoModa in 'udmInfoModa.pas' {dmInfoModa: TDataModule},
  uSplash in 'uSplash.pas' {frmSplash},
  uFuncoes in 'uFuncoes.pas',
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uSobre in 'uSobre.pas' {frmSobre},
  uCadModProduto in 'uCadModProduto.pas' {frmCadModProduto},
  uCadModelo in 'uCadModelo.pas' {frmCadModelo},
  uCadPedidos in 'uCadPedidos.pas' {frmCadPedidos},
  uLocProduto in 'uLocProduto.pas' {frmLocProduto},
  uCadUsuarios in 'uCadUsuarios.pas' {frmCadUsuarios},
  uLogon in 'uLogon.pas' {frmLogon},
  uFechamentoLote in 'uFechamentoLote.pas' {frmFechamentoLote},
  uConfSistema in 'uConfSistema.pas' {frmConfigSistema},
  uRelImpressaoPedido in 'uRelImpressaoPedido.pas' {frmRelModelo},
  uImpressaoLote in 'uImpressaoLote.pas' {frmImpressaoLote},
  uCadGradeTamanho in 'uCadGradeTamanho.pas' {frmGradeTamanho},
  uImpLotes2 in 'uImpLotes2.pas' {frmImpLotes2},
  uRelPedidos in 'uRelPedidos.pas' {frmRelPedidos},
  uPrintLote in 'uPrintLote.pas' {frmPrintLote},
  uLocClientes in 'uLocClientes.pas' {frmLocalizarCliente},
  uConfEtiquetas in 'uConfEtiquetas.pas' {frmConfEtiquetas},
  uQuant in 'uQuant.pas' {frmConfQuant},
  uRelEtiqueta in 'uRelEtiqueta.pas' {frmRelEtiqueta},
  uConfRelPedidos in 'uConfRelPedidos.pas' {frmConfRelatorio},
  uRelPedidosPeriodo in 'uRelPedidosPeriodo.pas' {frmRelPedidosPediodo},
  uCancelamentoPedidos in 'uCancelamentoPedidos.pas' {frmCancelamentoPedidos},
  uCadItemPedido in 'uCadItemPedido.pas' {frmIncProdutos},
  uInclusaoProduto in 'uInclusaoProduto.pas' {frmInclusaoProdutos},
  uRelRemessa in 'uRelRemessa.pas' {frmRelRemessa},
  uConfAgregado in 'uConfAgregado.pas' {frmConfAgregado},
  uRelPlanej in 'uRelPlanej.pas' {frmRelPlanej},
  uImpMPS in 'uImpMPS.pas' {frmImpMPS},
  uRelMPS in 'uRelMPS.pas' {frmRelMPS},
  uConfRemessa in 'uConfRemessa.pas' {frmConfRemessa},
  uGerarLote in 'uGerarLote.pas' {frmGerarLote},
  uRemessaLote in 'uRemessaLote.pas' {frmRemessaLote},
  uGerarFatura in 'uGerarFatura.pas' {frmGerarFatura},
  uFecharFatura in 'uFecharFatura.pas' {frmFecharFatura},
  uCadPlanos in 'uCadPlanos.pas' {frmCadPlanos};

{$R *.res}

begin
  frmSplash := TfrmSplash.create(application);
  frmSplash.show;
  frmSplash.update;
  Application.CreateForm(TdmInfoModa, dmInfoModa);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  frmSplash.hide;
  frmSplash.free;
  Application.Run;
end.
