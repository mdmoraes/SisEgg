object DmDados: TDmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 252
  Top = 8
  Height = 704
  Width = 853
  object DsClientes: TDataSource
    AutoEdit = False
    DataSet = TbClientes
    Left = 24
    Top = 12
  end
  object TbClientes: TTable
    Active = True
    BeforePost = TbClientesBeforePost
    AfterPost = TbClientesAfterPost
    AfterDelete = TbClientesAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Cli_Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Cli_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cli_NFantasia'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cli_CGC'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Cli_Inscricao'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cli_PessoaFJ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Cli_Endereco'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Cli_EndNumero'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Cli_PontoReferencia'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cli_Bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Cli_Cidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Cli_Estado'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Cli_Cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Cli_Fax'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cli_Fone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cli_Celular'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cli_Contato2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Cli_Contato'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Cli_Email'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Cli_pagina'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Cli_Conceito'
        DataType = ftInteger
      end
      item
        Name = 'Cli_DataCadastro'
        DataType = ftDate
      end
      item
        Name = 'Cli_Cpf'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cli_Rg'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cli_Obs'
        DataType = ftMemo
        Size = 100
      end
      item
        Name = 'Cli_Vendedor'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Cli_Data_Nasc_Fisica'
        DataType = ftDate
      end
      item
        Name = 'Cli_Data_Nasc_Cont1'
        DataType = ftDate
      end
      item
        Name = 'Cli_Data_Nasc_Cont2'
        DataType = ftDate
      end
      item
        Name = 'Cli_Data_Nasc_Prop1'
        DataType = ftDate
      end
      item
        Name = 'Cli_Data_Nasc_Prop2'
        DataType = ftDate
      end
      item
        Name = 'Cli_NomeProp1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Cli_NomeProp2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Cli_UltimaCompra'
        DataType = ftDate
      end
      item
        Name = 'Cli_Status'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cli_rota'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cli_DiadaSemana'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cli_Segunda'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cli_Terca'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cli_Quarta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cli_Quinta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cli_Sexta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cli_Sabado'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cli_Domingo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cli_SeqRota'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Cli_RotaSegunda'
        DataType = ftFloat
      end
      item
        Name = 'Cli_RotaTerca'
        DataType = ftFloat
      end
      item
        Name = 'Cli_RotaQuarta'
        DataType = ftFloat
      end
      item
        Name = 'Cli_RotaQuinta'
        DataType = ftFloat
      end
      item
        Name = 'Cli_RotaSexta'
        DataType = ftFloat
      end
      item
        Name = 'Cli_RotaSabado'
        DataType = ftFloat
      end
      item
        Name = 'Cli_RotaDomingo'
        DataType = ftFloat
      end
      item
        Name = 'Cli_Forma'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cli_Prazo'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Fields = 'Cli_Codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'ICli_SeqRota'
        Fields = 'Cli_SeqRota'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICli_NFantasia'
        Fields = 'Cli_NFantasia'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICli_Cliente'
        Fields = 'Cli_Cliente'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICli_Codigo'
        Fields = 'Cli_Codigo'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICli_RotaSegunda'
        Fields = 'Cli_RotaSegunda'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICli_RotaTerca'
        Fields = 'Cli_RotaTerca'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICli_RotaQuarta'
        Fields = 'Cli_RotaQuarta'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICli_RotaQuinta'
        Fields = 'Cli_RotaQuinta'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICli_RotaSexta'
        Fields = 'Cli_RotaSexta'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICli_RotaSabado'
        Fields = 'Cli_RotaSabado'
        Options = [ixCaseInsensitive]
      end>
    IndexFieldNames = 'Cli_Codigo'
    StoreDefs = True
    TableName = 'Clientes.db'
    Left = 82
    Top = 12
    object TbClientesCli_Codigo: TIntegerField
      FieldName = 'Cli_Codigo'
    end
    object TbClientesCli_Cliente: TStringField
      FieldName = 'Cli_Cliente'
      Size = 60
    end
    object TbClientesCli_CGC: TStringField
      FieldName = 'Cli_CGC'
      EditMask = '99.999.999/9999-99;1;_'
      Size = 18
    end
    object TbClientesCli_Inscricao: TStringField
      FieldName = 'Cli_Inscricao'
      EditMask = '999.999.999.999;1;_'
      Size = 15
    end
    object TbClientesCli_Endereco: TStringField
      FieldName = 'Cli_Endereco'
      Size = 50
    end
    object TbClientesCli_Bairro: TStringField
      FieldName = 'Cli_Bairro'
      Size = 30
    end
    object TbClientesCli_Cidade: TStringField
      FieldName = 'Cli_Cidade'
      Size = 30
    end
    object TbClientesCli_Estado: TStringField
      FieldName = 'Cli_Estado'
      Size = 2
    end
    object TbClientesCli_Cep: TStringField
      FieldName = 'Cli_Cep'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object TbClientesCli_Fax: TStringField
      FieldName = 'Cli_Fax'
      Size = 15
    end
    object TbClientesCli_Fone1: TStringField
      FieldName = 'Cli_Fone1'
      Size = 15
    end
    object TbClientesCli_Celular: TStringField
      FieldName = 'Cli_Celular'
      Size = 15
    end
    object TbClientesCli_Contato2: TStringField
      FieldName = 'Cli_Contato2'
      Size = 30
    end
    object TbClientesCli_Contato: TStringField
      FieldName = 'Cli_Contato'
      Size = 30
    end
    object TbClientesCli_Email: TStringField
      FieldName = 'Cli_Email'
      Size = 50
    end
    object TbClientesCli_pagina: TStringField
      FieldName = 'Cli_pagina'
      Size = 80
    end
    object TbClientesCli_Conceito: TIntegerField
      FieldName = 'Cli_Conceito'
    end
    object TbClientesCli_DataCadastro: TDateField
      FieldName = 'Cli_DataCadastro'
    end
    object TbClientesCli_Cpf: TStringField
      FieldName = 'Cli_Cpf'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object TbClientesCli_Rg: TStringField
      FieldName = 'Cli_Rg'
      Size = 15
    end
    object TbClientesCli_Obs: TMemoField
      FieldName = 'Cli_Obs'
      BlobType = ftMemo
      Size = 100
    end
    object TbClientesCli_Vendedor: TStringField
      FieldName = 'Cli_Vendedor'
      Size = 35
    end
    object TbClientesCli_Data_Nasc_Fisica: TDateField
      FieldName = 'Cli_Data_Nasc_Fisica'
      EditMask = '!99/99/0000;1;_'
    end
    object TbClientesCli_Data_Nasc_Cont1: TDateField
      FieldName = 'Cli_Data_Nasc_Cont1'
      EditMask = '!99/99/0000;1;_'
    end
    object TbClientesCli_Data_Nasc_Cont2: TDateField
      FieldName = 'Cli_Data_Nasc_Cont2'
      EditMask = '!99/99/0000;1;_'
    end
    object TbClientesCli_Data_Nasc_Prop1: TDateField
      FieldName = 'Cli_Data_Nasc_Prop1'
      EditMask = '!99/99/0000;1;_'
    end
    object TbClientesCli_Data_Nasc_Prop2: TDateField
      FieldName = 'Cli_Data_Nasc_Prop2'
      EditMask = '!99/99/0000;1;_'
    end
    object TbClientesCli_NomeProp1: TStringField
      FieldName = 'Cli_NomeProp1'
      Size = 50
    end
    object TbClientesCli_NomeProp2: TStringField
      FieldName = 'Cli_NomeProp2'
      Size = 50
    end
    object TbClientesCli_NFantasia: TStringField
      FieldName = 'Cli_NFantasia'
      Size = 60
    end
    object TbClientesCli_PessoaFJ: TStringField
      FieldName = 'Cli_PessoaFJ'
      Size = 10
    end
    object TbClientesCli_PontoReferencia: TStringField
      FieldName = 'Cli_PontoReferencia'
      Size = 60
    end
    object TbClientesCli_UltimaCompra: TDateField
      FieldName = 'Cli_UltimaCompra'
    end
    object TbClientesCli_Status: TStringField
      FieldName = 'Cli_Status'
      Size = 15
    end
    object TbClientesCli_Rota: TStringField
      FieldName = 'Cli_Rota'
      Size = 15
    end
    object TbClientesCli_EndNumero: TStringField
      FieldName = 'Cli_EndNumero'
      Size = 10
    end
    object TbClientesCli_DiadaSemana: TStringField
      FieldName = 'Cli_DiadaSemana'
    end
    object TbClientesCli_Segunda: TStringField
      FieldName = 'Cli_Segunda'
    end
    object TbClientesCli_Terca: TStringField
      FieldName = 'Cli_Terca'
    end
    object TbClientesCli_Quarta: TStringField
      FieldName = 'Cli_Quarta'
    end
    object TbClientesCli_Quinta: TStringField
      FieldName = 'Cli_Quinta'
    end
    object TbClientesCli_Sexta: TStringField
      FieldName = 'Cli_Sexta'
    end
    object TbClientesCli_Sabado: TStringField
      FieldName = 'Cli_Sabado'
    end
    object TbClientesCli_RotaSegunda: TFloatField
      FieldName = 'Cli_RotaSegunda'
      DisplayFormat = '#.0'
      EditFormat = '#.0'
    end
    object TbClientesCli_RotaTerca: TFloatField
      FieldName = 'Cli_RotaTerca'
    end
    object TbClientesCli_RotaQuarta: TFloatField
      FieldName = 'Cli_RotaQuarta'
    end
    object TbClientesCli_RotaQuinta: TFloatField
      FieldName = 'Cli_RotaQuinta'
    end
    object TbClientesCli_RotaSexta: TFloatField
      FieldName = 'Cli_RotaSexta'
    end
    object TbClientesCli_RotaSabado: TFloatField
      FieldName = 'Cli_RotaSabado'
    end
    object TbClientesCli_Domingo: TStringField
      FieldName = 'Cli_Domingo'
    end
    object TbClientesCli_SeqRota: TStringField
      FieldName = 'Cli_SeqRota'
      Size = 10
    end
    object TbClientesCli_RotaDomingo: TFloatField
      FieldName = 'Cli_RotaDomingo'
    end
    object tbClientesCli_Forma: TStringField
      FieldName = 'Cli_Forma'
    end
    object tbClientesCli_Prazo: TStringField
      FieldName = 'Cli_Prazo'
    end
  end
  object BancoDados: TDatabase
    AliasName = 'SysEgg'
    Connected = True
    DatabaseName = 'BancoDados'
    KeepConnection = False
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 540
    Top = 8
  end
  object DsInformativo: TDataSource
    DataSet = TbInformativo
    Left = 172
    Top = 11
  end
  object TbInformativo: TTable
    Active = True
    AfterPost = TbInformativoAfterPost
    AfterDelete = TbInformativoAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Inf_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Inf_Fornecedor'
        DataType = ftInteger
      end
      item
        Name = 'Inf_produto'
        DataType = ftInteger
      end
      item
        Name = 'Inf_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Inf_Receber'
        DataType = ftInteger
      end
      item
        Name = 'Inf_Pagar'
        DataType = ftInteger
      end
      item
        Name = 'Inf_NF'
        DataType = ftInteger
      end
      item
        Name = 'Inf_Vendedores'
        DataType = ftInteger
      end
      item
        Name = 'Inf_Funcionarios'
        DataType = ftInteger
      end
      item
        Name = 'Inf_Frota'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'INFORMATIVO.db'
    Left = 214
    Top = 14
    object TbInformativoInf_Cliente: TIntegerField
      FieldName = 'Inf_Cliente'
    end
    object TbInformativoInf_Fornecedor: TIntegerField
      FieldName = 'Inf_Fornecedor'
    end
    object TbInformativoInf_produto: TIntegerField
      FieldName = 'Inf_produto'
    end
    object TbInformativoInf_Pedido: TIntegerField
      FieldName = 'Inf_Pedido'
    end
    object TbInformativoInf_Receber: TIntegerField
      FieldName = 'Inf_Receber'
    end
    object TbInformativoInf_Pagar: TIntegerField
      FieldName = 'Inf_Pagar'
    end
    object TbInformativoInf_NF: TIntegerField
      FieldName = 'Inf_NF'
    end
    object TbInformativoInf_Vendedores: TIntegerField
      FieldName = 'Inf_Vendedores'
    end
    object TbInformativoInf_Funcionarios: TIntegerField
      FieldName = 'Inf_Funcionarios'
    end
    object TbInformativoInf_Frota: TIntegerField
      FieldName = 'Inf_Frota'
    end
  end
  object Dsfornecedores: TDataSource
    AutoEdit = False
    DataSet = Tbfornecedores
    Left = 24
    Top = 61
  end
  object Tbfornecedores: TTable
    Active = True
    AfterPost = TbfornecedoresAfterPost
    AfterDelete = TbfornecedoresAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'For_Codigo'
        DataType = ftInteger
      end
      item
        Name = 'For_Razao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'For_CGC'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'For_Inscricao'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'For_Endereco'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'For_Bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'For_Cidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'For_Estado'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'For_Cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'For_Fax'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'For_Fone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'For_Celualar'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'For_Contato'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'For_Email'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'For_Pagina'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'For_Conceito'
        DataType = ftInteger
      end
      item
        Name = 'For_Cpf'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'For_Rg'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'For_DataCadastro'
        DataType = ftDate
      end
      item
        Name = 'For_Obs'
        DataType = ftMemo
        Size = 100
      end>
    IndexDefs = <
      item
        Fields = 'For_Codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idxFor_Razao'
        Fields = 'For_Razao'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idxFor_CGC'
        Fields = 'For_CGC'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idxFor_DataCadastro'
        Fields = 'For_DataCadastro'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'idxFor_Razao'
    StoreDefs = True
    TableName = 'Fornecedor.db'
    Left = 82
    Top = 63
    object TbfornecedoresFor_Codigo: TIntegerField
      FieldName = 'For_Codigo'
    end
    object TbfornecedoresFor_Razao: TStringField
      FieldName = 'For_Razao'
      Size = 50
    end
    object TbfornecedoresFor_Inscricao: TStringField
      FieldName = 'For_Inscricao'
      EditMask = '999.999.999.999;1;_'
      Size = 15
    end
    object TbfornecedoresFor_Endereco: TStringField
      FieldName = 'For_Endereco'
      Size = 50
    end
    object TbfornecedoresFor_Bairro: TStringField
      FieldName = 'For_Bairro'
      Size = 30
    end
    object TbfornecedoresFor_Cidade: TStringField
      FieldName = 'For_Cidade'
      Size = 30
    end
    object TbfornecedoresFor_Estado: TStringField
      FieldName = 'For_Estado'
      Size = 2
    end
    object TbfornecedoresFor_Cep: TStringField
      FieldName = 'For_Cep'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object TbfornecedoresFor_Fax: TStringField
      FieldName = 'For_Fax'
      Size = 15
    end
    object TbfornecedoresFor_Fone1: TStringField
      FieldName = 'For_Fone1'
      Size = 15
    end
    object TbfornecedoresFor_Celualar: TStringField
      FieldName = 'For_Celualar'
      Size = 15
    end
    object TbfornecedoresFor_Contato: TStringField
      FieldName = 'For_Contato'
      Size = 30
    end
    object TbfornecedoresFor_Email: TStringField
      FieldName = 'For_Email'
      Size = 50
    end
    object TbfornecedoresFor_Pagina: TStringField
      FieldName = 'For_Pagina'
      Size = 80
    end
    object TbfornecedoresFor_Conceito: TIntegerField
      FieldName = 'For_Conceito'
    end
    object TbfornecedoresFor_Cpf: TStringField
      FieldName = 'For_Cpf'
      EditMask = '999.999.999-00;1;_'
      Size = 15
    end
    object TbfornecedoresFor_Rg: TStringField
      FieldName = 'For_Rg'
      Size = 15
    end
    object TbfornecedoresFor_DataCadastro: TDateField
      FieldName = 'For_DataCadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object TbfornecedoresFor_Obs: TMemoField
      FieldName = 'For_Obs'
      BlobType = ftMemo
      Size = 100
    end
    object TbfornecedoresFor_CGC: TStringField
      FieldName = 'For_CGC'
      EditMask = '99.999.999/9999-00;1;_'
      Size = 18
    end
  end
  object Dsprodutos: TDataSource
    DataSet = Tbprodutos
    Left = 24
    Top = 111
  end
  object Tbprodutos: TTable
    Active = True
    BeforePost = TbprodutosBeforePost
    AfterPost = TbprodutosAfterPost
    AfterDelete = TbprodutosAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Pro_Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Pro_Descricao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Pro_Ref'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Pro_Unidade'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Pro_QtdeAtual'
        DataType = ftFloat
      end
      item
        Name = 'Pro_QtdeCritica'
        DataType = ftFloat
      end
      item
        Name = 'Pro_UltimaVenda'
        DataType = ftDate
      end
      item
        Name = 'Pro_PrecoCusto'
        DataType = ftFloat
      end
      item
        Name = 'Pro_Fornecedor'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Pro_PrecoVenda'
        DataType = ftFloat
      end
      item
        Name = 'Pro_Lucro'
        DataType = ftCurrency
      end
      item
        Name = 'Pro_Entrada'
        DataType = ftFloat
      end
      item
        Name = 'Pro_DadaCadastro'
        DataType = ftDate
      end
      item
        Name = 'Pro_Obs'
        DataType = ftMemo
        Size = 100
      end
      item
        Name = 'Pro_Foto'
        DataType = ftGraphic
      end
      item
        Name = 'Pro_PerComissao'
        DataType = ftInteger
      end
      item
        Name = 'Pro_VrComissao'
        DataType = ftCurrency
      end
      item
        Name = 'Pro_QtdAtBandeja'
        DataType = ftFloat
      end
      item
        Name = 'Pro_QtdAtCaixa'
        DataType = ftFloat
      end
      item
        Name = 'Pro_Data1'
        DataType = ftDate
      end
      item
        Name = 'Pro_Data2'
        DataType = ftDate
      end
      item
        Name = 'Pro_Data3'
        DataType = ftDate
      end
      item
        Name = 'Pro_Data4'
        DataType = ftDate
      end
      item
        Name = 'Pro_Valor1'
        DataType = ftFloat
      end
      item
        Name = 'Pro_Valor2'
        DataType = ftFloat
      end
      item
        Name = 'Pro_Valor3'
        DataType = ftFloat
      end
      item
        Name = 'Pro_Valor4'
        DataType = ftFloat
      end
      item
        Name = 'Pro_PrecoMedio'
        DataType = ftFloat
      end
      item
        Name = 'Pro_PrecomeiaDZ'
        DataType = ftCurrency
      end
      item
        Name = 'Pro_PrecoDz'
        DataType = ftCurrency
      end
      item
        Name = 'Pro_PrecoDZemeia'
        DataType = ftCurrency
      end
      item
        Name = 'Pro_PrecoBD'
        DataType = ftCurrency
      end
      item
        Name = 'Pro_PrecoCX'
        DataType = ftCurrency
      end
      item
        Name = 'Pro_QtdAtUnidade'
        DataType = ftFloat
      end
      item
        Name = 'Pro_PrecoUN'
        DataType = ftCurrency
      end
      item
        Name = 'Pro_PrecoquartoDZ'
        DataType = ftCurrency
      end
      item
        Name = 'Pro_Qtd1'
        DataType = ftFloat
      end
      item
        Name = 'Pro_Qtd2'
        DataType = ftFloat
      end
      item
        Name = 'Pro_Qtd3'
        DataType = ftFloat
      end
      item
        Name = 'Pro_Qtd4'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Fields = 'Pro_Codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idxDescricao'
        Fields = 'Pro_Descricao'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idxPro_Ref'
        Fields = 'Pro_Ref'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idx_DataCadastro'
        Fields = 'Pro_DadaCadastro'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IPro_Codigo'
        Fields = 'Pro_Codigo'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'IPro_Codigo'
    StoreDefs = True
    TableName = 'Produtos.db'
    Left = 82
    Top = 114
    object TbprodutosPro_Codigo: TIntegerField
      FieldName = 'Pro_Codigo'
    end
    object TbprodutosPro_Unidade: TStringField
      FieldName = 'Pro_Unidade'
      Size = 10
    end
    object TbprodutosPro_QtdeAtual: TFloatField
      FieldName = 'Pro_QtdeAtual'
    end
    object TbprodutosPro_QtdeCritica: TFloatField
      FieldName = 'Pro_QtdeCritica'
    end
    object TbprodutosPro_UltimaVenda: TDateField
      FieldName = 'Pro_UltimaVenda'
    end
    object TbprodutosPro_PrecoCusto: TCurrencyField
      FieldName = 'Pro_PrecoCusto'
    end
    object TbprodutosPro_PrecoVenda: TCurrencyField
      FieldName = 'Pro_PrecoVenda'
    end
    object TbprodutosPro_Lucro: TCurrencyField
      FieldName = 'Pro_Lucro'
    end
    object TbprodutosPro_Entrada: TFloatField
      FieldName = 'Pro_Entrada'
    end
    object TbprodutosPro_DadaCadastro: TDateField
      FieldName = 'Pro_DadaCadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object TbprodutosPro_Obs: TMemoField
      FieldName = 'Pro_Obs'
      BlobType = ftMemo
      Size = 100
    end
    object TbprodutosPro_Descricao: TStringField
      FieldName = 'Pro_Descricao'
      Size = 50
    end
    object TbprodutosPro_Ref: TStringField
      DisplayWidth = 15
      FieldName = 'Pro_Ref'
      Size = 15
    end
    object TbprodutosPro_Foto: TGraphicField
      FieldName = 'Pro_Foto'
      BlobType = ftGraphic
    end
    object TbprodutosPro_Fornecedor: TStringField
      FieldName = 'Pro_Fornecedor'
      Size = 50
    end
    object TbprodutosPro_PerComissao: TIntegerField
      FieldName = 'Pro_PerComissao'
    end
    object TbprodutosPro_VrComissao: TCurrencyField
      FieldName = 'Pro_VrComissao'
    end
    object TbprodutosPro_QtdAtBandeja: TFloatField
      FieldName = 'Pro_QtdAtBandeja'
    end
    object TbprodutosPro_QtdAtCaixa: TFloatField
      FieldName = 'Pro_QtdAtCaixa'
    end
    object TbprodutosPro_Data1: TDateField
      FieldName = 'Pro_Data1'
      EditMask = '!99/99/0000;1;_'
    end
    object TbprodutosPro_Data2: TDateField
      FieldName = 'Pro_Data2'
      EditMask = '!99/99/0000;1;_'
    end
    object TbprodutosPro_Data3: TDateField
      FieldName = 'Pro_Data3'
      EditMask = '!99/99/0000;1;_'
    end
    object TbprodutosPro_Data4: TDateField
      FieldName = 'Pro_Data4'
      EditMask = '!99/99/0000;1;_'
    end
    object TbprodutosPro_Valor1: TCurrencyField
      FieldName = 'Pro_Valor1'
    end
    object TbprodutosPro_Valor2: TCurrencyField
      FieldName = 'Pro_Valor2'
    end
    object TbprodutosPro_Valor3: TCurrencyField
      FieldName = 'Pro_Valor3'
    end
    object TbprodutosPro_Valor4: TCurrencyField
      FieldName = 'Pro_Valor4'
    end
    object TbprodutosPro_PrecoMedio: TCurrencyField
      FieldName = 'Pro_PrecoMedio'
    end
    object TbprodutosPro_PrecomeiaDZ: TCurrencyField
      FieldName = 'Pro_PrecomeiaDZ'
    end
    object TbprodutosPro_PrecoDZ: TCurrencyField
      FieldName = 'Pro_PrecoDZ'
    end
    object TbprodutosPro_PrecoDZemeia: TCurrencyField
      FieldName = 'Pro_PrecoDZemeia'
    end
    object TbprodutosPro_PrecoBD: TCurrencyField
      FieldName = 'Pro_PrecoBD'
    end
    object TbprodutosPro_PrecoCX: TCurrencyField
      FieldName = 'Pro_PrecoCX'
    end
    object TbprodutosPro_QtdAtUnidade: TFloatField
      FieldName = 'Pro_QtdAtUnidade'
    end
    object TbprodutosPro_PrecoquartoDZ: TCurrencyField
      FieldName = 'Pro_PrecoquartoDZ'
    end
    object TbprodutosPro_PrecoUN: TCurrencyField
      FieldName = 'Pro_PrecoUN'
    end
    object TbprodutosPro_Qtd1: TFloatField
      FieldName = 'Pro_Qtd1'
    end
    object TbprodutosPro_Qtd2: TFloatField
      FieldName = 'Pro_Qtd2'
    end
    object TbprodutosPro_Qtd3: TFloatField
      FieldName = 'Pro_Qtd3'
    end
    object TbprodutosPro_Qtd4: TFloatField
      FieldName = 'Pro_Qtd4'
    end
  end
  object Dspedidos: TDataSource
    DataSet = Tbpedidos
    OnDataChange = DspedidosDataChange
    Left = 24
    Top = 163
  end
  object Tbpedidos: TTable
    Active = True
    BeforePost = TbpedidosBeforePost
    AfterPost = TbpedidosAfterPost
    AfterDelete = TbpedidosAfterDelete
    OnPostError = TbpedidosPostError
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Ped_Numero'
        DataType = ftInteger
      end
      item
        Name = 'Ped_Data'
        DataType = ftDate
      end
      item
        Name = 'Ped_Cliente'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Ped_Valor'
        DataType = ftCurrency
      end
      item
        Name = 'Ped_Lucro'
        DataType = ftCurrency
      end
      item
        Name = 'Ped_VrComissao'
        DataType = ftCurrency
      end
      item
        Name = 'Ped_Nota'
        DataType = ftInteger
      end
      item
        Name = 'Ped_Vendedor'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Ped_Ref'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Ped_Empresa'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Ped_Desconto'
        DataType = ftFloat
      end
      item
        Name = 'Ped_ForPaga'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Ped_DataPaga'
        DataType = ftDate
      end
      item
        Name = 'Ped_VrDesconto'
        DataType = ftCurrency
      end
      item
        Name = 'Ped_VrFinal'
        DataType = ftCurrency
      end
      item
        Name = 'Ped_Prazos'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Ped_CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'Vencimento1'
        DataType = ftDate
      end
      item
        Name = 'Vencimento2'
        DataType = ftDate
      end
      item
        Name = 'Vencimento3'
        DataType = ftDate
      end
      item
        Name = 'Valor1'
        DataType = ftCurrency
      end
      item
        Name = 'Valor2'
        DataType = ftCurrency
      end
      item
        Name = 'Valor3'
        DataType = ftCurrency
      end
      item
        Name = 'Ped_Comissao'
        DataType = ftInteger
      end
      item
        Name = 'Acres'
        DataType = ftFloat
      end
      item
        Name = 'Pago1'
        DataType = ftBoolean
      end
      item
        Name = 'Pago2'
        DataType = ftBoolean
      end
      item
        Name = 'Pago3'
        DataType = ftBoolean
      end
      item
        Name = 'Ped_TotEmba'
        DataType = ftCurrency
      end
      item
        Name = 'BoletoGerado'
        DataType = ftBoolean
      end
      item
        Name = 'DtPgt1'
        DataType = ftDate
      end
      item
        Name = 'DtPgt2'
        DataType = ftDate
      end
      item
        Name = 'TotalCxs'
        DataType = ftFloat
      end
      item
        Name = 'Ped_E'
        DataType = ftInteger
      end
      item
        Name = 'Ped_B'
        DataType = ftInteger
      end
      item
        Name = 'Fechado'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TotalParcial'
        DataType = ftCurrency
      end
      item
        Name = 'TotalPendente'
        DataType = ftCurrency
      end
      item
        Name = 'Ped_Prazo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Ped_Forma'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Lancado'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'TbpedidosIndex1'
        Fields = 'Ped_Numero'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idxPedNumero'
        Fields = 'Ped_Numero'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idxPed_Ref'
        Fields = 'Ped_Ref'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idxPed_Cliente'
        Fields = 'Ped_Cliente'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IPed_E'
        Fields = 'Ped_E'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IPed_B'
        Fields = 'Ped_B'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'Pedidos.db'
    Left = 85
    Top = 165
    object TbpedidosPed_Data: TDateField
      FieldName = 'Ped_Data'
      EditMask = '!99/99/0000;1;_'
    end
    object TbpedidosPed_Cliente: TStringField
      FieldName = 'Ped_Cliente'
      Size = 50
    end
    object TbpedidosPed_Valor: TCurrencyField
      FieldName = 'Ped_Valor'
    end
    object TbpedidosPed_Lucro: TCurrencyField
      FieldName = 'Ped_Lucro'
    end
    object TbpedidosPed_Nota: TIntegerField
      FieldName = 'Ped_Nota'
    end
    object TbpedidosPed_Vendedor: TStringField
      FieldName = 'Ped_Vendedor'
      Size = 35
    end
    object TbpedidosPed_Ref: TStringField
      FieldName = 'Ped_Ref'
      Size = 8
    end
    object TbpedidosPed_Empresa: TStringField
      FieldName = 'Ped_Empresa'
    end
    object TbpedidosPed_Desconto: TFloatField
      FieldName = 'Ped_Desconto'
      currency = True
    end
    object TbpedidosPed_ForPaga: TStringField
      FieldName = 'Ped_ForPaga'
    end
    object TbpedidosPed_DataPaga: TDateField
      FieldName = 'Ped_DataPaga'
      EditMask = '!99/99/0000;1;_'
    end
    object TbpedidosPed_VrDesconto: TCurrencyField
      FieldName = 'Ped_VrDesconto'
    end
    object TbpedidosPed_VrFinal: TCurrencyField
      FieldName = 'Ped_VrFinal'
    end
    object TbpedidosPed_Prazos: TStringField
      FieldName = 'Ped_Prazos'
      Size = 15
    end
    object TbpedidosPed_CodCliente: TIntegerField
      FieldName = 'Ped_CodCliente'
    end
    object TbpedidosVencimento1: TDateField
      FieldName = 'Vencimento1'
    end
    object TbpedidosVencimento2: TDateField
      FieldName = 'Vencimento2'
    end
    object TbpedidosVencimento3: TDateField
      FieldName = 'Vencimento3'
    end
    object TbpedidosPed_Comissao: TIntegerField
      FieldName = 'Ped_Comissao'
    end
    object TbpedidosValor1: TCurrencyField
      FieldName = 'Valor1'
    end
    object TbpedidosValor2: TCurrencyField
      FieldName = 'Valor2'
    end
    object TbpedidosValor3: TCurrencyField
      FieldName = 'Valor3'
    end
    object TbpedidosAcres: TFloatField
      FieldName = 'Acres'
    end
    object TbpedidosPed_VrComissao: TCurrencyField
      FieldName = 'Ped_VrComissao'
    end
    object TbpedidosPago1: TBooleanField
      FieldName = 'Pago1'
    end
    object TbpedidosPago2: TBooleanField
      FieldName = 'Pago2'
    end
    object TbpedidosPago3: TBooleanField
      FieldName = 'Pago3'
    end
    object TbpedidosPed_TotEmba: TCurrencyField
      FieldName = 'Ped_TotEmba'
    end
    object TbpedidosBoletoGerado: TBooleanField
      FieldName = 'BoletoGerado'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbpedidosDtPgt1: TDateField
      FieldName = 'DtPgt1'
    end
    object TbpedidosDtPgt2: TDateField
      FieldName = 'DtPgt2'
    end
    object TbpedidosTotalCxs: TFloatField
      FieldName = 'TotalCxs'
      currency = True
    end
    object TbpedidosPed_E: TIntegerField
      FieldName = 'Ped_E'
    end
    object TbpedidosPed_B: TIntegerField
      FieldName = 'Ped_B'
    end
    object TbpedidosFechado: TStringField
      FieldName = 'Fechado'
      Size = 3
    end
    object TbpedidosTotalParcial: TCurrencyField
      FieldName = 'TotalParcial'
    end
    object TbpedidosTotalPendente: TCurrencyField
      FieldName = 'TotalPendente'
    end
    object TbpedidosLancado: TBooleanField
      FieldName = 'Lancado'
    end
    object TbpedidosPed_Forma: TStringField
      FieldName = 'Ped_Forma'
    end
    object tbTbpedidosPed_Prazo: TStringField
      FieldName = 'Ped_Prazo'
    end
    object TbpedidosPed_Numero: TIntegerField
      FieldName = 'Ped_Numero'
    end
  end
  object DsItens: TDataSource
    DataSet = Tbitens
    Left = 24
    Top = 215
  end
  object Tbitens: TTable
    Active = True
    BeforePost = TbitensBeforePost
    AfterPost = TbitensAfterPost
    AfterDelete = TbitensAfterDelete
    OnCalcFields = TbitensCalcFields
    OnPostError = TbitensPostError
    OnUpdateError = TbitensUpdateError
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'It_Cod'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'It_Numero'
        DataType = ftInteger
      end
      item
        Name = 'It_Produto'
        DataType = ftInteger
      end
      item
        Name = 'It_Descricao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'It_Quantidade'
        DataType = ftFloat
      end
      item
        Name = 'It_Valor'
        DataType = ftCurrency
      end
      item
        Name = 'It_Ref'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'It_Lucro'
        DataType = ftCurrency
      end
      item
        Name = 'It_Unid'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'It_VrComissao'
        DataType = ftCurrency
      end
      item
        Name = 'It_TipoEmb'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'It_VrEmbalagem'
        DataType = ftCurrency
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'It_QtdOvo'
        DataType = ftFloat
      end
      item
        Name = 'It_QtdEmba'
        DataType = ftFloat
      end
      item
        Name = 'It_UN_GERAL'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Fields = 'It_Cod'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'I_iT_Ref'
        Fields = 'It_Ref'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICONTROLE'
        Fields = 'It_Numero'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'ICONTROLE'
    MasterFields = 'Ped_Numero'
    MasterSource = Dspedidos
    StoreDefs = True
    TableName = 'Itens.db'
    Left = 82
    Top = 217
    object TbitensIt_Numero: TIntegerField
      FieldName = 'It_Numero'
    end
    object TbitensIt_Produto: TIntegerField
      FieldName = 'It_Produto'
      OnChange = TbitensIt_ProdutoChange
    end
    object TbitensIt_Quantidade: TFloatField
      FieldName = 'It_Quantidade'
    end
    object TbitensIt_Valor: TCurrencyField
      FieldName = 'It_Valor'
      LookupDataSet = Tbprodutos
      LookupKeyFields = 'Pro_Ref'
      LookupResultField = 'Pro_PrecoVenda'
      KeyFields = 'It_Ref'
    end
    object TbitensValoritem: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valoritem'
      Calculated = True
    end
    object TbitensIt_Lucro: TCurrencyField
      FieldName = 'It_Lucro'
    end
    object TbitensIt_Unid: TStringField
      FieldName = 'It_Unid'
      LookupDataSet = Tbprodutos
      LookupKeyFields = 'Pro_Ref'
      LookupResultField = 'Pro_Unidade'
      KeyFields = 'It_Ref'
      Size = 10
    end
    object TbitensValorLucro: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorLucro'
      Calculated = True
    end
    object TbitensIt_Descricao: TStringField
      FieldName = 'It_Descricao'
      LookupDataSet = Tbprodutos
      Size = 50
    end
    object TbitensIt_Ref: TStringField
      FieldName = 'It_Ref'
      Size = 15
    end
    object TbitensIt_Cod: TAutoIncField
      FieldName = 'It_Cod'
      ReadOnly = True
    end
    object TbitensDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Tbprodutos
      LookupKeyFields = 'Pro_Ref'
      LookupResultField = 'Pro_Descricao'
      KeyFields = 'It_Ref'
      Size = 60
      Lookup = True
    end
    object TbitensUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'Unidade'
      LookupDataSet = Tbprodutos
      LookupKeyFields = 'Pro_Ref'
      LookupResultField = 'Pro_Unidade'
      KeyFields = 'It_Ref'
      Size = 8
      Lookup = True
    end
    object TbitensVrUnit: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'VrUnit'
      LookupDataSet = Tbprodutos
      LookupKeyFields = 'Pro_Ref'
      LookupResultField = 'Pro_PrecoVenda'
      KeyFields = 'It_Ref'
      Lookup = True
    end
    object TbitensIt_VrComissao: TCurrencyField
      FieldName = 'It_VrComissao'
    end
    object TbitensTotComissao: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotComissao'
      Calculated = True
    end
    object TbitensIt_TipoEmb: TStringField
      FieldName = 'It_TipoEmb'
      Size = 10
    end
    object TbitensIt_VrEmbalagem: TCurrencyField
      FieldName = 'It_VrEmbalagem'
    end
    object TbitensTotalEmba: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalEmba'
      Calculated = True
    end
    object TbitensStatus: TIntegerField
      FieldName = 'Status'
    end
    object TbitensIt_QtdOvo: TFloatField
      FieldName = 'It_QtdOvo'
    end
    object TbitensIt_QtdEmba: TFloatField
      FieldName = 'It_QtdEmba'
    end
    object tblitensIt_UN_GERAL: TStringField
      FieldName = 'It_UN_GERAL'
      Size = 10
    end
  end
  object dsVendedores: TDataSource
    DataSet = tbVendedores
    Left = 280
    Top = 8
  end
  object tbVendedores: TTable
    Active = True
    AfterPost = tbVendedoresAfterPost
    AfterDelete = tbVendedoresAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Id_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'End'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Estado'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Cpf'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Rg'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Tel'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Celular'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Fax'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Comissao'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Contato'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 100
      end
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Data_Cadastro'
        DataType = ftDate
      end
      item
        Name = 'Data_Nasc'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Fields = 'Id_Vendedor'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idxNome'
        Fields = 'Nome'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idxCpf'
        Fields = 'Id_Vendedor;Cpf'
        Options = [ixCaseInsensitive]
      end>
    IndexFieldNames = 'Id_Vendedor'
    StoreDefs = True
    TableName = 'Vendedores.db'
    Left = 328
    Top = 8
    object tbVendedoresId_Vendedor: TIntegerField
      FieldName = 'Id_Vendedor'
    end
    object tbVendedoresNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tbVendedoresEnd: TStringField
      FieldName = 'End'
      Size = 50
    end
    object tbVendedoresBairro: TStringField
      FieldName = 'Bairro'
    end
    object tbVendedoresCidade: TStringField
      FieldName = 'Cidade'
    end
    object tbVendedoresEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object tbVendedoresCep: TStringField
      FieldName = 'Cep'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object tbVendedoresCpf: TStringField
      FieldName = 'Cpf'
      EditMask = '999.999.999-00;1;_'
      Size = 15
    end
    object tbVendedoresRg: TStringField
      FieldName = 'Rg'
      Size = 15
    end
    object tbVendedoresTel: TStringField
      FieldName = 'Tel'
      Size = 15
    end
    object tbVendedoresCelular: TStringField
      FieldName = 'Celular'
      Size = 15
    end
    object tbVendedoresFax: TStringField
      FieldName = 'Fax'
      Size = 15
    end
    object tbVendedoresComissao: TStringField
      FieldName = 'Comissao'
      Size = 4
    end
    object tbVendedoresEmail: TStringField
      FieldName = 'Email'
      Size = 40
    end
    object tbVendedoresContato: TStringField
      FieldName = 'Contato'
      Size = 10
    end
    object tbVendedoresObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 100
    end
    object tbVendedoresCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object tbVendedoresData_Cadastro: TDateField
      FieldName = 'Data_Cadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object tbVendedoresData_Nasc: TDateField
      FieldName = 'Data_Nasc'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object tbUnidades: TTable
    Active = True
    AfterPost = tbUnidadesAfterPost
    AfterDelete = tbUnidadesAfterDelete
    DatabaseName = 'SysEgg'
    TableName = 'Unidade.db'
    Left = 216
    Top = 64
    object tbUnidadesId_Unidade: TAutoIncField
      FieldName = 'Id_Unidade'
      ReadOnly = True
    end
    object tbUnidadesUnidade: TStringField
      FieldName = 'Unidade'
      Size = 10
    end
    object tbUnidadesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 15
    end
  end
  object dsUnidades: TDataSource
    DataSet = tbUnidades
    Left = 168
    Top = 64
  end
  object TPermissoes: TTable
    Active = True
    AfterPost = TPermissoesAfterPost
    AfterDelete = TPermissoesAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Usuario'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Senha'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Menu_Cadastro'
        DataType = ftBoolean
      end
      item
        Name = 'Menu_Pedidos'
        DataType = ftBoolean
      end
      item
        Name = 'Menu_Financeiro'
        DataType = ftBoolean
      end
      item
        Name = 'Menu_Relatorios'
        DataType = ftBoolean
      end
      item
        Name = 'Menu_Seguranca'
        DataType = ftBoolean
      end
      item
        Name = 'Menu_M_Direta'
        DataType = ftBoolean
      end
      item
        Name = 'Faturamento'
        DataType = ftBoolean
      end
      item
        Name = 'Financeiro'
        DataType = ftBoolean
      end
      item
        Name = 'Configuracoes'
        DataType = ftBoolean
      end
      item
        Name = 'MudarVisual'
        DataType = ftBoolean
      end
      item
        Name = 'Backup'
        DataType = ftBoolean
      end
      item
        Name = 'Cadastro_Usuario'
        DataType = ftBoolean
      end
      item
        Name = 'Alterar'
        DataType = ftBoolean
      end
      item
        Name = 'Excluir'
        DataType = ftBoolean
      end
      item
        Name = 'Cadastrar'
        DataType = ftBoolean
      end
      item
        Name = 'SenhaGerencial'
        DataType = ftString
        Size = 6
      end>
    IndexDefs = <
      item
        Fields = 'Codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'ISenha'
        Fields = 'Usuario;Senha'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IUsuario'
        Fields = 'Usuario'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICodigo'
        Fields = 'Codigo'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'ICodigo'
    StoreDefs = True
    TableName = 'Permissoes.DB'
    Left = 330
    Top = 62
    object TPermissoesCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TPermissoesUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object TPermissoesSenha: TStringField
      FieldName = 'Senha'
      Size = 6
    end
    object TPermissoesMenu_Cadastro: TBooleanField
      FieldName = 'Menu_Cadastro'
    end
    object TPermissoesMenu_Pedidos: TBooleanField
      FieldName = 'Menu_Pedidos'
    end
    object TPermissoesMenu_Financeiro: TBooleanField
      FieldName = 'Menu_Financeiro'
    end
    object TPermissoesMenu_Relatorios: TBooleanField
      FieldName = 'Menu_Relatorios'
    end
    object TPermissoesMenu_Seguranca: TBooleanField
      FieldName = 'Menu_Seguranca'
    end
    object TPermissoesMenu_M_Direta: TBooleanField
      FieldName = 'Menu_M_Direta'
    end
    object TPermissoesFaturamento: TBooleanField
      FieldName = 'Faturamento'
    end
    object TPermissoesFinanceiro: TBooleanField
      FieldName = 'Financeiro'
    end
    object TPermissoesConfiguracoes: TBooleanField
      FieldName = 'Configuracoes'
    end
    object TPermissoesMudarVisual: TBooleanField
      FieldName = 'MudarVisual'
    end
    object TPermissoesBackup: TBooleanField
      FieldName = 'Backup'
    end
    object TPermissoesCadastro_Usuario: TBooleanField
      FieldName = 'Cadastro_Usuario'
    end
    object TPermissoesAlterar: TBooleanField
      FieldName = 'Alterar'
    end
    object TPermissoesExcluir: TBooleanField
      FieldName = 'Excluir'
    end
    object TPermissoesCadastrar: TBooleanField
      FieldName = 'Cadastrar'
    end
    object TPermissoesSenhaGerencial: TStringField
      FieldName = 'SenhaGerencial'
      Size = 6
    end
  end
  object dsPermissoes: TDataSource
    DataSet = TPermissoes
    Left = 290
    Top = 60
  end
  object TFuncionario: TTable
    Active = True
    AfterPost = TFuncionarioAfterPost
    AfterDelete = TFuncionarioAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'ID_Funcionario'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Estado'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Telefone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Celular'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 100
      end
      item
        Name = 'Contato'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Rg'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cpf'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Data_Nasc'
        DataType = ftDate
      end
      item
        Name = 'Foto_Func'
        DataType = ftGraphic
      end
      item
        Name = 'Data_Admin'
        DataType = ftDate
      end
      item
        Name = 'Data_Demin'
        DataType = ftDate
      end
      item
        Name = 'Num_Prof'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Num_Pis'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Funcao'
        DataType = ftString
        Size = 25
      end>
    IndexDefs = <
      item
        Name = 'TFuncionarioIndex1'
        Fields = 'ID_Funcionario'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'INome_Func'
        Fields = 'Nome'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IData_Nasc'
        Fields = 'Data_Nasc'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'Funcionarios.DB'
    Left = 216
    Top = 176
    object TFuncionarioID_Funcionario: TIntegerField
      FieldName = 'ID_Funcionario'
    end
    object TFuncionarioNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TFuncionarioEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object TFuncionarioBairro: TStringField
      FieldName = 'Bairro'
      Size = 40
    end
    object TFuncionarioCidade: TStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object TFuncionarioEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object TFuncionarioCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object TFuncionarioTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object TFuncionarioCelular: TStringField
      FieldName = 'Celular'
      Size = 15
    end
    object TFuncionarioEmail: TStringField
      FieldName = 'Email'
      Size = 25
    end
    object TFuncionarioObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 100
    end
    object TFuncionarioContato: TStringField
      FieldName = 'Contato'
    end
    object TFuncionarioRg: TStringField
      FieldName = 'Rg'
      Size = 15
    end
    object TFuncionarioCpf: TStringField
      FieldName = 'Cpf'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object TFuncionarioData_Nasc: TDateField
      FieldName = 'Data_Nasc'
      EditMask = '!99/99/0000;1;_'
    end
    object TFuncionarioFoto_Func: TGraphicField
      FieldName = 'Foto_Func'
      BlobType = ftGraphic
    end
    object TFuncionarioData_Admin: TDateField
      FieldName = 'Data_Admin'
      EditMask = '!99/99/0000;1;_'
    end
    object TFuncionarioData_Demin: TDateField
      FieldName = 'Data_Demin'
      EditMask = '!99/99/0000;1;_'
    end
    object TFuncionarioNum_Prof: TStringField
      FieldName = 'Num_Prof'
      Size = 15
    end
    object TFuncionarioNum_Pis: TStringField
      FieldName = 'Num_Pis'
    end
    object TFuncionarioFuncao: TStringField
      FieldName = 'Funcao'
      Size = 25
    end
  end
  object dsFuncionario: TDataSource
    DataSet = TFuncionario
    Left = 176
    Top = 176
  end
  object tbFormasPagamento: TTable
    Active = True
    AfterPost = tbFormasPagamentoAfterPost
    AfterDelete = tbFormasPagamentoAfterDelete
    DatabaseName = 'SysEgg'
    TableName = 'FormasPagamento.db'
    Left = 82
    Top = 268
    object tbFormasPagamentoCod_Forma: TAutoIncField
      FieldName = 'Cod_Forma'
      ReadOnly = True
    end
    object tbFormasPagamentoFormaPag: TStringField
      FieldName = 'FormaPag'
      Size = 25
    end
    object tbFormasPagamentoPrazos: TStringField
      FieldName = 'Prazos'
    end
    object tbFormasPagamentoObs: TStringField
      FieldName = 'Obs'
      Size = 50
    end
  end
  object dsFormasPagamento: TDataSource
    DataSet = tbFormasPagamento
    Left = 24
    Top = 264
  end
  object dsCombustivel: TDataSource
    DataSet = TCombustivel
    Left = 168
    Top = 224
  end
  object TCombustivel: TTable
    Active = True
    AfterPost = TCombustivelAfterPost
    AfterDelete = TCombustivelAfterDelete
    DatabaseName = 'SysEgg'
    TableName = 'Combustivel.db'
    Left = 232
    Top = 224
    object TCombustivelId_Combustivel: TAutoIncField
      FieldName = 'Id_Combustivel'
      ReadOnly = True
    end
    object TCombustivelTipo_Combustivel: TStringField
      FieldName = 'Tipo_Combustivel'
      Size = 40
    end
    object TCombustivelUnid: TStringField
      FieldName = 'Unid'
      Size = 15
    end
    object TCombustivelPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object TCombustivelObs: TStringField
      FieldName = 'Obs'
      Size = 50
    end
  end
  object TVendedorDetail: TTable
    Active = True
    AfterPost = TVendedorDetailAfterPost
    AfterDelete = TVendedorDetailAfterDelete
    DatabaseName = 'SysEgg'
    IndexName = 'ICod_Ven'
    MasterFields = 'Id_Vendedor'
    MasterSource = dsVendedores
    TableName = 'Vendedor_Detail.db'
    Left = 505
    Top = 344
    object TVendedorDetailId_Cli_Ven: TAutoIncField
      FieldName = 'Id_Cli_Ven'
      ReadOnly = True
    end
    object TVendedorDetailCod_Ven_D: TIntegerField
      FieldName = 'Cod_Ven_D'
    end
    object TVendedorDetailRSocial: TStringField
      FieldName = 'RSocial'
      Size = 60
    end
    object TVendedorDetailNFantasia: TStringField
      FieldName = 'NFantasia'
      Size = 60
    end
    object TVendedorDetailData_Ult_Compra: TDateField
      FieldName = 'Data_Ult_Compra'
      EditMask = '!99/99/0000;1;_'
    end
    object TVendedorDetailTel: TStringField
      FieldName = 'Tel'
      Size = 15
    end
    object TVendedorDetailCel: TStringField
      FieldName = 'Cel'
      Size = 15
    end
    object TVendedorDetailStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object TVendedorDetailObs: TStringField
      FieldName = 'Obs'
      Size = 60
    end
    object TVendedorDetailCod_cliente: TIntegerField
      FieldName = 'Cod_cliente'
    end
    object TVendedorDetailCep_cli: TStringField
      FieldName = 'Cep_cli'
      Size = 12
    end
    object TVendedorDetailNumEndCli: TStringField
      FieldName = 'NumEndCli'
      Size = 10
    end
  end
  object dsVendedorDetail: TDataSource
    DataSet = TVendedorDetail
    Left = 424
    Top = 344
  end
  object dsFornecedorDetail: TDataSource
    DataSet = TFornecedorDetail
    Left = 280
    Top = 122
  end
  object TFornecedorDetail: TTable
    Active = True
    AfterPost = TFornecedorDetailAfterPost
    AfterDelete = TFornecedorDetailAfterDelete
    DatabaseName = 'SysEgg'
    IndexName = 'ICod_For'
    MasterFields = 'For_Codigo'
    MasterSource = Dsfornecedores
    TableName = 'Fornecedor_Detail.db'
    Left = 336
    Top = 123
    object TFornecedorDetailId_Fornecedor: TAutoIncField
      FieldName = 'Id_Fornecedor'
      ReadOnly = True
    end
    object TFornecedorDetailCod_ForDetail: TIntegerField
      FieldName = 'Cod_ForDetail'
    end
    object TFornecedorDetailRef: TStringField
      FieldName = 'Ref'
      Size = 8
    end
    object TFornecedorDetailDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object TFornecedorDetailValor: TCurrencyField
      FieldName = 'Valor'
    end
    object TFornecedorDetailUnid: TStringField
      FieldName = 'Unid'
      Size = 10
    end
  end
  object TClienteDetail: TTable
    Active = True
    AfterPost = TClienteDetailAfterPost
    AfterDelete = TClienteDetailAfterDelete
    DatabaseName = 'SysEgg'
    IndexName = 'idxCod_Cli'
    MasterFields = 'Cli_Codigo'
    MasterSource = DsClientes
    TableName = 'Cliente_Detail.db'
    Left = 336
    Top = 176
    object TClienteDetailId_CliDetail: TAutoIncField
      FieldName = 'Id_CliDetail'
      ReadOnly = True
    end
    object TClienteDetailCod_Cli_D: TIntegerField
      FieldName = 'Cod_Cli_D'
    end
    object TClienteDetailNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object TClienteDetailData_Pedido: TDateField
      FieldName = 'Data_Pedido'
      EditMask = '!99/99/0000;1;_'
    end
    object TClienteDetailValor: TCurrencyField
      FieldName = 'Valor'
    end
    object TClienteDetailStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object TClienteDetailObs: TStringField
      FieldName = 'Obs'
      Size = 50
    end
  end
  object dsClienteDetail: TDataSource
    DataSet = TClienteDetail
    Left = 272
    Top = 176
  end
  object TDespesas: TTable
    Active = True
    AfterPost = TDespesasAfterPost
    AfterDelete = TDespesasAfterDelete
    DatabaseName = 'SysEgg'
    Filtered = True
    OnFilterRecord = TDespesasFilterRecord
    FieldDefs = <
      item
        Name = 'Cod_Desp'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Data_Desp'
        DataType = ftDate
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Valor'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'TDespesasIndex1'
        Fields = 'Cod_Desp'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IData_Desp'
        Fields = 'Data_Desp'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'Despesas.DB'
    Left = 82
    Top = 320
    object TDespesasCod_Desp: TAutoIncField
      FieldName = 'Cod_Desp'
      ReadOnly = True
    end
    object TDespesasData_Desp: TDateField
      FieldName = 'Data_Desp'
      EditMask = '!99/99/0000;1;_'
    end
    object TDespesasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object TDespesasValor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object TFluxoCaixa: TTable
    Active = True
    AfterPost = TFluxoCaixaAfterPost
    AfterDelete = TFluxoCaixaAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Cod_Fluxo'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'VrEntradas'
        DataType = ftCurrency
      end
      item
        Name = 'VrSaida'
        DataType = ftCurrency
      end
      item
        Name = 'DescricaoEntrada'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DescricaoSaida'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <
      item
        Name = 'TFluxoCaixaIndex1'
        Fields = 'Cod_Fluxo'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'FluxodeCaixa.db'
    Left = 224
    Top = 280
    object TFluxoCaixaCod_Fluxo: TAutoIncField
      FieldName = 'Cod_Fluxo'
      ReadOnly = True
    end
    object TFluxoCaixaVrEntradas: TCurrencyField
      FieldName = 'VrEntradas'
    end
    object TFluxoCaixaVrSaida: TCurrencyField
      FieldName = 'VrSaida'
    end
    object TFluxoCaixaDescricaoEntrada: TStringField
      FieldName = 'DescricaoEntrada'
      Size = 60
    end
    object TFluxoCaixaDescricaoSaida: TStringField
      FieldName = 'DescricaoSaida'
      Size = 60
    end
  end
  object dsDespesas: TDataSource
    DataSet = TDespesas
    Left = 24
    Top = 320
  end
  object dsFluxoCaixa: TDataSource
    DataSet = TFluxoCaixa
    Left = 168
    Top = 280
  end
  object QryRelForXProd: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT A.FOR_RAZAO, A.FOR_FONE1, A.FOR_CIDADE, A.FOR_ESTADO,'
      'B.REF, B.DESCRICAO, B.UNID, B.VALOR'
      'FROM FORNECEDOR A, FORNECEDOR_DETAIL B'
      
        'WHERE A.FOR_CODIGO = B.COD_FORDETAIL AND A.FOR_RAZAO LIKE (:VARF' +
        'ORNECEDOR)'
      'ORDER BY B.REF, B.DESCRICAO')
    Left = 480
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'VARFORNECEDOR'
        ParamType = ptUnknown
      end>
  end
  object ActionList1: TActionList
    Left = 480
    Top = 73
    object RedeAtualizaDados: TAction
      Caption = 'RedeAtualizaDados'
      OnExecute = RedeAtualizaDadosExecute
    end
    object RedeGravaDados: TAction
      Caption = 'RedeGravaDados'
      OnExecute = RedeGravaDadosExecute
    end
  end
  object dsEmpresas: TDataSource
    DataSet = tbEmpresas
    Left = 432
    Top = 288
  end
  object tbEmpresas: TTable
    Active = True
    AfterPost = tbEmpresasAfterPost
    AfterDelete = tbEmpresasAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'CodEmpresa+'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Nome_Empresa'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Slogan'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Telefone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <
      item
        Name = 'tbEmpresasIndex1'
        Fields = 'CodEmpresa+'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'INome_Empresa'
        Fields = 'Nome_Empresa'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'Empresas.db'
    Left = 480
    Top = 288
    object tbEmpresasCodEmpresa: TAutoIncField
      FieldName = 'CodEmpresa+'
      ReadOnly = True
    end
    object tbEmpresasNome_Empresa: TStringField
      FieldName = 'Nome_Empresa'
      Size = 60
    end
    object tbEmpresasSlogan: TStringField
      FieldName = 'Slogan'
      Size = 80
    end
    object tbEmpresasTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tbEmpresasEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
  end
  object TEmbalagens: TTable
    Active = True
    AfterPost = TEmbalagensAfterPost
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Cod+'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'EntradaPvc'
        DataType = ftFloat
      end
      item
        Name = 'QtdCriticaPvc'
        DataType = ftFloat
      end
      item
        Name = 'QtdAtualPvc'
        DataType = ftFloat
      end
      item
        Name = 'ValorPvc'
        DataType = ftCurrency
      end
      item
        Name = 'ValorPvcDz'
        DataType = ftCurrency
      end
      item
        Name = 'ValorPvcBd'
        DataType = ftCurrency
      end
      item
        Name = 'ValorPvcCx'
        DataType = ftCurrency
      end
      item
        Name = 'EntradaPoupa'
        DataType = ftFloat
      end
      item
        Name = 'QtdCritalPoupa'
        DataType = ftFloat
      end
      item
        Name = 'QtdAtualPoupa'
        DataType = ftFloat
      end
      item
        Name = 'ValorPoupa'
        DataType = ftCurrency
      end
      item
        Name = 'ValorPoupaDz'
        DataType = ftCurrency
      end
      item
        Name = 'ValorPoupaBd'
        DataType = ftCurrency
      end
      item
        Name = 'ValorPoupaCx'
        DataType = ftCurrency
      end
      item
        Name = 'ValorEtiqueta'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'TEmbalagensIndex1'
        Fields = 'Cod+'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'Embalagens.db'
    Left = 344
    Top = 288
    object TEmbalagensCod: TAutoIncField
      FieldName = 'Cod+'
      ReadOnly = True
    end
    object TEmbalagensEntradaPvc: TFloatField
      FieldName = 'EntradaPvc'
    end
    object TEmbalagensQtdCriticaPvc: TFloatField
      FieldName = 'QtdCriticaPvc'
    end
    object TEmbalagensQtdAtualPvc: TFloatField
      FieldName = 'QtdAtualPvc'
    end
    object TEmbalagensValorPvc: TCurrencyField
      FieldName = 'ValorPvc'
    end
    object TEmbalagensEntradaPoupa: TFloatField
      FieldName = 'EntradaPoupa'
    end
    object TEmbalagensQtdCritalPoupa: TFloatField
      FieldName = 'QtdCritalPoupa'
    end
    object TEmbalagensQtdAtualPoupa: TFloatField
      FieldName = 'QtdAtualPoupa'
    end
    object TEmbalagensValorPoupa: TCurrencyField
      FieldName = 'ValorPoupa'
    end
    object TEmbalagensValorPvcDz: TCurrencyField
      FieldName = 'ValorPvcDz'
    end
    object TEmbalagensValorPvcCx: TCurrencyField
      FieldName = 'ValorPvcCx'
    end
    object TEmbalagensValorPoupaDz: TCurrencyField
      FieldName = 'ValorPoupaDz'
    end
    object TEmbalagensValorPoupaCx: TCurrencyField
      FieldName = 'ValorPoupaCx'
    end
    object TEmbalagensValorEtiqueta: TCurrencyField
      FieldName = 'ValorEtiqueta'
    end
    object TEmbalagensValorPvcBd: TCurrencyField
      FieldName = 'ValorPvcBd'
    end
    object TEmbalagensValorPoupaBd: TCurrencyField
      FieldName = 'ValorPoupaBd'
    end
  end
  object dsTEmbalagens: TDataSource
    DataSet = TEmbalagens
    Left = 288
    Top = 288
  end
  object TPendenciasBoleto: TTable
    Active = True
    AfterPost = TPendenciasBoletoAfterPost
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'NumPed'
        DataType = ftInteger
      end
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DataPed'
        DataType = ftDate
      end
      item
        Name = 'FormaPgto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VrTotPed'
        DataType = ftCurrency
      end
      item
        Name = 'Data1Parc'
        DataType = ftDate
      end
      item
        Name = 'Vr1'
        DataType = ftCurrency
      end
      item
        Name = 'Data2Parc'
        DataType = ftDate
      end
      item
        Name = 'Vr2'
        DataType = ftCurrency
      end
      item
        Name = 'Data3Parc'
        DataType = ftDate
      end
      item
        Name = 'Vr3'
        DataType = ftCurrency
      end
      item
        Name = 'Pago1'
        DataType = ftBoolean
      end
      item
        Name = 'Pago2'
        DataType = ftBoolean
      end
      item
        Name = 'Pago3'
        DataType = ftBoolean
      end
      item
        Name = 'NumPed2'
        DataType = ftInteger
      end
      item
        Name = 'NumPed3'
        DataType = ftInteger
      end
      item
        Name = 'NumPed4'
        DataType = ftInteger
      end
      item
        Name = 'NumPed5'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'TPendenciasBoletoIndex1'
        Fields = 'Codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'ICliente'
        Fields = 'Cliente'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'INumPed'
        Fields = 'NumPed'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'PendenciasBoleto.db'
    Left = 360
    Top = 226
    object TPendenciasBoletoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TPendenciasBoletoNumPed: TIntegerField
      FieldName = 'NumPed'
    end
    object TPendenciasBoletoDataPed: TDateField
      FieldName = 'DataPed'
    end
    object TPendenciasBoletoFormaPgto: TStringField
      FieldName = 'FormaPgto'
    end
    object TPendenciasBoletoVrTotPed: TCurrencyField
      FieldName = 'VrTotPed'
    end
    object TPendenciasBoletoData1Parc: TDateField
      FieldName = 'Data1Parc'
    end
    object TPendenciasBoletoVr1: TCurrencyField
      FieldName = 'Vr1'
    end
    object TPendenciasBoletoData2Parc: TDateField
      FieldName = 'Data2Parc'
    end
    object TPendenciasBoletoVr2: TCurrencyField
      FieldName = 'Vr2'
    end
    object TPendenciasBoletoData3Parc: TDateField
      FieldName = 'Data3Parc'
    end
    object TPendenciasBoletoVr3: TCurrencyField
      FieldName = 'Vr3'
    end
    object TPendenciasBoletoPago1: TBooleanField
      FieldName = 'Pago1'
    end
    object TPendenciasBoletoPago2: TBooleanField
      FieldName = 'Pago2'
    end
    object TPendenciasBoletoPago3: TBooleanField
      FieldName = 'Pago3'
    end
    object TPendenciasBoletoCliente: TStringField
      FieldName = 'Cliente'
      Size = 80
    end
    object TPendenciasBoletoNumPed2: TIntegerField
      FieldName = 'NumPed2'
    end
    object TPendenciasBoletoNumPed3: TIntegerField
      FieldName = 'NumPed3'
    end
    object TPendenciasBoletoNumPed4: TIntegerField
      FieldName = 'NumPed4'
    end
    object TPendenciasBoletoNumPed5: TIntegerField
      FieldName = 'NumPed5'
    end
  end
  object dsPendenciasBoleto: TDataSource
    DataSet = TPendenciasBoleto
    Left = 305
    Top = 226
  end
  object TBoleto: TTable
    Active = True
    AfterPost = TBoletoAfterPost
    DatabaseName = 'SysEgg'
    TableName = 'Boleto.db'
    Left = 353
    Top = 338
    object TBoletoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TBoletoLocalpagto: TStringField
      FieldName = 'Localpagto'
      Size = 50
    end
    object TBoletoVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TBoletoDatadocto: TDateField
      FieldName = 'Datadocto'
    end
    object TBoletoNumdocto: TStringField
      FieldName = 'Numdocto'
      Size = 25
    end
    object TBoletoValordocto: TCurrencyField
      FieldName = 'Valordocto'
    end
    object TBoletoIntrucoes: TMemoField
      FieldName = 'Intrucoes'
      BlobType = ftMemo
      Size = 40
    end
    object TBoletoCliente: TStringField
      FieldName = 'Cliente'
      Size = 80
    end
    object TBoletoEndereco: TStringField
      FieldName = 'Endereco'
      Size = 70
    end
    object TBoletoCnpjcpf: TStringField
      FieldName = 'Cnpjcpf'
      Size = 25
    end
    object TBoletoBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object TBoletoCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object TBoletoUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
  end
  object dsBoleto: TDataSource
    DataSet = TBoleto
    Left = 297
    Top = 338
  end
  object dsDetailProduto: TDataSource
    DataSet = TDetailProduto
    Left = 168
    Top = 120
  end
  object TDetailProduto: TTable
    Active = True
    AfterPost = TDetailProdutoAfterPost
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'Cod+'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'TipoRef'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TipoDescricao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TipoUN'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'QtdUN'
        DataType = ftFloat
      end
      item
        Name = 'QtdDZ'
        DataType = ftFloat
      end
      item
        Name = 'DataEntrada'
        DataType = ftDate
      end
      item
        Name = 'Fornecedor'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <
      item
        Fields = 'Cod+'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IDataEntrada'
        Fields = 'DataEntrada'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ITipoRef'
        Fields = 'TipoRef'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICodProduto'
        Fields = 'CodProduto'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'ICodProduto'
    MasterFields = 'Pro_Codigo'
    MasterSource = Dsprodutos
    StoreDefs = True
    TableName = 'DetailProduto.db'
    Left = 216
    Top = 120
    object TDetailProdutoCod: TAutoIncField
      FieldName = 'Cod+'
      ReadOnly = True
    end
    object TDetailProdutoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object TDetailProdutoQtdUN: TFloatField
      FieldName = 'QtdUN'
    end
    object TDetailProdutoQtdDZ: TFloatField
      FieldName = 'QtdDZ'
    end
    object TDetailProdutoDataEntrada: TDateField
      FieldName = 'DataEntrada'
    end
    object TDetailProdutoFornecedor: TStringField
      DisplayWidth = 42
      FieldName = 'Fornecedor'
      Size = 60
    end
    object TDetailProdutoTipoRef: TStringField
      FieldName = 'TipoRef'
      Size = 6
    end
    object TDetailProdutoTipoDescricao: TStringField
      FieldName = 'TipoDescricao'
      Size = 50
    end
    object TDetailProdutoTipoUN: TStringField
      FieldName = 'TipoUN'
      Size = 6
    end
  end
  object TContasPagar: TTable
    Active = True
    AfterPost = TContasPagarAfterPost
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'CodCP'
        DataType = ftInteger
      end
      item
        Name = 'Favorecido'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Banco'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Agencia'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Datapagto'
        DataType = ftDate
      end
      item
        Name = 'Valor'
        DataType = ftCurrency
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 50
      end
      item
        Name = 'DataCadastro'
        DataType = ftDate
      end
      item
        Name = 'Quitado'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NumCheque'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'TContasPagarIndex1'
        Fields = 'CodCP'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'INumCheque'
        Fields = 'NumCheque'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IDatapagto'
        Fields = 'Datapagto'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IFavorecido'
        Fields = 'Favorecido'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'ICodCP'
        Fields = 'CodCP'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'ContasaPagar.DB'
    Left = 224
    Top = 328
    object TContasPagarCodCP: TIntegerField
      FieldName = 'CodCP'
    end
    object TContasPagarFavorecido: TStringField
      FieldName = 'Favorecido'
      Size = 80
    end
    object TContasPagarBanco: TStringField
      FieldName = 'Banco'
    end
    object TContasPagarAgencia: TStringField
      FieldName = 'Agencia'
      Size = 25
    end
    object TContasPagarDatapagto: TDateField
      FieldName = 'Datapagto'
      EditMask = '!99/99/0000;1;_'
    end
    object TContasPagarValor: TCurrencyField
      FieldName = 'Valor'
    end
    object TContasPagarObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 50
    end
    object TContasPagarDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object TContasPagarQuitado: TStringField
      FieldName = 'Quitado'
      Size = 5
    end
    object TContasPagarNumCheque: TStringField
      FieldName = 'NumCheque'
      Size = 50
    end
  end
  object dsContasPagar: TDataSource
    DataSet = TContasPagar
    Left = 168
    Top = 336
  end
  object TB_Parcial: TTable
    Active = True
    AfterPost = TB_ParcialAfterPost
    AfterDelete = TB_ParcialAfterDelete
    DatabaseName = 'SysEgg'
    IndexName = 'IControleParcial'
    MasterFields = 'Ped_Numero'
    MasterSource = Dspedidos
    TableName = 'Parcial.db'
    Left = 458
    Top = 151
    object TB_ParcialCodInc: TAutoIncField
      FieldName = 'CodInc'
      ReadOnly = True
    end
    object TB_ParcialControleParcial: TIntegerField
      FieldName = 'ControleParcial'
    end
    object TB_ParcialData: TDateField
      FieldName = 'Data'
      EditMask = '!99/99/0000;1;_'
    end
    object TB_ParcialValor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object TB_ParcialObs: TStringField
      FieldName = 'Obs'
      Size = 40
    end
  end
  object dsParcial: TDataSource
    DataSet = TB_Parcial
    Left = 516
    Top = 152
  end
  object tbEntradaProdutoMaster: TTable
    Active = True
    BeforePost = tbEntradaProdutoMasterBeforePost
    AfterPost = tbEntradaProdutoMasterAfterPost
    AfterDelete = tbEntradaProdutoMasterAfterDelete
    AutoRefresh = True
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'ID_PRODUTOENTRADA'
        DataType = ftInteger
      end
      item
        Name = 'DATA_ENTRADA'
        DataType = ftDate
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'NUM_NOTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALORNOTE'
        DataType = ftFloat
      end
      item
        Name = 'Lancado'
        DataType = ftBoolean
      end
      item
        Name = 'Forma'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Prazo'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'tbEntradaProdutoMasterIndex1'
        Fields = 'ID_PRODUTOENTRADA'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idx_ID_PRODUTOENTRADA'
        Fields = 'ID_PRODUTOENTRADA'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idx_FORNECEDOR'
        Fields = 'FORNECEDOR'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'ENTRADAPRODUTO_MASTER.db'
    Left = 91
    Top = 396
    object intgrfldEntradaProdutoMasterID_PRODUTOENTRADA: TIntegerField
      FieldName = 'ID_PRODUTOENTRADA'
    end
    object tbEntradaProdutoMasterDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object tbEntradaProdutoMasterFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 70
    end
    object tbEntradaProdutoMasterNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
    end
    object tbEntradaProdutoMasterVALORNOTE: TFloatField
      FieldName = 'VALORNOTE'
      currency = True
    end
    object tbEntradaProdutoMasterLancado: TBooleanField
      FieldName = 'Lancado'
    end
    object tbEntradaProdutoMasterForma: TStringField
      FieldName = 'Forma'
    end
    object tbEntradaProdutoMasterPrazo: TStringField
      FieldName = 'Prazo'
    end
  end
  object dsEntradaProdutoMaster: TDataSource
    DataSet = tbEntradaProdutoMaster
    Left = 25
    Top = 388
  end
  object dstbltblEntradaProdutoDetalhe: TDataSource
    DataSet = tblEntradaProdutoDetalhe
    Left = 26
    Top = 439
  end
  object tblEntradaProdutoDetalhe: TTable
    Active = True
    AfterPost = tblEntradaProdutoDetalheAfterPost
    OnCalcFields = tblEntradaProdutoDetalheCalcFields
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'ID_INC'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'ID_CONTROLE'
        DataType = ftInteger
      end
      item
        Name = 'DATAENTRADA'
        DataType = ftDate
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'VLRUNIT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Fields = 'ID_INC'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idx_DESCRICAO'
        Fields = 'DESCRICAO'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IDX_ID_CONTROLE'
        Fields = 'ID_CONTROLE'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IDX_REFERENCIA'
        Fields = 'REFERENCIA'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'IDX_ID_CONTROLE'
    MasterFields = 'ID_PRODUTOENTRADA'
    MasterSource = dsEntradaProdutoMaster
    StoreDefs = True
    TableName = 'ENTRADAPRODUTO_DETALHE.db'
    Left = 84
    Top = 440
    object tblEntradaProdutoDetalheID_INC: TAutoIncField
      FieldName = 'ID_INC'
      ReadOnly = True
    end
    object intgrfldEntradaProdutoDetalheID_CONTROLE: TIntegerField
      FieldName = 'ID_CONTROLE'
    end
    object tblEntradaProdutoDetalheDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
    end
    object tbEntradaProdutoDetalheREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object tbEntradaProdutoDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object tbEntradaProdutoDetalheUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object tblEntradaProdutoDetalheVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
      currency = True
    end
    object tblEntradaProdutoDetalheQTD: TFloatField
      FieldName = 'QTD'
    end
    object tblEntradaProdutoDetalheTotValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotValor'
      currency = True
      Calculated = True
    end
    object tblEntradaProdutoDetalheTotCX: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotCX'
      Calculated = True
    end
  end
  object tbCPGMaster: TTable
    Active = True
    AfterPost = tbCPGMasterAfterPost
    AfterDelete = tbCPGMasterAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'ID_CPG'
        DataType = ftInteger
      end
      item
        Name = 'Fornecedor'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DataInclusao'
        DataType = ftDate
      end
      item
        Name = 'FormaPagamento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ValorTotal'
        DataType = ftFloat
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 80
      end
      item
        Name = 'Num_NFPEDIDO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ValorTotalFixo'
        DataType = ftFloat
      end
      item
        Name = 'TipoEntrada'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_Fornecedor'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'tbCPGMasterIndex1'
        Fields = 'ID_CPG'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idx_Fornecedor'
        Fields = 'Fornecedor'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idx_ID_CPG'
        Fields = 'ID_CPG'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'CPGMaster.db'
    Left = 232
    Top = 408
    object tbCPGMasterID_CPG: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CPG'
    end
    object tbCPGMasterFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 80
    end
    object tbCPGMasterDataInclusao: TDateField
      FieldName = 'DataInclusao'
    end
    object strngfldCPGMasterFormaPagamento: TStringField
      FieldName = 'FormaPagamento'
      Size = 30
    end
    object tbCPGMasterValorTotal: TFloatField
      FieldName = 'ValorTotal'
      currency = True
    end
    object tbCPGMasterObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 80
    end
    object tbCPGMasterNum_NFPEDIDO: TStringField
      FieldName = 'Num_NFPEDIDO'
      Size = 25
    end
    object tbCPGMasterValorTotalFixo: TFloatField
      FieldName = 'ValorTotalFixo'
      currency = True
    end
    object tblCPGMasterTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      Size = 40
    end
    object tbCPGMasterID_Fornecedor: TIntegerField
      FieldName = 'ID_Fornecedor'
    end
  end
  object tbCPGDetalhe: TTable
    Active = True
    BeforePost = tbCPGDetalheBeforePost
    AfterPost = tbCPGDetalheAfterPost
    OnCalcFields = tbCPGDetalheCalcFields
    DatabaseName = 'SysEgg'
    IndexName = 'idx_Controle'
    MasterFields = 'ID_CPG'
    MasterSource = dsCPGMaster
    TableName = 'CPGDetalhe.db'
    Left = 234
    Top = 456
    object tbCPGDetalheCodInc: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodInc'
      ReadOnly = True
    end
    object intgrfldCPGDetalheControle: TIntegerField
      FieldName = 'Controle'
    end
    object tbCPGDetalheValorParcela: TFloatField
      FieldName = 'ValorParcela'
      currency = True
    end
    object tbCPGDetalheDataParcela: TDateField
      FieldName = 'DataParcela'
    end
    object strngfldCPGDetalheNumChqDoc: TStringField
      FieldName = 'NumChqDoc'
      Size = 40
    end
    object strngfldCPGDetalheBanco: TStringField
      FieldName = 'Banco'
      Size = 30
    end
    object strngfldCPGDetalheAgencia: TStringField
      FieldName = 'Agencia'
      Size = 30
    end
    object tbCPGDetalheVrJuros: TFloatField
      FieldName = 'VrJuros'
      DisplayFormat = '###.00'
      currency = True
    end
    object tbCPGDetalheVrMora: TFloatField
      FieldName = 'VrMora'
      DisplayFormat = '###.00'
      currency = True
    end
    object tbCPGDetalheTipoDespesa: TFloatField
      FieldName = 'TipoDespesa'
      DisplayFormat = '###.00'
      currency = True
    end
    object tbCPGDetalheStatus: TBooleanField
      FieldName = 'Status'
    end
    object tbCPGDetalheTotVrGrade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotVrGrade'
      currency = True
      Calculated = True
    end
    object tbCPGDetalheTotalParcela: TFloatField
      FieldName = 'TotalParcela'
      currency = True
    end
    object tbCPGDetalheDataPagto: TDateField
      FieldName = 'DataPagto'
    end
  end
  object dsCPGMaster: TDataSource
    DataSet = tbCPGMaster
    Left = 182
    Top = 409
  end
  object dsCPGDetalhe: TDataSource
    DataSet = tbCPGDetalhe
    Left = 184
    Top = 456
  end
  object dsCPRMaster: TDataSource
    DataSet = tbCPRMaster
    Left = 318
    Top = 409
  end
  object tbCPRMaster: TTable
    Active = True
    AfterPost = tbCPRMasterAfterPost
    AfterDelete = tbCPRMasterAfterDelete
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'ID_CPG'
        DataType = ftInteger
      end
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DataInclusao'
        DataType = ftDate
      end
      item
        Name = 'FormaPagamento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ValorTotal'
        DataType = ftFloat
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 80
      end
      item
        Name = 'Num_NFPEDIDO'
        DataType = ftInteger
      end
      item
        Name = 'ValorTotalFixo'
        DataType = ftFloat
      end
      item
        Name = 'TipoSaida'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'tbCPRMasterIndex1'
        Fields = 'ID_CPG'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idx_Fornecedor'
        Fields = 'Cliente'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idx_ID_CPG'
        Fields = 'ID_CPG'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'CPRMaster.DB'
    Left = 368
    Top = 408
    object tbCPRMasterID_CPG: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CPG'
    end
    object tbCPRMasterCliente: TStringField
      FieldName = 'Cliente'
      Size = 80
    end
    object tbCPRMasterDataInclusao: TDateField
      FieldName = 'DataInclusao'
    end
    object strngfldCPRMasterFormaPagamento: TStringField
      FieldName = 'FormaPagamento'
      Size = 30
    end
    object tbCPRMasterValorTotal: TFloatField
      FieldName = 'ValorTotal'
      currency = True
    end
    object tbCPRMasterObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 80
    end
    object tbCPRMasterValorTotalFixo: TFloatField
      FieldName = 'ValorTotalFixo'
      currency = True
    end
    object tblCPRMasterTipoSaida: TStringField
      FieldName = 'TipoSaida'
      Size = 40
    end
    object tbCPRMasterID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object tbCPRMasterNum_NFPEDIDO: TIntegerField
      FieldName = 'Num_NFPEDIDO'
    end
  end
  object dsCPRDetalhe: TDataSource
    DataSet = tbCPRDetalhe
    Left = 312
    Top = 456
  end
  object tbCPRDetalhe: TTable
    Active = True
    BeforePost = tbCPRDetalheBeforePost
    AfterPost = tbCPRDetalheAfterPost
    OnCalcFields = tbCPRDetalheCalcFields
    DatabaseName = 'SysEgg'
    FieldDefs = <
      item
        Name = 'INC_CPR'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Controle'
        DataType = ftInteger
      end
      item
        Name = 'ValorParcela'
        DataType = ftFloat
      end
      item
        Name = 'DataParcela'
        DataType = ftDate
      end
      item
        Name = 'DataPagto'
        DataType = ftDate
      end
      item
        Name = 'NumChqDoc'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Banco'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Agencia'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VrJuros'
        DataType = ftFloat
      end
      item
        Name = 'VrMora'
        DataType = ftFloat
      end
      item
        Name = 'TipoDespesa'
        DataType = ftFloat
      end
      item
        Name = 'Status'
        DataType = ftBoolean
      end
      item
        Name = 'TotalParcela'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Fields = 'INC_CPR'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'ICONTROLE'
        Fields = 'Controle'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'ICONTROLE'
    MasterFields = 'ID_CPG'
    MasterSource = dsCPRMaster
    StoreDefs = True
    TableName = 'CPRDetalhe.db'
    Left = 370
    Top = 456
    object tbCPRDetalheINC_CPR: TAutoIncField
      FieldName = 'INC_CPR'
      ReadOnly = True
    end
    object tbCPRDetalheControle: TIntegerField
      FieldName = 'Controle'
    end
    object tbCPRDetalheValorParcela: TFloatField
      FieldName = 'ValorParcela'
      currency = True
    end
    object tbCPRDetalheDataParcela: TDateField
      FieldName = 'DataParcela'
    end
    object strngfldCPRDetalheNumChqDoc: TStringField
      FieldName = 'NumChqDoc'
      Size = 40
    end
    object strngfldCPRDetalheBanco: TStringField
      FieldName = 'Banco'
      Size = 30
    end
    object strngfldCPRDetalheAgencia: TStringField
      FieldName = 'Agencia'
      Size = 30
    end
    object tbCPRDetalheVrJuros: TFloatField
      FieldName = 'VrJuros'
      DisplayFormat = '###.00'
    end
    object tbCPRDetalheVrMora: TFloatField
      FieldName = 'VrMora'
      DisplayFormat = '###.00'
    end
    object tbCPRDetalheTipoDespesa: TFloatField
      FieldName = 'TipoDespesa'
      DisplayFormat = '###.00'
      currency = True
    end
    object tbCPRDetalheStatus: TBooleanField
      FieldName = 'Status'
    end
    object tbCPRDetalheTotVrGrade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotVrGrade'
      currency = True
      Calculated = True
    end
    object tbCPRDetalheTotalParcela: TFloatField
      FieldName = 'TotalParcela'
      currency = True
    end
    object tbCPRDetalheDataPagto: TDateField
      FieldName = 'DataPagto'
    end
  end
  object tbEstoque: TTable
    Active = True
    AfterPost = tbEstoqueAfterPost
    DatabaseName = 'SysEgg'
    IndexName = 'idx_Ref'
    TableName = 'Estoque.db'
    Left = 512
    Top = 408
    object tbEstoqueRef: TStringField
      FieldName = 'Ref'
      Size = 15
    end
    object tbEstoqueDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object tbEstoqueQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tbEstoqueUn: TStringField
      FieldName = 'Un'
      Size = 5
    end
    object tbEstoqueCodInc: TAutoIncField
      FieldName = 'CodInc'
      ReadOnly = True
    end
  end
  object dsEstoque: TDataSource
    DataSet = tbEstoque
    Left = 456
    Top = 408
  end
  object tbFormaPagtoMaster: TTable
    Active = True
    AfterPost = tbFormaPagtoMasterAfterPost
    DatabaseName = 'SysEgg'
    TableName = 'FormaPagtoMaster.db'
    Left = 128
    Top = 520
    object tbFormaPagtoMasterCodInc: TAutoIncField
      FieldName = 'CodInc'
      ReadOnly = True
    end
    object tbFormaPagtoMasterFormas: TStringField
      FieldName = 'Formas'
    end
  end
  object tbFormaPagtoDetalhe: TTable
    Active = True
    AfterPost = tbFormaPagtoDetalheAfterPost
    DatabaseName = 'SysEgg'
    IndexName = 'idx_Controle'
    MasterFields = 'CodInc'
    MasterSource = dsFormaPagtoMaster
    TableName = 'FormaPagtoDetalhe.db'
    Left = 296
    Top = 520
    object tbFormaPagtoDetalheCodInc: TAutoIncField
      FieldName = 'CodInc'
      ReadOnly = True
    end
    object tbFormaPagtoDetalheControle: TIntegerField
      FieldName = 'Controle'
    end
    object tbFormaPagtoDetalhePrazos: TStringField
      DisplayWidth = 28
      FieldName = 'Prazos'
      Size = 50
    end
    object tbFormaPagtoDetalheNumParcela: TFloatField
      FieldName = 'NumParcela'
    end
  end
  object dsFormaPagtoMaster: TDataSource
    DataSet = tbFormaPagtoMaster
    Left = 24
    Top = 520
  end
  object dsFormaPagtoDetalhe: TDataSource
    DataSet = tbFormaPagtoDetalhe
    Left = 224
    Top = 520
  end
  object tbTipoEntrada: TTable
    Active = True
    DatabaseName = 'SysEgg'
    TableName = 'TIPOENTRADA.db'
    Left = 96
    Top = 592
    object tbTipoEntradaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblTipoEntradaTIPO_ENTRADA: TStringField
      FieldName = 'TIPO_ENTRADA'
      Size = 30
    end
    object tblTipoEntradaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsTipoEntrada: TDataSource
    DataSet = tbTipoEntrada
    Left = 32
    Top = 592
  end
  object dsTipoSaida: TDataSource
    DataSet = tbTipoSaida
    Left = 184
    Top = 592
  end
  object tbTipoSaida: TTable
    Active = True
    DatabaseName = 'SysEgg'
    TableName = 'TipoSaida.db'
    Left = 248
    Top = 592
    object tbTipoSaidaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblTipoSaidaTipoSaida: TStringField
      FieldName = 'TipoSaida'
      Size = 40
    end
    object tblTipoSaidaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
  end
  object tbPerdaMaster: TTable
    Active = True
    AfterPost = tbPerdaMasterAfterPost
    AfterDelete = tbPerdaMasterAfterDelete
    DatabaseName = 'SysEgg'
    TableName = 'PerdaMaster.db'
    Left = 512
    Top = 479
    object qryPerdaMasterID: TIntegerField
      FieldName = 'ID'
    end
    object tbPerdaMasterData: TDateField
      FieldName = 'Data'
    end
    object tblPerdaMasterValorTotal: TFloatField
      FieldName = 'ValorTotal'
      currency = True
    end
    object tbPerdaMasterObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 100
    end
  end
  object tbPerdaDetalhe: TTable
    Active = True
    AfterPost = tbPerdaDetalheAfterPost
    DatabaseName = 'SysEgg'
    IndexName = 'IControle'
    MasterFields = 'ID'
    MasterSource = dsPerdaMaster
    TableName = 'PerdaDetalhe.db'
    Left = 515
    Top = 537
    object tbPerdaDetalheIDDetalhe: TAutoIncField
      FieldName = 'IDDetalhe'
      ReadOnly = True
    end
    object qryPerdaDetalheControle: TIntegerField
      FieldName = 'Controle'
    end
    object tblPerdaDetalheRef: TStringField
      FieldName = 'Ref'
      Size = 15
    end
    object tblPerdaDetalheDescricao: TStringField
      FieldName = 'Descricao'
      Size = 80
    end
    object tblPerdaDetalheValor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object tblPerdaDetalheQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsPerdaMaster: TDataSource
    DataSet = tbPerdaMaster
    Left = 464
    Top = 480
  end
  object dsPerdaDetalhe: TDataSource
    DataSet = tbPerdaDetalhe
    Left = 464
    Top = 536
  end
end
