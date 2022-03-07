unit Base;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtDlgs, DBIProcs, Bde, DBITypes, ActnList;
type
  TDmDados = class(TDataModule)
    DsClientes: TDataSource;
    BancoDados: TDatabase;
    DsInformativo: TDataSource;
    TbInformativo: TTable;
    TbInformativoInf_Cliente: TIntegerField;
    TbInformativoInf_Fornecedor: TIntegerField;
    TbInformativoInf_produto: TIntegerField;
    TbInformativoInf_Pedido: TIntegerField;
    TbInformativoInf_Receber: TIntegerField;
    TbInformativoInf_Pagar: TIntegerField;
    TbInformativoInf_NF: TIntegerField;
    TbInformativoInf_Vendedores: TIntegerField;
    Dsfornecedores: TDataSource;
    Tbfornecedores: TTable;
    TbfornecedoresFor_Codigo: TIntegerField;
    TbfornecedoresFor_Razao: TStringField;
    TbfornecedoresFor_Inscricao: TStringField;
    TbfornecedoresFor_Endereco: TStringField;
    TbfornecedoresFor_Bairro: TStringField;
    TbfornecedoresFor_Cidade: TStringField;
    TbfornecedoresFor_Estado: TStringField;
    TbfornecedoresFor_Cep: TStringField;
    TbfornecedoresFor_Fax: TStringField;
    TbfornecedoresFor_Fone1: TStringField;
    TbfornecedoresFor_Celualar: TStringField;
    TbfornecedoresFor_Contato: TStringField;
    TbfornecedoresFor_Email: TStringField;
    TbfornecedoresFor_Pagina: TStringField;
    TbfornecedoresFor_Conceito: TIntegerField;
    TbfornecedoresFor_Cpf: TStringField;
    TbfornecedoresFor_Rg: TStringField;
    TbfornecedoresFor_DataCadastro: TDateField;
    TbfornecedoresFor_Obs: TMemoField;
    TbfornecedoresFor_CGC: TStringField;
    Dsprodutos: TDataSource;
    Tbprodutos: TTable;
    TbprodutosPro_Codigo: TIntegerField;
    TbprodutosPro_Unidade: TStringField;
    TbprodutosPro_QtdeAtual: TFloatField;
    TbprodutosPro_QtdeCritica: TFloatField;
    TbprodutosPro_UltimaVenda: TDateField;
    TbprodutosPro_PrecoCusto: TCurrencyField;
    TbprodutosPro_PrecoVenda: TCurrencyField;
    TbprodutosPro_Lucro: TCurrencyField;
    TbprodutosPro_Entrada: TFloatField;
    TbprodutosPro_DadaCadastro: TDateField;
    TbprodutosPro_Obs: TMemoField;
    Dspedidos: TDataSource;
    Tbpedidos: TTable;
    DsItens: TDataSource;
    Tbitens: TTable;
    TbitensIt_Numero: TIntegerField;
    TbitensIt_Produto: TIntegerField;
    TbitensIt_Quantidade: TFloatField;
    TbitensIt_Valor: TCurrencyField;
    TbitensValoritem: TCurrencyField;
    TbitensIt_Lucro: TCurrencyField;
    TbitensIt_Unid: TStringField;
    dsVendedores: TDataSource;
    tbVendedores: TTable;
    tbVendedoresId_Vendedor: TIntegerField;
    tbVendedoresNome: TStringField;
    tbVendedoresEnd: TStringField;
    tbVendedoresBairro: TStringField;
    tbVendedoresCidade: TStringField;
    tbVendedoresEstado: TStringField;
    tbVendedoresCep: TStringField;
    tbVendedoresCpf: TStringField;
    tbVendedoresRg: TStringField;
    tbVendedoresTel: TStringField;
    tbVendedoresCelular: TStringField;
    tbVendedoresFax: TStringField;
    tbVendedoresComissao: TStringField;
    tbVendedoresEmail: TStringField;
    tbVendedoresContato: TStringField;
    tbVendedoresObs: TMemoField;
    tbVendedoresCliente: TStringField;
    tbVendedoresData_Cadastro: TDateField;
    tbUnidades: TTable;
    tbUnidadesId_Unidade: TAutoIncField;
    tbUnidadesUnidade: TStringField;
    tbUnidadesDescricao: TStringField;
    dsUnidades: TDataSource;
    TbitensValorLucro: TCurrencyField;
    TbitensIt_Descricao: TStringField;
    TbprodutosPro_Descricao: TStringField;
    TbClientes: TTable;
    TbitensIt_Ref: TStringField;
    TbprodutosPro_Ref: TStringField;
    TbpedidosPed_Data: TDateField;
    TbpedidosPed_Cliente: TStringField;
    TbpedidosPed_Valor: TCurrencyField;
    TbpedidosPed_Lucro: TCurrencyField;
    TbpedidosPed_Nota: TIntegerField;
    TbpedidosPed_Vendedor: TStringField;
    TbpedidosPed_Ref: TStringField;
    TbpedidosPed_Empresa: TStringField;
    TbpedidosPed_Desconto: TFloatField;
    TbpedidosPed_ForPaga: TStringField;
    TbpedidosPed_DataPaga: TDateField;
    TbpedidosPed_VrDesconto: TCurrencyField;
    TbpedidosPed_VrFinal: TCurrencyField;
    TbpedidosPed_Prazos: TStringField;
    TPermissoes: TTable;
    dsPermissoes: TDataSource;
    TPermissoesCodigo: TIntegerField;
    TPermissoesUsuario: TStringField;
    TPermissoesSenha: TStringField;
    TPermissoesMenu_Cadastro: TBooleanField;
    TPermissoesMenu_Pedidos: TBooleanField;
    TPermissoesMenu_Financeiro: TBooleanField;
    TPermissoesMenu_Relatorios: TBooleanField;
    TPermissoesMenu_Seguranca: TBooleanField;
    TPermissoesMenu_M_Direta: TBooleanField;
    TPermissoesFaturamento: TBooleanField;
    TPermissoesFinanceiro: TBooleanField;
    TPermissoesConfiguracoes: TBooleanField;
    TPermissoesMudarVisual: TBooleanField;
    TPermissoesBackup: TBooleanField;
    TPermissoesCadastro_Usuario: TBooleanField;
    TPermissoesAlterar: TBooleanField;
    TPermissoesExcluir: TBooleanField;
    TPermissoesCadastrar: TBooleanField;
    tbVendedoresData_Nasc: TDateField;
    TbClientesCli_Codigo: TIntegerField;
    TbClientesCli_Cliente: TStringField;
    TbClientesCli_CGC: TStringField;
    TbClientesCli_Inscricao: TStringField;
    TbClientesCli_Endereco: TStringField;
    TbClientesCli_Bairro: TStringField;
    TbClientesCli_Cidade: TStringField;
    TbClientesCli_Estado: TStringField;
    TbClientesCli_Cep: TStringField;
    TbClientesCli_Fax: TStringField;
    TbClientesCli_Fone1: TStringField;
    TbClientesCli_Celular: TStringField;
    TbClientesCli_Contato2: TStringField;
    TbClientesCli_Contato: TStringField;
    TbClientesCli_Email: TStringField;
    TbClientesCli_pagina: TStringField;
    TbClientesCli_Conceito: TIntegerField;
    TbClientesCli_DataCadastro: TDateField;
    TbClientesCli_Cpf: TStringField;
    TbClientesCli_Rg: TStringField;
    TbClientesCli_Obs: TMemoField;
    TbClientesCli_Vendedor: TStringField;
    TbClientesCli_Data_Nasc_Fisica: TDateField;
    TbClientesCli_Data_Nasc_Cont1: TDateField;
    TbClientesCli_Data_Nasc_Cont2: TDateField;
    TbClientesCli_Data_Nasc_Prop1: TDateField;
    TbClientesCli_Data_Nasc_Prop2: TDateField;
    TbClientesCli_NomeProp1: TStringField;
    TbClientesCli_NomeProp2: TStringField;
    TbClientesCli_NFantasia: TStringField;
    TFuncionario: TTable;
    dsFuncionario: TDataSource;
    TFuncionarioID_Funcionario: TIntegerField;
    TFuncionarioNome: TStringField;
    TFuncionarioEndereco: TStringField;
    TFuncionarioBairro: TStringField;
    TFuncionarioCidade: TStringField;
    TFuncionarioEstado: TStringField;
    TFuncionarioCEP: TStringField;
    TFuncionarioTelefone: TStringField;
    TFuncionarioCelular: TStringField;
    TFuncionarioEmail: TStringField;
    TFuncionarioObs: TMemoField;
    TFuncionarioContato: TStringField;
    TFuncionarioRg: TStringField;
    TFuncionarioCpf: TStringField;
    TFuncionarioData_Nasc: TDateField;
    TbClientesCli_PessoaFJ: TStringField;
    tbFormasPagamento: TTable;
    tbFormasPagamentoCod_Forma: TAutoIncField;
    tbFormasPagamentoFormaPag: TStringField;
    tbFormasPagamentoPrazos: TStringField;
    tbFormasPagamentoObs: TStringField;
    dsFormasPagamento: TDataSource;
    TbClientesCli_PontoReferencia: TStringField;
    TbpedidosPed_CodCliente: TIntegerField;
    TFuncionarioFoto_Func: TGraphicField;
    TFuncionarioData_Admin: TDateField;
    TFuncionarioData_Demin: TDateField;
    TFuncionarioNum_Prof: TStringField;
    TFuncionarioNum_Pis: TStringField;
    TFuncionarioFuncao: TStringField;
    TbInformativoInf_Funcionarios: TIntegerField;
    TbprodutosPro_Foto: TGraphicField;
    dsCombustivel: TDataSource;
    TCombustivel: TTable;
    TCombustivelId_Combustivel: TAutoIncField;
    TCombustivelTipo_Combustivel: TStringField;
    TCombustivelUnid: TStringField;
    TCombustivelPreco: TCurrencyField;
    TCombustivelObs: TStringField;
    TVendedorDetail: TTable;
    dsVendedorDetail: TDataSource;
    TVendedorDetailId_Cli_Ven: TAutoIncField;
    TVendedorDetailCod_Ven_D: TIntegerField;
    TVendedorDetailRSocial: TStringField;
    TVendedorDetailNFantasia: TStringField;
    TVendedorDetailData_Ult_Compra: TDateField;
    TVendedorDetailTel: TStringField;
    TVendedorDetailCel: TStringField;
    TVendedorDetailStatus: TStringField;
    TVendedorDetailObs: TStringField;
    dsFornecedorDetail: TDataSource;
    TFornecedorDetail: TTable;
    TFornecedorDetailId_Fornecedor: TAutoIncField;
    TFornecedorDetailCod_ForDetail: TIntegerField;
    TFornecedorDetailRef: TStringField;
    TFornecedorDetailDescricao: TStringField;
    TFornecedorDetailValor: TCurrencyField;
    TFornecedorDetailUnid: TStringField;
    TClienteDetail: TTable;
    dsClienteDetail: TDataSource;
    TClienteDetailId_CliDetail: TAutoIncField;
    TClienteDetailCod_Cli_D: TIntegerField;
    TClienteDetailNum_Pedido: TIntegerField;
    TClienteDetailData_Pedido: TDateField;
    TClienteDetailValor: TCurrencyField;
    TClienteDetailStatus: TStringField;
    TClienteDetailObs: TStringField;
    TbInformativoInf_Frota: TIntegerField;
    TbitensIt_Cod: TAutoIncField;
    TbitensDescricao: TStringField;
    TbitensUnidade: TStringField;
    TbitensVrUnit: TCurrencyField;
    TbClientesCli_UltimaCompra: TDateField;
    TbClientesCli_Status: TStringField;
    TbprodutosPro_Fornecedor: TStringField;
    TbpedidosVencimento1: TDateField;
    TbpedidosVencimento2: TDateField;
    TbpedidosVencimento3: TDateField;
    TbpedidosPed_Comissao: TIntegerField;
    TbpedidosValor1: TCurrencyField;
    TbpedidosValor2: TCurrencyField;
    TbpedidosValor3: TCurrencyField;
    TDespesas: TTable;
    TFluxoCaixa: TTable;
    dsDespesas: TDataSource;
    dsFluxoCaixa: TDataSource;
    TDespesasCod_Desp: TAutoIncField;
    TDespesasData_Desp: TDateField;
    TDespesasDescricao: TStringField;
    TDespesasValor: TCurrencyField;
    TFluxoCaixaCod_Fluxo: TAutoIncField;
    TFluxoCaixaVrEntradas: TCurrencyField;
    TFluxoCaixaVrSaida: TCurrencyField;
    TFluxoCaixaDescricaoEntrada: TStringField;
    TFluxoCaixaDescricaoSaida: TStringField;
    QryRelForXProd: TQuery;
    TbpedidosAcres: TFloatField;
    ActionList1: TActionList;
    RedeAtualizaDados: TAction;
    RedeGravaDados: TAction;
    dsEmpresas: TDataSource;
    tbEmpresas: TTable;
    tbEmpresasCodEmpresa: TAutoIncField;
    tbEmpresasNome_Empresa: TStringField;
    tbEmpresasSlogan: TStringField;
    tbEmpresasTelefone: TStringField;
    tbEmpresasEmail: TStringField;
    TbClientesCli_Rota: TStringField;
    TVendedorDetailCod_cliente: TIntegerField;
    TbClientesCli_EndNumero: TStringField;
    TVendedorDetailCep_cli: TStringField;
    TVendedorDetailNumEndCli: TStringField;
    TbprodutosPro_PerComissao: TIntegerField;
    TbprodutosPro_VrComissao: TCurrencyField;
    TbpedidosPed_VrComissao: TCurrencyField;
    TbitensIt_VrComissao: TCurrencyField;
    TbitensTotComissao: TCurrencyField;
    TbpedidosPago1: TBooleanField;
    TbpedidosPago2: TBooleanField;
    TbpedidosPago3: TBooleanField;
    TEmbalagens: TTable;
    dsTEmbalagens: TDataSource;
    TEmbalagensCod: TAutoIncField;
    TEmbalagensEntradaPvc: TFloatField;
    TEmbalagensQtdCriticaPvc: TFloatField;
    TEmbalagensQtdAtualPvc: TFloatField;
    TEmbalagensValorPvc: TCurrencyField;
    TEmbalagensEntradaPoupa: TFloatField;
    TEmbalagensQtdCritalPoupa: TFloatField;
    TEmbalagensQtdAtualPoupa: TFloatField;
    TEmbalagensValorPoupa: TCurrencyField;
    TbprodutosPro_QtdAtBandeja: TFloatField;
    TbprodutosPro_QtdAtCaixa: TFloatField;
    TbClientesCli_DiadaSemana: TStringField;
    TbitensIt_TipoEmb: TStringField;
    TbprodutosPro_Data1: TDateField;
    TbprodutosPro_Data2: TDateField;
    TbprodutosPro_Data3: TDateField;
    TbprodutosPro_Data4: TDateField;
    TbprodutosPro_Valor1: TCurrencyField;
    TbprodutosPro_Valor2: TCurrencyField;
    TbprodutosPro_Valor3: TCurrencyField;
    TbprodutosPro_Valor4: TCurrencyField;
    TbprodutosPro_PrecoMedio: TCurrencyField;
    TEmbalagensValorPvcDz: TCurrencyField;
    TEmbalagensValorPvcCx: TCurrencyField;
    TEmbalagensValorPoupaDz: TCurrencyField;
    TEmbalagensValorPoupaCx: TCurrencyField;
    TEmbalagensValorEtiqueta: TCurrencyField;
    TbitensIt_VrEmbalagem: TCurrencyField;
    TbpedidosPed_TotEmba: TCurrencyField;
    TEmbalagensValorPvcBd: TCurrencyField;
    TEmbalagensValorPoupaBd: TCurrencyField;
    TbClientesCli_Segunda: TStringField;
    TbClientesCli_Terca: TStringField;
    TbClientesCli_Quarta: TStringField;
    TbClientesCli_Quinta: TStringField;
    TbClientesCli_Sexta: TStringField;
    TbClientesCli_Sabado: TStringField;
    TPendenciasBoleto: TTable;
    TPendenciasBoletoCodigo: TIntegerField;
    TPendenciasBoletoNumPed: TIntegerField;
    TPendenciasBoletoDataPed: TDateField;
    TPendenciasBoletoFormaPgto: TStringField;
    TPendenciasBoletoVrTotPed: TCurrencyField;
    TPendenciasBoletoData1Parc: TDateField;
    TPendenciasBoletoVr1: TCurrencyField;
    TPendenciasBoletoData2Parc: TDateField;
    TPendenciasBoletoVr2: TCurrencyField;
    TPendenciasBoletoData3Parc: TDateField;
    TPendenciasBoletoVr3: TCurrencyField;
    TPendenciasBoletoPago1: TBooleanField;
    TPendenciasBoletoPago2: TBooleanField;
    TPendenciasBoletoPago3: TBooleanField;
    TPendenciasBoletoCliente: TStringField;
    dsPendenciasBoleto: TDataSource;
    TBoleto: TTable;
    TBoletoCodigo: TIntegerField;
    TBoletoLocalpagto: TStringField;
    TBoletoVencimento: TDateField;
    TBoletoDatadocto: TDateField;
    TBoletoNumdocto: TStringField;
    TBoletoValordocto: TCurrencyField;
    TBoletoIntrucoes: TMemoField;
    TBoletoCliente: TStringField;
    TBoletoEndereco: TStringField;
    TBoletoCnpjcpf: TStringField;
    TBoletoBairro: TStringField;
    TBoletoCidade: TStringField;
    TBoletoUf: TStringField;
    dsBoleto: TDataSource;
    TbClientesCli_RotaSegunda: TFloatField;
    TbClientesCli_RotaTerca: TFloatField;
    TbClientesCli_RotaQuarta: TFloatField;
    TbClientesCli_RotaQuinta: TFloatField;
    TbClientesCli_RotaSexta: TFloatField;
    TbClientesCli_RotaSabado: TFloatField;
    TbitensTotalEmba: TCurrencyField;
    TbpedidosBoletoGerado: TBooleanField;
    TPendenciasBoletoNumPed2: TIntegerField;
    TPendenciasBoletoNumPed3: TIntegerField;
    TPendenciasBoletoNumPed4: TIntegerField;
    TPendenciasBoletoNumPed5: TIntegerField;
    TbprodutosPro_PrecomeiaDZ: TCurrencyField;
    TbprodutosPro_PrecoDZ: TCurrencyField;
    TbprodutosPro_PrecoDZemeia: TCurrencyField;
    TbprodutosPro_PrecoBD: TCurrencyField;
    TbprodutosPro_PrecoCX: TCurrencyField;
    TbitensStatus: TIntegerField;
    TbprodutosPro_QtdAtUnidade: TFloatField;
    TbprodutosPro_PrecoquartoDZ: TCurrencyField;
    TbprodutosPro_PrecoUN: TCurrencyField;
    dsDetailProduto: TDataSource;
    TDetailProduto: TTable;
    TDetailProdutoCod: TAutoIncField;
    TDetailProdutoCodProduto: TIntegerField;
    TDetailProdutoQtdUN: TFloatField;
    TDetailProdutoQtdDZ: TFloatField;
    TDetailProdutoDataEntrada: TDateField;
    TDetailProdutoFornecedor: TStringField;
    TDetailProdutoTipoRef: TStringField;
    TDetailProdutoTipoDescricao: TStringField;
    TDetailProdutoTipoUN: TStringField;
    TbitensIt_QtdOvo: TFloatField;
    TbitensIt_QtdEmba: TFloatField;
    TContasPagar: TTable;
    dsContasPagar: TDataSource;
    TContasPagarCodCP: TIntegerField;
    TContasPagarFavorecido: TStringField;
    TContasPagarBanco: TStringField;
    TContasPagarAgencia: TStringField;
    TContasPagarDatapagto: TDateField;
    TContasPagarValor: TCurrencyField;
    TContasPagarObs: TMemoField;
    TContasPagarDataCadastro: TDateField;
    TContasPagarQuitado: TStringField;
    TContasPagarNumCheque: TStringField;
    TPermissoesSenhaGerencial: TStringField;
    TbpedidosDtPgt1: TDateField;
    TbpedidosDtPgt2: TDateField;
    TbpedidosTotalCxs: TFloatField;
    TbprodutosPro_Qtd1: TFloatField;
    TbprodutosPro_Qtd2: TFloatField;
    TbprodutosPro_Qtd3: TFloatField;
    TbprodutosPro_Qtd4: TFloatField;
    TbpedidosPed_E: TIntegerField;
    TbpedidosPed_B: TIntegerField;
    TbpedidosFechado: TStringField;
    TbpedidosTotalParcial: TCurrencyField;
    TbpedidosTotalPendente: TCurrencyField;
    TB_Parcial: TTable;
    dsParcial: TDataSource;
    TB_ParcialCodInc: TAutoIncField;
    TB_ParcialControleParcial: TIntegerField;
    TB_ParcialData: TDateField;
    TB_ParcialValor: TFloatField;
    TB_ParcialObs: TStringField;
    TbClientesCli_Domingo: TStringField;
    TbClientesCli_SeqRota: TStringField;
    TbClientesCli_RotaDomingo: TFloatField;
    tbEntradaProdutoMaster: TTable;
    dsEntradaProdutoMaster: TDataSource;
    dstbltblEntradaProdutoDetalhe: TDataSource;
    tblEntradaProdutoDetalhe: TTable;
    intgrfldEntradaProdutoMasterID_PRODUTOENTRADA: TIntegerField;
    tbEntradaProdutoMasterDATA_ENTRADA: TDateField;
    tbEntradaProdutoMasterFORNECEDOR: TStringField;
    tbEntradaProdutoMasterNUM_NOTA: TStringField;
    tbEntradaProdutoMasterVALORNOTE: TFloatField;
    tblEntradaProdutoDetalheID_INC: TAutoIncField;
    intgrfldEntradaProdutoDetalheID_CONTROLE: TIntegerField;
    tblEntradaProdutoDetalheDATAENTRADA: TDateField;
    tbEntradaProdutoDetalheREFERENCIA: TStringField;
    tbEntradaProdutoDetalheDESCRICAO: TStringField;
    tbEntradaProdutoDetalheUNIDADE: TStringField;
    tblEntradaProdutoDetalheVLRUNIT: TFloatField;
    tblEntradaProdutoDetalheQTD: TFloatField;
    tblEntradaProdutoDetalheTotValor: TFloatField;
    tblEntradaProdutoDetalheTotCX: TFloatField;
    tbCPGMaster: TTable;
    tbCPGDetalhe: TTable;
    dsCPGMaster: TDataSource;
    dsCPGDetalhe: TDataSource;
    dsCPRMaster: TDataSource;
    tbCPRMaster: TTable;
    dsCPRDetalhe: TDataSource;
    tbCPRDetalhe: TTable;
    tbCPGMasterID_CPG: TIntegerField;
    tbCPGMasterFornecedor: TStringField;
    tbCPGMasterDataInclusao: TDateField;
    strngfldCPGMasterFormaPagamento: TStringField;
    tbCPGMasterValorTotal: TFloatField;
    tbCPGMasterObs: TMemoField;
    tbCPGDetalheCodInc: TAutoIncField;
    intgrfldCPGDetalheControle: TIntegerField;
    tbCPGDetalheValorParcela: TFloatField;
    tbCPGDetalheDataParcela: TDateField;
    strngfldCPGDetalheNumChqDoc: TStringField;
    strngfldCPGDetalheBanco: TStringField;
    strngfldCPGDetalheAgencia: TStringField;
    tbCPGDetalheVrJuros: TFloatField;
    tbCPGDetalheVrMora: TFloatField;
    tbCPGDetalheTipoDespesa: TFloatField;
    tbCPGDetalheStatus: TBooleanField;
    tbCPRMasterID_CPG: TIntegerField;
    tbCPRMasterCliente: TStringField;
    tbCPRMasterDataInclusao: TDateField;
    strngfldCPRMasterFormaPagamento: TStringField;
    tbCPRMasterValorTotal: TFloatField;
    tbCPRMasterObs: TMemoField;
    tbCPRDetalheControle: TIntegerField;
    tbCPRDetalheValorParcela: TFloatField;
    tbCPRDetalheDataParcela: TDateField;
    strngfldCPRDetalheNumChqDoc: TStringField;
    strngfldCPRDetalheBanco: TStringField;
    strngfldCPRDetalheAgencia: TStringField;
    tbCPRDetalheVrJuros: TFloatField;
    tbCPRDetalheVrMora: TFloatField;
    tbCPRDetalheTipoDespesa: TFloatField;
    tbCPRDetalheStatus: TBooleanField;
    tbCPGMasterNum_NFPEDIDO: TStringField;
    tbEstoque: TTable;
    dsEstoque: TDataSource;
    tbEstoqueRef: TStringField;
    tbEstoqueDescricao: TStringField;
    tbEstoqueQtd: TFloatField;
    tbEstoqueUn: TStringField;
    tbEstoqueCodInc: TAutoIncField;
    tbCPGDetalheTotVrGrade: TFloatField;
    tbCPRDetalheTotVrGrade: TFloatField;
    tbCPGMasterValorTotalFixo: TFloatField;
    tbCPRMasterValorTotalFixo: TFloatField;
    tbEntradaProdutoMasterLancado: TBooleanField;
    TbpedidosLancado: TBooleanField;
    tbCPRDetalheTotalParcela: TFloatField;
    tbCPGDetalheTotalParcela: TFloatField;
    tbFormaPagtoMaster: TTable;
    tbFormaPagtoDetalhe: TTable;
    dsFormaPagtoMaster: TDataSource;
    dsFormaPagtoDetalhe: TDataSource;
    tbFormaPagtoMasterCodInc: TAutoIncField;
    tbFormaPagtoMasterFormas: TStringField;
    tbFormaPagtoDetalheCodInc: TAutoIncField;
    tbFormaPagtoDetalheControle: TIntegerField;
    tbFormaPagtoDetalhePrazos: TStringField;
    tbFormaPagtoDetalheNumParcela: TFloatField;
    tbClientesCli_Forma: TStringField;
    tbClientesCli_Prazo: TStringField;
    TbpedidosPed_Forma: TStringField;
    tbTbpedidosPed_Prazo: TStringField;
    tbEntradaProdutoMasterForma: TStringField;
    tbEntradaProdutoMasterPrazo: TStringField;
    tbCPGDetalheDataPagto: TDateField;
    tbCPRDetalheDataPagto: TDateField;
    tbTipoEntrada: TTable;
    dsTipoEntrada: TDataSource;
    tbTipoEntradaID: TAutoIncField;
    tblTipoEntradaTIPO_ENTRADA: TStringField;
    tblTipoEntradaDESCRICAO: TStringField;
    tblCPGMasterTipoEntrada: TStringField;
    tblCPRMasterTipoSaida: TStringField;
    dsTipoSaida: TDataSource;
    tbTipoSaida: TTable;
    tbTipoSaidaID: TAutoIncField;
    tblTipoSaidaTipoSaida: TStringField;
    tblTipoSaidaDescricao: TStringField;
    tblitensIt_UN_GERAL: TStringField;
    tbPerdaMaster: TTable;
    tbPerdaDetalhe: TTable;
    dsPerdaMaster: TDataSource;
    dsPerdaDetalhe: TDataSource;
    qryPerdaMasterID: TIntegerField;
    tbPerdaMasterData: TDateField;
    tblPerdaMasterValorTotal: TFloatField;
    tbPerdaDetalheIDDetalhe: TAutoIncField;
    qryPerdaDetalheControle: TIntegerField;
    tblPerdaDetalheRef: TStringField;
    tblPerdaDetalheDescricao: TStringField;
    tblPerdaDetalheValor: TFloatField;
    tbPerdaMasterObs: TMemoField;
    tblPerdaDetalheQtd: TFloatField;
    tbCPGMasterID_Fornecedor: TIntegerField;
    tbCPRMasterID_Cliente: TIntegerField;
    tbCPRMasterNum_NFPEDIDO: TIntegerField;
    tbCPRDetalheINC_CPR: TAutoIncField;
    TbpedidosPed_Numero: TIntegerField;
    procedure TbitensAfterPost(DataSet: TDataSet);
    procedure TbitensCalcFields(DataSet: TDataSet);
    procedure TbitensIt_ProdutoChange(Sender: TField);
    procedure TbitensPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TbitensBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DspedidosDataChange(Sender: TObject; Field: TField);
    procedure TbpedidosBeforePost(DataSet: TDataSet);
    procedure TbpedidosAfterPost(DataSet: TDataSet);
    procedure TbClientesAfterPost(DataSet: TDataSet);
    procedure TbfornecedoresAfterPost(DataSet: TDataSet);
    procedure TbprodutosAfterPost(DataSet: TDataSet);
    procedure tbFormasPagamentoAfterPost(DataSet: TDataSet);
    procedure TbInformativoAfterPost(DataSet: TDataSet);
    procedure tbVendedoresAfterPost(DataSet: TDataSet);
    procedure tbUnidadesAfterPost(DataSet: TDataSet);
    procedure TPermissoesAfterPost(DataSet: TDataSet);
    procedure TFuncionarioAfterPost(DataSet: TDataSet);
    procedure TCombustivelAfterPost(DataSet: TDataSet);
    procedure TFrota_DetailBeforePost(DataSet: TDataSet);
    procedure TbprodutosBeforePost(DataSet: TDataSet);
    procedure TbpedidosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TFornecedorDetailAfterPost(DataSet: TDataSet);
    procedure TFrota_DetailAfterPost(DataSet: TDataSet);
    procedure TbitensUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure mdMailSlot1MessageAvail(Sender: TObject; Msg: String);
    procedure RedeAtualizaDadosExecute(Sender: TObject);
    procedure RedeGravaDadosExecute(Sender: TObject);
    procedure TbfornecedoresAfterDelete(DataSet: TDataSet);
    procedure TbClientesAfterDelete(DataSet: TDataSet);
    procedure TbprodutosAfterDelete(DataSet: TDataSet);
    procedure TbpedidosAfterDelete(DataSet: TDataSet);
    procedure TbitensAfterDelete(DataSet: TDataSet);
    procedure tbFormasPagamentoAfterDelete(DataSet: TDataSet);
    procedure TDespesasAfterPost(DataSet: TDataSet);
    procedure TDespesasAfterDelete(DataSet: TDataSet);
    procedure TbInformativoAfterDelete(DataSet: TDataSet);
    procedure tbUnidadesAfterDelete(DataSet: TDataSet);
    procedure TPermissoesAfterDelete(DataSet: TDataSet);
    procedure TFuncionarioAfterDelete(DataSet: TDataSet);
    procedure TCombustivelAfterDelete(DataSet: TDataSet);
    procedure TFluxoCaixaAfterDelete(DataSet: TDataSet);
    procedure TFluxoCaixaAfterPost(DataSet: TDataSet);
    procedure tbVendedoresAfterDelete(DataSet: TDataSet);
    procedure TFrota_MasterAfterDelete(DataSet: TDataSet);
    procedure TFrota_MasterAfterPost(DataSet: TDataSet);
    procedure TFrota_DetailAfterDelete(DataSet: TDataSet);
    procedure TFornecedorDetailAfterDelete(DataSet: TDataSet);
    procedure TClienteDetailAfterPost(DataSet: TDataSet);
    procedure TClienteDetailAfterDelete(DataSet: TDataSet);
    procedure TVendedorDetailAfterDelete(DataSet: TDataSet);
    procedure TVendedorDetailAfterPost(DataSet: TDataSet);
    procedure tbEmpresasAfterDelete(DataSet: TDataSet);
    procedure tbEmpresasAfterPost(DataSet: TDataSet);
    procedure TEmbalagensAfterPost(DataSet: TDataSet);
    procedure TbClientesBeforePost(DataSet: TDataSet);
    procedure TPendenciasBoletoAfterPost(DataSet: TDataSet);
    procedure TBoletoAfterPost(DataSet: TDataSet);
    procedure TDespesasFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure TDetailProdutoAfterPost(DataSet: TDataSet);
    procedure TContasPagarAfterPost(DataSet: TDataSet);
    procedure TB_ParcialAfterPost(DataSet: TDataSet);
    procedure TB_ParcialAfterDelete(DataSet: TDataSet);
    procedure tbEntradaProdutoMasterAfterPost(DataSet: TDataSet);
    procedure tblEntradaProdutoDetalheAfterPost(DataSet: TDataSet);
    procedure tblEntradaProdutoDetalheCalcFields(DataSet: TDataSet);
    procedure tbEntradaProdutoMasterAfterDelete(DataSet: TDataSet);
    procedure tbCPGMasterAfterPost(DataSet: TDataSet);
    procedure tbCPGDetalheAfterPost(DataSet: TDataSet);
    procedure tbCPRMasterAfterPost(DataSet: TDataSet);
    procedure tbCPRDetalheAfterPost(DataSet: TDataSet);
    procedure tbEstoqueAfterPost(DataSet: TDataSet);
    procedure tbCPGDetalheCalcFields(DataSet: TDataSet);
    procedure tbCPGDetalheBeforePost(DataSet: TDataSet);
    procedure tbCPGMasterAfterDelete(DataSet: TDataSet);
    procedure tbCPRDetalheCalcFields(DataSet: TDataSet);
    procedure tbCPRMasterAfterDelete(DataSet: TDataSet);
    procedure tbEntradaProdutoMasterBeforePost(DataSet: TDataSet);
    procedure tbCPRDetalheBeforePost(DataSet: TDataSet);
    procedure tbFormaPagtoMasterAfterPost(DataSet: TDataSet);
    procedure tbFormaPagtoDetalheAfterPost(DataSet: TDataSet);
    procedure tbPerdaMasterAfterPost(DataSet: TDataSet);
    procedure tbPerdaDetalheAfterPost(DataSet: TDataSet);
    procedure tbPerdaMasterAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

