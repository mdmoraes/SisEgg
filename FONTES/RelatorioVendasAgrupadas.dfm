?
 TFRMGROUPING 0}0  TPF0TfrmGroupingfrmGroupingLeftrTop? Width?Height?CaptionfrmGroupingColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameMS Sans Serif
Font.Style OldCreateOrderScaledPixelsPerInch`
TextHeight 	TQuickRep	QuickRep1Left Top Width0Height Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSet	MasterQryDescription.StringsVThis report uses  two queries to demonstrate how to handle subtotals and group breaks. ?Most grouping and totaling tasks can be accomplished without coding.  This report does not have any code, everything is set by the component properties. Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       ?@      ??
@       ?@      ??
@       ?@       ?@           PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode PrinterSettings.ExtendedDuplex "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrinterSettings.PrintQuality PrinterSettings.Collate PrinterSettings.ColorOption PrintIfEmpty	ReportTitleAgrupamento com sub-totais
SnapToGrid	UnitsInchesZoomdPrevFormStylefsNormalPreviewInitialStatewsMaximizedPrevShowThumbsPrevShowSearchPrevInitialZoom	qrZoom100PreviewDefaultSaveTypestQRP TQRBandDetailBand1Left0Top? Width?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values????????@???????	@ PreCaluculateBandHeightKeepOnOnePageBandTyperbDetail 	TQRDBTextqrdbped_numeroLeft8Top WidthCHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@??????*?@          UUUUUUE?@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet	MasterQry	DataFieldped_clienteTransparentWordWrap	ExportAsexptTextFontSize
   TQRGroupQRGroup1Left0ToppWidth?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.ValuesUUUUUU??@???????	@ PreCaluculateBandHeightKeepOnOnePage
ExpressionMasterQry.ped_numero
FooterBandQRBand2Master	QuickRep1ReprintOnNewPage	 	TQRDBTextqrdbped_clienteLeft TopWidthHHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@          UUUUUUU?@      ??@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet	MasterQry	DataField
ped_numeroTransparentWordWrap	ExportAsexptTextFontSize
   TQRSubDetailQRSubDetail1Left0Top? Width?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values????????@???????	@ PreCaluculateBandHeightKeepOnOnePageMaster	QuickRep1
FooterBandQRBand1PrintBeforePrintIfEmpty	 	TQRDBText
qrdbit_refLeft8Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@??????*?@          UUUUUUu?@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet	MasterQry	DataFieldit_refTransparentWordWrap	ExportAsexptTextFontSize
  	TQRDBTextqrdbit_descricaoLeft? Top Width1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@      ??@          UUUUUU??@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet	MasterQry	DataFieldit_descricaoTransparentWordWrap	ExportAsexptTextFontSize
  	TQRDBTextqrdbit_descricao1Left0Top Width1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@UUUUUU5?	@          UUUUUU??@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet	MasterQry	DataFieldtotalTransparentWordWrap	ExportAsexptTextFontSize
   TQRBandQRBand1Left0Top? Width?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values????????@???????	@ PreCaluculateBandHeightKeepOnOnePageBandTyperbGroupFooter TQRExprQRExpr1Left? Top WidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@UUUUUUu?@                Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height?	Font.NameArial
Font.Style ColorclWhiteMasterQRSubDetail1
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetailQry.Qty)ExportAsexptTextFontSize
   TQRBandQRBand2Left0Top? Width?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values      ??@???????	@ PreCaluculateBandHeightKeepOnOnePageBandTyperbGroupFooter TQRExprQRExpr2LeftxTop WidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@TUUUUU??@                Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height?	Font.NameArial
Font.Style ColorclWhiteMasterQRSubDetail1
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetailQry.Qty)ExportAsexptTextFontSize
   TQRBandSummaryBand1Left0Top? Width?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.ValuesUUUUUU?@???????	@ PreCaluculateBandHeightKeepOnOnePageBandType	rbSummary TQRExprQRExpr3Left?Top WidthuHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@UUUUUUe?	@                Ț@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height?	Font.NameArial
Font.Style ColorclWhiteMasterQRSubDetail1
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetailQry.Qty)ExportAsexptTextFontSize
   TQRBandColumnHeaderBand1Left0TopXWidth?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeftFrame.DrawRightFrame.WidthAlignToBottomColorclWhiteTransparentBandFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.StylefsBoldfsItalic ForceNewColumnForceNewPage
ParentFontSize.Values       ?@???????	@ PreCaluculateBandHeightKeepOnOnePageBandTyperbColumnHeader TQRLabelQRLabel1Left Top Width<HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@                          ??@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionCompanyColorclWhiteTransparentWordWrap	ExportAsexptTextFontSize
  TQRLabelQRLabel2LeftPTop Width+HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@????????@          ????????@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionOrder#ColorclWhiteTransparentWordWrap	ExportAsexptTextFontSize
  TQRLabelQRLabel4Left? Top Width"HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@????????@          ????????@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionItem#ColorclWhiteTransparentWordWrap	ExportAsexptTextFontSize
  TQRLabelQRLabel5Left? Top Width4HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@??????j?@          UUUUUU??@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionItem QtyColorclWhiteTransparentWordWrap	ExportAsexptTextFontSize
  TQRLabelQRLabel6Left Top Width`HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@UUUUUUU?@                 ?@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotal Qty/OrderColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height?	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	ExportAsexptTextFontSize
  TQRLabelQRLabel7LeftxTop WidthxHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@TUUUUU??@                ??@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotal Qty/CustomerColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height?	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	ExportAsexptTextFontSize
  TQRLabelQRLabel8LeftTop WidthOHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@????????	@          UUUUUU?@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotal Qty/AllColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height?	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	ExportAsexptTextFontSize
   TQRBandPageHeaderBand1Left0Top0Width?Height(Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.Style ForceNewColumnForceNewPage
ParentFontSize.Values????????@???????	@ PreCaluculateBandHeightKeepOnOnePageBandTyperbPageHeader 
TQRSysData
QRSysData1LeftTopWidth? Height!Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ??@??????ڻ@       ?@UUUUUU?@ 	AlignmenttaCenterAlignToBand	AutoSize	ColorclWhiteDataqrsReportTitleTransparentExportAsexptTextFontSize  
TQRSysData
QRSysData2Left Top WidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values??????J?@                    ????????@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsPageNumberFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.Style 
ParentFontTextPage TransparentExportAsexptTextFontSize
    TQuery	MasterQryDatabaseNameSysEggSQL.Strings=select p.ped_numero, p.ped_cliente, i.it_ref, i.it_descricao,C       (i.it_quantidade * (i.it_valor + i.it_vrembalagem)) as totalfrom pedidos p, itens iwhere p.ped_numero=i.it_numero$order by p.ped_cliente, p.ped_numero Left TIntegerFieldqryMasterQryped_numero	FieldName
ped_numeroOriginSYSEGG."pedidos.DB".Ped_Numero  TStringFieldtblMasterQryped_cliente	FieldNameped_clienteOriginSYSEGG."pedidos.DB".Ped_ClienteSize2  TStringFieldtblMasterQryit_ref	FieldNameit_refOriginSYSEGG."itens.DB".It_RefSize  TStringFieldtblMasterQryit_descricao	FieldNameit_descricaoOriginSYSEGG."itens.DB".It_DescricaoSize2  TCurrencyFieldMasterQrytotal	FieldNametotalOriginSYSEGG."itens.DB".It_Quantidade   TDataSourceDataSource1DataSet	MasterQryLeftTop    