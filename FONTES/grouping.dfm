?
 TFRMGROUPING 0?/  TPF0TfrmGroupingfrmGroupingLeft^Top_Width?Height^CaptionfrmGroupingColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameMS Sans Serif
Font.Style OldCreateOrderScaledPixelsPerInch`
TextHeight 	TQuickRep	QuickRep1Left Top Width0Height Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSet	MasterQryDescription.StringsVThis report uses  two queries to demonstrate how to handle subtotals and group breaks. ?Most grouping and totaling tasks can be accomplished without coding.  This report does not have any code, everything is set by the component properties. Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       ?@      ??
@       ?@      ??
@       ?@       ?@           PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode PrinterSettings.ExtendedDuplex "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrinterSettings.PrintQuality PrinterSettings.Collate PrinterSettings.ColorOption PrintIfEmpty	ReportTitleAgrupamento com Sub Totais
SnapToGrid	UnitsInchesZoomdPrevFormStylefsNormalPreviewInitialStatewsMaximizedPrevShowThumbsPrevShowSearchPrevInitialZoomqrZoomToWidthPreviewDefaultSaveTypestQRP TQRBandDetailBand1Left0Top? Width?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values????????@???????	@ PreCaluculateBandHeightKeepOnOnePageBandTyperbDetail 	TQRDBText	QRDBText2LeftPTop Width,HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@????????@          VUUUUU??@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet	MasterQry	DataFieldordernoTransparentWordWrap	ExportAsexptTextFontSize
   TQRGroupQRGroup1Left0ToppWidth?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.ValuesUUUUUU??@???????	@ PreCaluculateBandHeightKeepOnOnePage
ExpressionMasterQry.custno
FooterBandQRBand2Master	QuickRep1ReprintOnNewPage	 	TQRDBText	QRDBText4LeftTopWidth6HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@       ?@????????@      ??@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet	MasterQry	DataFieldcompanyTransparentWordWrap	ExportAsexptTextFontSize
   TQRSubDetailQRSubDetail1Left0Top? Width?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values????????@???????	@ PreCaluculateBandHeightKeepOnOnePageMaster	QuickRep1DataSet	DetailQry
FooterBandQRBand1PrintBeforePrintIfEmpty	 	TQRDBText	QRDBText1Left? Top Width*HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@????????@               @?@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet	DetailQry	DataFieldItemNoTransparentWordWrap	ExportAsexptTextFontSize
  	TQRDBText	QRDBText5Left? Top Width1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@??????j?@          UUUUUU??@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet	DetailQry	DataFieldQtyTransparentWordWrap	ExportAsexptTextFontSize
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
QRSysData1Left? Top WidthhHeight!Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ??@???????@          ???????@ 	AlignmenttaCenterAlignToBand	AutoSize	ColorclWhiteDataqrsReportTitleTransparentExportAsexptTextFontSize  
TQRSysData
QRSysData2Left Top Width1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values??????J?@                    UUUUUU??@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsPageNumberFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.Style 
ParentFontTextPage TransparentExportAsexptTextFontSize
    TQuery	MasterQryActive	DatabaseNameDBDEMOSSQL.Strings3select c.company, o.orderno, o.custno, o.ItemsTotal2from orders o join customer c on o.custno=c.custnoorder by c.company, o.orderno Left TStringFieldMasterQrycompany	FieldNamecompanyOrigin"CUSTOMER.DB".CompanySize  TFloatFieldMasterQryorderno	FieldNameordernoOrigin"ORDERS.DB".OrderNo  TFloatFieldMasterQrycustno	FieldNamecustnoOrigin"ORDERS.DB".CustNo  TCurrencyFieldMasterQryItemsTotal	FieldName
ItemsTotalOrigin"ORDERS.DB".ItemsTotal   TDataSourceDataSource1DataSet	MasterQryLeftTop   TQuery	DetailQryActive	DatabaseNameDBDEMOS
DataSourceDataSource1SQL.StringsSELECT OrderNo, Qty, ItemNoFROM ITEMS IWHERE (i.OrderNo = :OrderNo)ORDER BY OrderNo, ItemNo LeftTop@	ParamDataDataTypeftFloatNameorderno	ParamType	ptUnknownSize   TFloatFieldDetailQryOrderNo	FieldNameOrderNoOrigin"ITEMS.DB".OrderNo  TIntegerFieldDetailQryQty	FieldNameQtyOrigin"ITEMS.DB".Qty  TFloatFieldDetailQryItemNo	FieldNameItemNoOrigin"ITEMS.DB".ItemNo    