uses UPedidos, UCadClie, UMudarSenha, UCadastrodeDespesas,
  UConsultadeFaturadosPendentes;

{$R *.dfm}


function StrToIntRange(Const S: String; Min, Max: Longint): Longint;
begin
//result := StrToInt(S);
// if (result < Min) or (result > Max) then
//  begin raise ERangeError.CreateFmt('%d está fora da faixa de valores permitidos de %d..%d', [Result, Min, Max]);
//  end;
end;

procedure TDmDados.TbitensAfterPost(DataSet: TDataSet);
begin
{if dmdados.TbitensIt_Unid.AsString = '' then
  raise Exception.Create('UNIDADE NÃO PODE FICAR EM BRANCO.');

if dmdados.TbitensIt_Quantidade.AsString = '' then
  raise Exception.Create('QUANTIDADE NÃO PODE FICAR EM BRANCO.');}

DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.TbitensCalcFields(DataSet: TDataSet);
begin
    TbitensValoritem.value:=
   (TbitensIt_Quantidade.value*TbitensIt_valor.value);


    TbitensValorLucro.value:=                  //MARCOS
    (TbitensIt_Quantidade.value*TbitensIt_Lucro.value); //MARCOS}

    dmdados.TbitensTotalEmba.Value:=
    (dmdados.TbitensIt_Quantidade.Value * dmdados.TbitensIt_VrEmbalagem.Value);

end;

procedure TDmDados.TbitensIt_ProdutoChange(Sender: TField);
begin
{  Tbprodutos.FindKey([tbitensit_Ref.Value]);
//  Tbprodutos.FindKey([tbitensit_Lucro.Value]);  //MARCOS 11/08/06
  Tbitens.Edit;
  TbitensIt_Valor.value:=TbprodutosPro_PrecoVenda.Value;
//  TbitensIt_Lucro.value:=TbprodutosPro_Lucro.Value; //MARCOS  11/08/06
  TbitensIt_Ref.Value:= TbprodutosPro_Ref.Value;
  TbitensIt_Unid.Value:= TbprodutosPro_Unidade.Value;
  TbitensIt_Descricao.Value:= TbprodutosPro_Descricao.Value;}
end;

procedure TDmDados.TbitensPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
(*   { Add 'Bde' to your uses clause for this example }
if (E is EDBEngineError) then
with EDBEngineError(E) do begin
if Errors[ErrorCount - 1].ErrorCode = DBIERR_KEYVIOL then
UpdateAction := uaSkip { key violation, just skip this record }
else
UpdateAction := uaAbort; { don't know what's wrong, abort the update }
end; *)

//     If Pos(UpperCase('key violation'), UpperCase(E.Message)) <> 0 then
//       showmessage('Houve violação de Chave.  Registro já incluido.')
end;

procedure TDmDados.TbitensBeforePost(DataSet: TDataSet);
//VAR
//Ref: Integer;
begin
// 04/02/2014 nova rotina
//  if (dmdados.TbitensIt_Ref.AsString = '') then
//    raise Exception.Create('Produto não Cadastrado!');
//
//  if (DmDados.TbitensIt_Quantidade.AsString = '') then
//    raise Exception.Create('Informe a Quantidade!');
//
//  if (dmdados.TbitensIt_Valor.AsString = '') then
//    raise Exception.Create('Informe o Valor do Item!');
//
//  if (dmdados.TbitensIt_Unid.AsString = '') then
//    raise Exception.Create('Informe a Unidade do Item!');

///////////////////////////
if dmdados.TbitensIt_Unid.AsString = '¼ DZ' THEN
begin
dmdados.TbitensIt_QtdOvo.Value:= (dmdados.TbitensIt_Quantidade.Value * 4);
DmDados.tblitensIt_UN_GERAL.Value:= 'CX'
end;

if dmdados.TbitensIt_Unid.AsString = '½ DZ' THEN
begin
dmdados.TbitensIt_QtdOvo.Value:= (dmdados.TbitensIt_Quantidade.Value * 6);
DmDados.tblitensIt_UN_GERAL.Value:= 'CX'
end;

if dmdados.TbitensIt_Unid.AsString = 'DZ ½' THEN
begin
dmdados.TbitensIt_QtdOvo.Value:= (dmdados.TbitensIt_Quantidade.Value*18);
DmDados.tblitensIt_UN_GERAL.Value:= 'CX'
end;


if dmdados.TbitensIt_Unid.AsString = 'UN' THEN
begin
dmdados.TbitensIt_QtdOvo.Value:= (dmdados.TbitensIt_Quantidade.Value * 360);
DmDados.tblitensIt_UN_GERAL.Value:= 'UN'

end;

if dmdados.TbitensIt_Unid.AsString = 'DZ' THEN
begin
dmdados.TbitensIt_QtdOvo.Value:= (dmdados.TbitensIt_Quantidade.Value * 12);
DmDados.tblitensIt_UN_GERAL.Value:= 'CX'
end;

if dmdados.TbitensIt_Unid.AsString = 'BD' THEN
begin
dmdados.TbitensIt_QtdOvo.Value:= (dmdados.TbitensIt_Quantidade.Value * 30);
DmDados.tblitensIt_UN_GERAL.Value:= 'CX'
end;

if dmdados.TbitensIt_Unid.AsString = 'CX' THEN
begin
dmdados.TbitensIt_QtdOvo.Value:= (dmdados.TbitensIt_Quantidade.Value * 360);
DmDados.tblitensIt_UN_GERAL.Value:= 'CX'
end;


(*   if dmdados.TbitensStatus.Value = 1 then
   BEGIN
   showmessage('DELETE ESTE ITEM E CADASTRE O NOVO!!!');
   EXIT;
   END; *)

  //    Ref:= StrToInt(dmdados.TbitensIt_Ref.Value);
//      DmDados.Tbprodutos.FindKey([dmdados.TbitensIt_Ref.Value]);
//      DmDados.Tbprodutos.FindKey([Ref]);
     (* dmdados.Tbprodutos.Locate('Pro_Ref', dmdados.TbitensIt_Ref.Value, []);
      if dmdados.TbprodutosPro_QtdeAtual.Value < dmdados.TbitensIt_Quantidade.Value then
      begin
      ShowMessage(' A T E N Ç Ã O  !!! ' +#13+
      ' PRODUTO INSUFICIENTE NO ESTOQUE ' + #13+
      ' VERIFIQUE ');
      exit;
      end; *)
     // else

    (* //DAR BAIXA NO ESTOQUE PARA DUZIA - DZ
     begin
     dmdados.Tbprodutos.Locate('Pro_Ref', dmdados.TbitensIt_Ref.Value, []);
     if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ' THEN
     Begin
     Tbprodutos.Edit;
     TbprodutosPro_QtdeAtual.Value:= TbprodutosPro_QtdeAtual.Value - dmdados.TbitensIt_Quantidade.Value;
     tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA BANDEJA - BD
     if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD' THEN
     Begin
     Tbprodutos.Edit;
     TbprodutosPro_QtdeAtual.Value:=
     TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value * 2.5);
     tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA CAIXA - CX
     if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'CX' THEN
     Begin
     Tbprodutos.Edit;
     TbprodutosPro_QtdeAtual.Value:=
     TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value * 30);
     tbprodutos.Post;
     end;



      // BAIXA NO ESTOQUE DE EMBALAGENS - POUPA
      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - dmdados.TbitensIt_Quantidade.Value;
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - (2.5 * dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - (30 * dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end;

      // BAIXA NO ESTOQUE DE EMBALAGENS - PVC
      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - (0.004 * dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - (0.010 * dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - (0.125*dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end;

      //dmdados.TEmbalagensQtdAtualPvc.Value:=
      //dmdados.TEmbalagensQtdAtualPvc.Value -
    //  end;

        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'DZ') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'PVC')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPvcDz.Value);
        end;

        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'BD') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'PVC')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPvcBd.Value);
        end;

        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'CX') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'PVC')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPvcCx.Value);
        end;



        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'DZ') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'Poupa')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPoupaDz.Value);
        end;

        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'BD') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'Poupa')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPoupaBd.Value);
        end;

        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'CX') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'Poupa')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPoupaCx.Value);
        end; *)


end;

procedure TDmDados.DataModuleCreate(Sender: TObject);
begin
TbClientes.Open;
Tbprodutos.Open;
Tbfornecedores.Open;
Tbpedidos.Open;
Tbitens.Open;
Tbinformativo.Open;
tbVendedores.Open;
tbUnidades.Open;
TPermissoes.Open;
TFuncionario.Open;
tbFormasPagamento.Open;
TCombustivel.Open;
end;

procedure TDmDados.DspedidosDataChange(Sender: TObject; Field: TField);
begin


//FmPedidos.lblNomeVendedor.Caption := TbClientesCli_Vendedor.Value;
//DmDados.TbClientesCli_Vendedor.AsString := FmPedidos.lblNomeVendedor.Caption;
//FmPedidos.dbtextVendedor.Field.AsString:= TbClientesCli_Vendedor.Value;
end;

procedure TDmDados.TbpedidosBeforePost(DataSet: TDataSet);
begin
{DMDados.Tbpedidos.Edit;
TbpedidosPed_VrDesconto.AsCurrency:= (tbPedidosPed_valor.AsCurrency * tbPedidosPed_Desconto.AsCurrency)/100;
TbpedidosPed_VrFinal.AsCurrency:= TbPedidosPed_Valor.AsCurrency - TbpedidosPed_VrDesconto.AsCurrency;

if (fmpedidos.edVr1.Text <> '') and (fmpedidos.chk1.Checked = false) then
dmdados.TbpedidosPago1.Value:= false;

if (fmpedidos.edValor2.Text <> '') and (fmpedidos.chk2.Checked = false) then
dmdados.TbpedidosPago2.Value:= false;

if (fmpedidos.edValor3.Text <> '') and (fmpedidos.chk3.Checked = false)then
dmdados.TbpedidosPago3.Value:= false; }

end;

procedure TDmDados.TbpedidosAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
//DmDados.Tbpedidos.FlushBuffers;  //Comandos de Rede LAN ...MAMO..
//FrmConsultadeFaturadosPendentes.Query1.FlushBuffers;
//FrmConsultadeFaturadosPendentes.Refresh;
//FrmConsultadeFaturadosPendentes.Release;
//FmPedidos.FormRefresh(Self);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbClientesAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.TbClientes.Handle);
//DmDados.TbClientes.FlushBuffers;  //Comandos de Rede LAN ...MAMO..
//FrmCadClie.FormRefresh(Self);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbfornecedoresAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.Tbfornecedores.Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbprodutosAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.Tbprodutos.Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.tbFormasPagamentoAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.tbFormasPagamento.Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbInformativoAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.TbInformativo.Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.tbVendedoresAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.tbVendedores.Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.tbUnidadesAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.tbUnidades.Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TPermissoesAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.TPermissoes.Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFuncionarioAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.TFuncionario.Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TCombustivelAfterPost(DataSet: TDataSet);
begin
DBISaveChanges(DmDados.TCombustivel.Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFrota_DetailBeforePost(DataSet: TDataSet);
begin
{DMDados.TFrota_Detail.Edit;
DMDados.TFrota_DetailKm_Rodado.Value:= DMDados.TFrota_DetailKm_Final.Value - DMDados.TFrota_DetailKm_Inicial.Value;
DMDados.TFrota_DetailTempo_Decorrido.Value:= DMDados.TFrota_DetailHora_Final.Value - DMDados.TFrota_DetailHora_Inicial.Value;
//Mas ki Bustanga meu....!   ...MAMO...(Nando...isso calcula direto na Base).}
end;

procedure TDmDados.TbprodutosBeforePost(DataSet: TDataSet);
begin
//if DMDados.Tbprodutos.State in [dsInsert] then
//if DMDados.Tbprodutos.FindKey([TbProdutosPro_Ref.Value]) then
//   raise Exception.Create('Registro já existente');
//TbpedidosPed_VrDesconto.AsCurrency:= (tbPedidosPed_valor.AsCurrency * tbPedidosPed_Desconto.AsCurrency)/100;
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_VrComissao.AsCurrency:=
//(dmdados.TbprodutosPro_PrecoVenda.AsCurrency * dmdados.TbprodutosPro_PerComissao.AsCurrency)/100;
end;

procedure TDmDados.TbpedidosPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
{if EDBEngineError(E).Errors[0].ErrorCode = 9729 then
ShowMessage('O registro já existe!');
Action:= daAbort;}
end;

procedure TDmDados.TFornecedorDetailAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFrota_DetailAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbitensUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
{ Add 'Bde' to your uses clause for this example }
(*{if (E is EDBEngineError) then
with EDBEngineError(E) do begin
if Errors[ErrorCount - 1].ErrorCode = DBIERR_KEYVIOL then
UpdateAction := uaSkip { key violation, just skip this record }
else
UpdateAction := uaAbort; { don't know what's wrong, abort the update }
end;}*)
end;

procedure TDmDados.mdMailSlot1MessageAvail(Sender: TObject; Msg: String);
begin
//  mdMailSlot1.Active := False;
//  If Msg = 'AtualizarBDs' Then
//    RedeAtualizaDados.Execute;
//  mdMailSlot1.Active := True;
end;

procedure TDmDados.RedeAtualizaDadosExecute(Sender: TObject);
Var AtualizaDataSet: Integer;
Begin
//  For AtualizaDataSet := 0 To BancoDados.DataSetCount -1 Do
//    If (BancoDados.DataSets[AtualizaDataSet] Is TTable) And   BancoDados.DataSets[AtualizaDataSet].Active And
//    (BancoDados.DataSets[AtualizaDataSet].State In [dsBrowse]) Then
//    (BancoDados.DataSets[AtualizaDataSet] As TTable).Refresh
//    Else
//    If (BancoDados.DataSets[AtualizaDataSet] Is TQuery) And   BancoDados.DataSets[AtualizaDataSet].Active And
//    (BancoDados.DataSets[AtualizaDataSet].State In [dsBrowse]) Then
//    Begin
//    (BancoDados.DataSets[AtualizaDataSet] As TQuery).Close;
//    (BancoDados.DataSets[AtualizaDataSet] As TQuery).Open;
//    End;
end;

procedure TDmDados.RedeGravaDadosExecute(Sender: TObject);
Var GravaDataSet: Integer;
Begin
//  For GravaDataSet := 0 To BancoDados.DataSetCount -1 Do If   (BancoDados.DataSets[GravaDataSet] Is TTable) Then
//  If BancoDados.DataSets[GravaDataSet].Active Then
//  Begin
//      If (BancoDados.DataSets[GravaDataSet] As TTable).State In [DsBrowse] Then
//      Begin
//      (BancoDados.DataSets[GravaDataSet] As TTable).ApplyUpdates;
//    //  If IBTransaction1.InTransaction Then IBTransaction1.CommitRetaining;
//       (BancoDados.DataSets[GravaDataSet] As TTable).Refresh;
//        SendToMailSlot('*', mdMailSlot1.Slot, 'AtualizarBDs');
//      End;
//  End;
End;
//end;
procedure TDmDados.TbfornecedoresAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbClientesAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbprodutosAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbpedidosAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbitensAfterDelete(DataSet: TDataSet);
begin
//FmPedidos.SomaTotalExternaExecute(self);

//FmPedidos.recalcPedidoClick(self);
//FmPedidos.btnRecalculaLucroClick(self);
//FmPedidos.btnreccomissClick(self);
//RedeGravaDados.Execute;
end;

procedure TDmDados.tbFormasPagamentoAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TDespesasAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
RedeGravaDados.Execute;
end;

procedure TDmDados.TDespesasAfterDelete(DataSet: TDataSet);
begin
//FrmCadastrodeDespesas.TotalizaDespesasExecute(self);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbInformativoAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.tbUnidadesAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TPermissoesAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFuncionarioAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TCombustivelAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFluxoCaixaAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFluxoCaixaAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.tbVendedoresAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFrota_MasterAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFrota_MasterAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFrota_DetailAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TFornecedorDetailAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TClienteDetailAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TClienteDetailAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TVendedorDetailAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.TVendedorDetailAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.tbEmpresasAfterDelete(DataSet: TDataSet);
begin
//RedeGravaDados.Execute;
end;

procedure TDmDados.tbEmpresasAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TEmbalagensAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
//RedeGravaDados.Execute;
end;

procedure TDmDados.TbClientesBeforePost(DataSet: TDataSet);
begin
 { if dmdados.TbClientes.Locate('Cli_SeqRota', dmdados.TbClientesCli_SeqRota.Value, []) then
  begin
  showmessage('JÁ EXISTE UM CLIENTE COM ESTA ROTA !');
//  FrmCadClie.DBEdit1.Text := '';
  exit;
  END;}
end;

procedure TDmDados.TPendenciasBoletoAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.TBoletoAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.TDespesasFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
//var
//Dia, Mes, Ano: word;
//vAno: String;
begin
(*//vAno:= FrmCadastrodeDespesas.edsoAno.Text;
//StrToIntRange

    //    vAno:= StrToInt(FrmCadastrodeDespesas.edAno.Text);
{    Accept := false;
    DecodeDate(TDespesas['Data_Desp'],Ano,Mes,Dia);
    if (Mes=12) and (Ano=2008) then
    Accept := True; *)
end;
procedure TDmDados.TDetailProdutoAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.TContasPagarAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.TB_ParcialAfterPost(DataSet: TDataSet);
var
  totParcial: Double;
begin
  totParcial:= 0;
  DmDados.TB_Parcial.First;
  while not DmDados.TB_Parcial.Eof do
  begin
  totParcial:= totParcial + DmDados.TB_ParcialValor.Value;
  DmDados.TB_Parcial.Next;
  end;
  DmDados.Tbpedidos.Edit;
  DmDados.TbpedidosTotalParcial.Value:= totParcial;
  DmDados.TbpedidosTotalPendente.Value:=
  (dmdados.TbpedidosPed_VrFinal.Value - DmDados.TbpedidosTotalParcial.Value);

//  dmdados.TbpedidosPed_VrFinal.Value:=
// (dmdados.TbpedidosPed_VrFinal.Value - DmDados.TbpedidosTotalParcial.Value);

DBISaveChanges((DataSet as TTable).Handle);

end;

procedure TDmDados.TB_ParcialAfterDelete(DataSet: TDataSet);
var
  totParcial: Double;
begin
  totParcial:= 0;
  DmDados.TB_Parcial.First;
  while not DmDados.TB_Parcial.Eof do
  begin
  totParcial:= totParcial + DmDados.TB_ParcialValor.Value;
  DmDados.TB_Parcial.Next;
  end;
  DmDados.Tbpedidos.Edit;
  DmDados.TbpedidosTotalParcial.Value:= totParcial;
  DmDados.TbpedidosTotalPendente.Value:=
  (dmdados.TbpedidosPed_VrFinal.Value - DmDados.TbpedidosTotalParcial.Value);

//  dmdados.TbpedidosPed_VrFinal.Value:=
// (dmdados.TbpedidosPed_VrFinal.Value - DmDados.TbpedidosTotalParcial.Value)

end;

procedure TDmDados.tbEntradaProdutoMasterAfterPost(DataSet: TDataSet);
//var
//ValorTotal: double;
begin
//      with DmDados.tblEntradaProdutoDetalhe do
//      begin
//            ValorTotal:= 0;
//            DisableControls;
//            first;
//            while not eof do
//            begin
//            ValorTotal:= ValorTotal + DmDados.tblEntradaProdutoDetalheTotValor.Value ;
//            next;
//            end;
//            enablecontrols;
//      end;
//DmDados.tblEntradaProdutoMaster.Edit;
//DmDados.tblEntradaProdutoMaster.FieldByName('VALORNOTE').AsFloat := ValorTotal;    //VALORNOTE

DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tblEntradaProdutoDetalheAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tblEntradaProdutoDetalheCalcFields(
  DataSet: TDataSet);
begin
//CALCULO DO VALOR TOTAL
DmDados.tblEntradaProdutoDetalheTotValor.Value:=
(DmDados.tblEntradaProdutoDetalheQTD.Value * dmdados.tblEntradaProdutoDetalheVLRUNIT.Value);

//CALCULO DO TOTAL DE CAIXAS
//DmDados.tblEntradaProdutoDetalheTotCX.Value:=
//DmDados.tblEntradaProdutoD

end;

procedure TDmDados.tbEntradaProdutoMasterAfterDelete(DataSet: TDataSet);
var
ValorTotal: double;
begin
      with DmDados.tblEntradaProdutoDetalhe do
      begin
            ValorTotal:= 0;
            DisableControls;
            first;
            while not eof do
            begin
            ValorTotal:= ValorTotal + DmDados.tblEntradaProdutoDetalheTotValor.Value ;
            next;
            end;
            enablecontrols;
      end;
DmDados.tbEntradaProdutoMaster.Edit;
DmDados.tbEntradaProdutoMaster.FieldByName('VALORNOTE').AsFloat := ValorTotal     ; //VALORNOTE
end;

procedure TDmDados.tbCPGMasterAfterPost(DataSet: TDataSet);
var
  totGeral : Double;
begin
  with DmDados.tbCPGDetalhe do
  begin
  totGeral := 0;
  DisableControls;
  First;
    while not Eof do
    begin
    totGeral := totGeral + tbCPGDetalheTotVrGrade.Value;
    Next;
    end;
  EnableControls;
  end;
  dmdados.tbCPGMaster.Edit;
  DmDados.tbCPGMasterValorTotal.Value := totGeral;

DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tbCPGDetalheAfterPost(DataSet: TDataSet);
//var
//  totGeral : Real;
begin
//  totGeral := 0;
//
//  with DmDados.tbCPGDetalhe do
//  begin
//    while not Eof do
//    First;
//    totGeral := totGeral + tbCPGDetalheTotVrGrade.Value;
//    Next;
//  end;

DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tbCPRMasterAfterPost(DataSet: TDataSet);
var
  totGeral : Double;
begin
  with DmDados.tbCPRDetalhe do
  begin
  totGeral := 0;
  DisableControls;
  First;
    while not Eof do
    begin
    totGeral := totGeral + tbCPRDetalheTotVrGrade.Value;
    Next;
    end;
  EnableControls;
  end;
  dmdados.tbCPRMaster.Edit;
  DmDados.tbCPRMasterValorTotal.Value := totGeral;

DBISaveChanges((DataSet as TTable).Handle);
//dmdados.tbCPRMaster.Refresh;
end;

procedure TDmDados.tbCPRDetalheAfterPost(DataSet: TDataSet);
begin
//DmDados.tbCPRDetalhe.Refresh;
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tbEstoqueAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tbCPGDetalheCalcFields(DataSet: TDataSet);
begin
//DmDados.tbCPGDetalheTotVrGrade.Value:=
//(DmDados.tbCPGDetalheValorParcela.Value + (DmDados.tbCPGDetalheValorParcela.Value * DmDados.tbCPGDetalheVrJuros.Value /100) +
//(DmDados.tbCPGDetalheValorParcela.Value * DmDados.tbCPGDetalheVrMora.Value /100) + DmDados.tbCPGDetalheTipoDespesa.Value);


DmDados.tbCPGDetalheTotVrGrade.Value:=
(DmDados.tbCPGDetalheValorParcela.Value +
 DmDados.tbCPGDetalheVrJuros.Value +
 DmDados.tbCPGDetalheVrMora.Value +
 DmDados.tbCPGDetalheTipoDespesa.Value);

end;

procedure TDmDados.tbCPGDetalheBeforePost(DataSet: TDataSet);
//var
//  totGeral : Real;
begin
//  totGeral := 0;
//
//  with DmDados.tbCPGDetalhe do
//  begin
//    while not Eof do
//    First;
//    totGeral := totGeral + tbCPGDetalheTotVrGrade.Value;
//    Next;
//  end;
//
end;

procedure TDmDados.tbCPGMasterAfterDelete(DataSet: TDataSet);
var
  totGeral : Double;
begin
  with DmDados.tbCPGDetalhe do
  begin
  totGeral := 0;
  DisableControls;
  First;
    while not Eof do
    begin
    totGeral := totGeral + tbCPGDetalheTotVrGrade.Value;
    Next;
    end;
  EnableControls;
  end;
  dmdados.tbCPGMaster.Edit;
  DmDados.tbCPGMasterValorTotal.Value := totGeral;

DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tbCPRDetalheCalcFields(DataSet: TDataSet);
begin
//DmDados.tbCPRDetalheTotVrGrade.Value:=
//(DmDados.tbCPRDetalheValorParcela.Value + (DmDados.tbCPRDetalheValorParcela.Value * DmDados.tbCPRDetalheVrJuros.Value /100) +
//(DmDados.tbCPRDetalheValorParcela.Value * DmDados.tbCPRDetalheVrMora.Value /100) + DmDados.tbCPRDetalheTipoDespesa.Value);



DmDados.tbCPRDetalheTotVrGrade.Value:=
(DmDados.tbCPRDetalheValorParcela.Value +
 DmDados.tbCPRDetalheVrJuros.Value +
 DmDados.tbCPRDetalheVrMora.Value +
 DmDados.tbCPRDetalheTipoDespesa.Value);

end;

procedure TDmDados.tbCPRMasterAfterDelete(DataSet: TDataSet);
var
  totGeral : Double;
begin
  with DmDados.tbCPRDetalhe do
  begin
  totGeral := 0;
  DisableControls;
  First;
    while not Eof do
    begin
    totGeral := totGeral + tbCPRDetalheTotVrGrade.Value;
    Next;
    end;
  EnableControls;
  end;
  dmdados.tbCPRMaster.Edit;
  DmDados.tbCPRMasterValorTotal.Value := totGeral;
end;

procedure TDmDados.tbEntradaProdutoMasterBeforePost(DataSet: TDataSet);
var
ValorTotal: double;
begin
      with DmDados.tblEntradaProdutoDetalhe do
      begin
            ValorTotal:= 0;
            DisableControls;
            first;
            while not eof do
            begin
            ValorTotal:= ValorTotal + DmDados.tblEntradaProdutoDetalheTotValor.Value ;
            next;
            end;
            enablecontrols;
      end;
DmDados.tbEntradaProdutoMaster.Edit;
DmDados.tbEntradaProdutoMaster.FieldByName('VALORNOTE').AsFloat := ValorTotal;    //VALORNOTE
end;

procedure TDmDados.tbCPRDetalheBeforePost(DataSet: TDataSet);
begin
//DmDados.tbCPRDetalhe.Edit;
//DmDados.tbCPRDetalheTotalParcela.Value:=
//(DmDados.tbCPRDetalheValorParcela.Value + DmDados.tbCPRDetalheVrJuros.Value +
//dmdados.tbCPRDetalheVrMora.Value + DmDados.tbCPRDetalheTipoDespesa.Value);
end;

procedure TDmDados.tbFormaPagtoMasterAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tbFormaPagtoDetalheAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tbPerdaMasterAfterPost(DataSet: TDataSet);
var
  totGeral : Double;
begin
  with DmDados.tbPerdaDetalhe do
  begin
  totGeral := 0;
  DisableControls;
  First;
    while not Eof do
    begin
    totGeral := totGeral + dmdados.tblPerdaDetalheValor.Value;
    Next;
    end;
  EnableControls;
  end;
  dmdados.tbPerdaMaster.Edit;
  DmDados.tblPerdaMasterValorTotal.Value := totGeral;

DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tbPerdaDetalheAfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
end;

procedure TDmDados.tbPerdaMasterAfterDelete(DataSet: TDataSet);
var
  totGeral : Double;
begin
  with DmDados.tbPerdaDetalhe do
  begin
  totGeral := 0;
  DisableControls;
  First;
    while not Eof do
    begin
    totGeral := totGeral + dmdados.tblPerdaDetalheValor.Value;
    Next;
    end;
  EnableControls;
  end;
  dmdados.tbPerdaMaster.Edit;
  DmDados.tblPerdaMasterValorTotal.Value := totGeral;
end;

end.
