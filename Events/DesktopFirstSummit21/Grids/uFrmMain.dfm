object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 
    'FlixEngineering LLC - TDBAdvGrid example for VCL client for Delp' +
    'hi-Books.com Web service'
  ClientHeight = 466
  ClientWidth = 1247
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvDockPanel1: TAdvDockPanel
    Left = 0
    Top = 0
    Width = 1247
    Height = 54
    MinimumSize = 3
    LockHeight = False
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = AdvToolBarOfficeStyler1
    UseRunTimeHeight = True
    Version = '6.8.1.2'
    object AdvToolBar1: TAdvToolBar
      Left = 3
      Top = 1
      Width = 1241
      Height = 52
      UIStyle = tsOffice2019White
      AllowFloating = False
      AntiAlias = aaAntiAlias
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      CompactImageIndex = -1
      ShowRightHandle = False
      ShowClose = False
      ShowOptionIndicator = False
      FullSize = True
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      Images = Images
      ParentOptionPicture = True
      ShowHint = False
      ToolBarIndex = -1
      object AdvToolBarSeparator1: TAdvToolBarSeparator
        Left = 52
        Top = 2
        Width = 10
        Height = 48
        LineColor = clBtnShadow
      end
      object btnUpdateBooks: TAdvGlowButton
        Left = 2
        Top = 2
        Width = 50
        Height = 48
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4474440
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = Images
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = True
        TabOrder = 0
        OnClick = btnUpdateBooksClick
        Appearance.BorderColor = clWhite
        Appearance.BorderColorHot = 15917525
        Appearance.BorderColorDown = 14925219
        Appearance.BorderColorChecked = 15917525
        Appearance.Color = clWhite
        Appearance.ColorTo = clWhite
        Appearance.ColorChecked = 15917525
        Appearance.ColorCheckedTo = 15917525
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 14925219
        Appearance.ColorDownTo = 14925219
        Appearance.ColorHot = 15917525
        Appearance.ColorHotTo = 15917525
        Appearance.ColorMirror = clWhite
        Appearance.ColorMirrorTo = clWhite
        Appearance.ColorMirrorHot = 15917525
        Appearance.ColorMirrorHotTo = 15917525
        Appearance.ColorMirrorDown = 14925219
        Appearance.ColorMirrorDownTo = 14925219
        Appearance.ColorMirrorChecked = 15917525
        Appearance.ColorMirrorCheckedTo = 15917525
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Appearance.TextColorChecked = 3881787
        Appearance.TextColorDown = 4474440
        Appearance.TextColorHot = 4474440
      end
      object btnReload: TAdvGlowButton
        Left = 62
        Top = 2
        Width = 50
        Height = 48
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4474440
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 0
        Images = Images
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = True
        TabOrder = 1
        OnClick = btnReloadClick
        Appearance.BorderColor = clWhite
        Appearance.BorderColorHot = 15917525
        Appearance.BorderColorDown = 14925219
        Appearance.BorderColorChecked = 15917525
        Appearance.Color = clWhite
        Appearance.ColorTo = clWhite
        Appearance.ColorChecked = 15917525
        Appearance.ColorCheckedTo = 15917525
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 14925219
        Appearance.ColorDownTo = 14925219
        Appearance.ColorHot = 15917525
        Appearance.ColorHotTo = 15917525
        Appearance.ColorMirror = clWhite
        Appearance.ColorMirrorTo = clWhite
        Appearance.ColorMirrorHot = 15917525
        Appearance.ColorMirrorHotTo = 15917525
        Appearance.ColorMirrorDown = 14925219
        Appearance.ColorMirrorDownTo = 14925219
        Appearance.ColorMirrorChecked = 15917525
        Appearance.ColorMirrorCheckedTo = 15917525
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Appearance.TextColorChecked = 3881787
        Appearance.TextColorDown = 4474440
        Appearance.TextColorHot = 4474440
      end
    end
  end
  object Grid: TDBAdvGrid
    AlignWithMargins = True
    Left = 3
    Top = 62
    Width = 1241
    Height = 399
    Margins.Top = 8
    Margins.Bottom = 5
    Align = alClient
    ColCount = 6
    DefaultRowHeight = 150
    DrawingStyle = gdsClassic
    FixedColor = clWhite
    RowCount = 2
    FixedRows = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Noto Sans'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect, goFixedRowDefAlign]
    ParentFont = False
    TabOrder = 2
    GridLineColor = 13948116
    GridFixedLineColor = 11250603
    OnGetDisplText = GridGetDisplText
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = 4474440
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = 11565130
    ActiveCellColorTo = 11565130
    BorderColor = 11250603
    ColumnSize.Stretch = True
    ColumnSize.StretchColumn = 1
    ControlLook.FixedGradientFrom = clWhite
    ControlLook.FixedGradientTo = clWhite
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientHoverMirrorFrom = clWhite
    ControlLook.FixedGradientHoverMirrorTo = clWhite
    ControlLook.FixedGradientHoverBorder = 11645361
    ControlLook.FixedGradientDownFrom = clWhite
    ControlLook.FixedGradientDownTo = clWhite
    ControlLook.FixedGradientDownMirrorFrom = clWhite
    ControlLook.FixedGradientDownMirrorTo = clWhite
    ControlLook.FixedGradientDownBorder = 11250603
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDown.TextChecked = 'Checked'
    FilterDropDown.TextUnChecked = 'Unchecked'
    FilterDropDownClear = '(All)'
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Larger than'
      'Smaller than'
      'Clear')
    FixedColWidth = 20
    FixedRowHeight = 150
    FixedRowAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = 3881787
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    HoverButtons.Buttons = <>
    HTMLSettings.ImageFolder = 'images'
    HTMLSettings.ImageBaseName = 'img'
    Look = glCustom
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.ColorTo = clNone
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SearchFooter.ResultFormat = '(%d of %d)'
    SearchFooter.SearchColumn = 1
    SearchFooter.SearchType = stNarrowDown
    SelectionColor = 13744549
    SortSettings.Show = True
    SortSettings.SingleColumn = True
    SortSettings.HeaderColor = clWhite
    SortSettings.HeaderColorTo = clWhite
    SortSettings.HeaderMirrorColor = clWhite
    SortSettings.HeaderMirrorColorTo = clWhite
    Version = '2.5.1.8'
    AutoCreateColumns = False
    AutoRemoveColumns = True
    Columns = <
      item
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 3881787
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        Width = 20
      end
      item
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        Header = 'Title'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 3881787
        HeaderFont.Height = -16
        HeaderFont.Name = 'Noto Sans'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        Width = 647
      end
      item
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'lang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        Header = 'Language'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 3881787
        HeaderFont.Height = -16
        HeaderFont.Name = 'Noto Sans'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        Width = 99
      end
      item
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'thumb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        Header = 'Cover'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 3881787
        HeaderFont.Height = -16
        HeaderFont.Name = 'Noto Sans'
        HeaderFont.Style = [fsBold]
        PictureField = True
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        Width = 124
      end
      item
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'isbn13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        Header = 'ISBN'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -16
        HeaderFont.Name = 'Noto Sans'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -16
        PrintFont.Name = 'Noto Sans'
        PrintFont.Style = []
        Width = 137
      end
      item
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'pubDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        Header = 'Published'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 3881787
        HeaderFont.Height = -16
        HeaderFont.Name = 'Noto Sans'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        Width = 210
      end>
    DataSource = DataSource1
    PageMode = False
    InvalidPicture.Data = {
      055449636F6E0000010001002020200000000000A81000001600000028000000
      2000000040000000010020000000000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
      6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
      FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
      6A6A6B4000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000006A6A6B22
      7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
      3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
      888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000006A6A6B43838383D8
      B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
      0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
      ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
      00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
      CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
      0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
      4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
      000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
      2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
      0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
      1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
      0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
      13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
      0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
      0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
      0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
      0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
      0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
      0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
      00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
      0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
      0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
      0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
      00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
      0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
      0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
      4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
      000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
      2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
      0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
      EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
      6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
      1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
      0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
      D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
      6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
      0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
      3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
      2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
      6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
      0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
      ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
      0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
      6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
      0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
      C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
      0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
      6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
      3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
      C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
      0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
      6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
      3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
      CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
      0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
      6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
      3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
      D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
      0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
      6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
      3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
      DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
      0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
      6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
      3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
      D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
      0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
      6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
      3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
      5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
      4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
      6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
      5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
      2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
      F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
      6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
      5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
      3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
      CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
      00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
      4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
      4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
      5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
      0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
      4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
      4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
      292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
      0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
      6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
      4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
      3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
      000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
      A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
      4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
      4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
      00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
      D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
      4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
      8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
      0000000000000000000000000000000000000000000000006A6A6B43838383D8
      B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
      5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
      E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000006A6A6B22
      7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
      8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
      888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
      FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
      6A6A6B4000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
      6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
      C000000380000001800000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000001
      80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
      FFC003FF}
    ShowPictureFields = True
    ShowUnicode = True
    ExplicitLeft = 8
    ExplicitTop = 73
    ExplicitWidth = 1231
    ExplicitHeight = 385
    ColWidths = (
      20
      647
      99
      124
      137
      210)
  end
  object AdvFormStyler1: TAdvFormStyler
    AppColor = 14851584
    AutoThemeAdapt = True
    Style = tsOffice2019White
    Left = 64
    Top = 376
  end
  object AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler
    AppColor.AppButtonColor = 14851584
    AppColor.AppButtonHoverColor = 12617216
    AppColor.TextColor = clWhite
    AppColor.HoverColor = 16764160
    AppColor.HoverTextColor = clBlack
    AppColor.HoverBorderColor = 15187578
    AppColor.SelectedColor = 12617216
    AppColor.SelectedTextColor = clBlack
    AppColor.SelectedBorderColor = 15187578
    Style = bsOffice2019White
    BorderColor = 12895944
    ButtonAppearance.CaptionTextColor = 4474440
    ButtonAppearance.CaptionTextColorHot = 4474440
    ButtonAppearance.BorderDownColor = clNone
    ButtonAppearance.BorderHotColor = clNone
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -12
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = clWhite
    CaptionAppearance.CaptionColorTo = clWhite
    CaptionAppearance.CaptionTextColor = 4474440
    CaptionAppearance.CaptionColorHot = 15917525
    CaptionAppearance.CaptionColorHotTo = 15917525
    CaptionAppearance.CaptionTextColorHot = 4474440
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = clWhite
    Color.ColorTo = clWhite
    Color.Direction = gdVertical
    Color.Mirror.Color = clWhite
    Color.Mirror.ColorTo = clBtnFace
    Color.Mirror.ColorMirror = 15587784
    Color.Mirror.ColorMirrorTo = 16774371
    ColorHot.Color = clNone
    ColorHot.ColorTo = clNone
    ColorHot.Direction = gdHorizontal
    ColorHot.Mirror.Color = clWhite
    ColorHot.Mirror.ColorTo = clBtnFace
    ColorHot.Mirror.ColorMirror = 15587784
    ColorHot.Mirror.ColorMirrorTo = 16774371
    CompactGlowButtonAppearance.Color = clWhite
    CompactGlowButtonAppearance.ColorTo = clWhite
    CompactGlowButtonAppearance.ColorChecked = 16111818
    CompactGlowButtonAppearance.ColorCheckedTo = 16367008
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 16111818
    CompactGlowButtonAppearance.ColorDownTo = 16367008
    CompactGlowButtonAppearance.ColorHot = 16117985
    CompactGlowButtonAppearance.ColorHotTo = 16372402
    CompactGlowButtonAppearance.ColorMirror = clSilver
    CompactGlowButtonAppearance.ColorMirrorTo = clWhite
    CompactGlowButtonAppearance.ColorMirrorHot = 16107693
    CompactGlowButtonAppearance.ColorMirrorHotTo = 16775412
    CompactGlowButtonAppearance.ColorMirrorDown = 16102556
    CompactGlowButtonAppearance.ColorMirrorDownTo = 16768988
    CompactGlowButtonAppearance.ColorMirrorChecked = 16102556
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 16768988
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    DockColor.Color = clWhite
    DockColor.ColorTo = clWhite
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 1
    DragGripStyle = dsNone
    FloatingWindowBorderColor = 7171437
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    GlowButtonAppearance.BorderColor = clWhite
    GlowButtonAppearance.BorderColorHot = 15917525
    GlowButtonAppearance.BorderColorDown = 14925219
    GlowButtonAppearance.BorderColorChecked = 15917525
    GlowButtonAppearance.Color = clWhite
    GlowButtonAppearance.ColorTo = clWhite
    GlowButtonAppearance.ColorChecked = 15917525
    GlowButtonAppearance.ColorCheckedTo = 15917525
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 14925219
    GlowButtonAppearance.ColorDownTo = 14925219
    GlowButtonAppearance.ColorHot = 15917525
    GlowButtonAppearance.ColorHotTo = 15917525
    GlowButtonAppearance.ColorMirror = clWhite
    GlowButtonAppearance.ColorMirrorTo = clWhite
    GlowButtonAppearance.ColorMirrorHot = 15917525
    GlowButtonAppearance.ColorMirrorHotTo = 15917525
    GlowButtonAppearance.ColorMirrorDown = 14925219
    GlowButtonAppearance.ColorMirrorDownTo = 14925219
    GlowButtonAppearance.ColorMirrorChecked = 15917525
    GlowButtonAppearance.ColorMirrorCheckedTo = 15917525
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GlowButtonAppearance.TextColorChecked = 3881787
    GlowButtonAppearance.TextColorDown = 4474440
    GlowButtonAppearance.TextColorHot = 4474440
    GroupAppearance.Background = clInfoBk
    GroupAppearance.BorderColor = 10729644
    GroupAppearance.Color = clWhite
    GroupAppearance.ColorTo = clWhite
    GroupAppearance.ColorMirror = clSilver
    GroupAppearance.ColorMirrorTo = clWhite
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -12
    GroupAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = clBlue
    GroupAppearance.CaptionAppearance.CaptionColor = clGray
    GroupAppearance.PageAppearance.BorderColor = clGray
    GroupAppearance.PageAppearance.Color = clWhite
    GroupAppearance.PageAppearance.ColorTo = clWhite
    GroupAppearance.PageAppearance.ColorMirror = clSilver
    GroupAppearance.PageAppearance.ColorMirrorTo = clWhite
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = 12888726
    GroupAppearance.PageAppearance.HighLightColor = 16644558
    GroupAppearance.TabAppearance.BorderColor = clBtnFace
    GroupAppearance.TabAppearance.BorderColorHot = clBlue
    GroupAppearance.TabAppearance.BorderColorSelected = clBtnFace
    GroupAppearance.TabAppearance.BorderColorSelectedHot = clNone
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = clWhite
    GroupAppearance.TabAppearance.ColorSelectedTo = clBtnFace
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = clYellow
    GroupAppearance.TabAppearance.ColorHotTo = clNone
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = clNone
    GroupAppearance.TabAppearance.ColorMirrorHotTo = clNone
    GroupAppearance.TabAppearance.ColorMirrorSelected = clWhite
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggVertical
    GroupAppearance.TabAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = clBlue
    GroupAppearance.TabAppearance.TextColorHot = clBlue
    GroupAppearance.TabAppearance.TextColorSelected = clBlue
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.TabAppearance.ShadowColor = 15255470
    GroupAppearance.TabAppearance.HighLightColor = 16775871
    GroupAppearance.TabAppearance.HighLightColorHot = 16643309
    GroupAppearance.TabAppearance.HighLightColorSelected = 6540536
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 12451839
    GroupAppearance.TabAppearance.HighLightColorDown = 16776144
    GroupAppearance.ToolBarAppearance.Color.Color = clWhite
    GroupAppearance.ToolBarAppearance.Color.ColorTo = clBtnFace
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = clNone
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = clNone
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = clGray
    PageAppearance.Color = clWhite
    PageAppearance.ColorTo = clWhite
    PageAppearance.ColorMirror = clSilver
    PageAppearance.ColorMirrorTo = clWhite
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = 12888726
    PageAppearance.HighLightColor = 16644558
    PagerCaption.BorderColor = clGray
    PagerCaption.Color = clWhite
    PagerCaption.ColorTo = clWhite
    PagerCaption.ColorMirror = clSilver
    PagerCaption.ColorMirrorTo = clWhite
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clWhite
    PagerCaption.TextColorExtended = clWhite
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -11
    PagerCaption.Font.Name = 'Segoe UI'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = clGray
    QATAppearance.Color = clWhite
    QATAppearance.ColorTo = clSilver
    QATAppearance.FullSizeBorderColor = clBlack
    QATAppearance.FullSizeColor = 12951425
    QATAppearance.FullSizeColorTo = 14922381
    RightHandleColor = clWhite
    RightHandleColorTo = clWhite
    RightHandleColorHot = 15917525
    RightHandleColorHotTo = 15917525
    RightHandleColorDown = 14925219
    RightHandleColorDownTo = 14925219
    TabAppearance.BorderColor = clBtnFace
    TabAppearance.BorderColorHot = clBlue
    TabAppearance.BorderColorSelected = clBtnFace
    TabAppearance.BorderColorSelectedHot = clNone
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = clWhite
    TabAppearance.ColorSelectedTo = clBtnFace
    TabAppearance.ColorDisabled = clNone
    TabAppearance.ColorDisabledTo = clNone
    TabAppearance.ColorHot = clYellow
    TabAppearance.ColorHotTo = clNone
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = clNone
    TabAppearance.ColorMirrorHotTo = clNone
    TabAppearance.ColorMirrorSelected = clWhite
    TabAppearance.ColorMirrorSelectedTo = clWhite
    TabAppearance.ColorMirrorDisabled = clNone
    TabAppearance.ColorMirrorDisabledTo = clNone
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clBlue
    TabAppearance.TextColorHot = clBlue
    TabAppearance.TextColorSelected = clBlue
    TabAppearance.TextColorDisabled = clWhite
    TabAppearance.ShadowColor = 15255470
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16643309
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = clWhite
    TabAppearance.BackGround.ColorTo = clBtnFace
    TabAppearance.BackGround.Direction = gdHorizontal
    Left = 184
    Top = 376
  end
  object dbBooks: TAureliusDataset
    FieldDefs = <>
    Left = 160
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = dbBooks
    Left = 224
    Top = 88
  end
  object Collection: TAdvSVGImageCollection
    Images = <
      item
        Data.Data = {
          0D544164765356474269746D6170440600003C737667206865696768743D2235
          31327074222076696577426F783D223020302035313220353131222077696474
          683D2235313270742220786D6C6E733D22687474703A2F2F7777772E77332E6F
          72672F323030302F737667223E3C7061746820643D226D3436352E3039373635
          36203131302E333034363838632D34392E3139393231382D37302E3830303738
          322D3132382E3039373635362D3131302E3339383433382D3231302D3130392E
          3739363837362D33322E3639393231382E3330303738322D36352E3939363039
          3420362E3839383433382D39382E3039373635362032302E3339383433382D37
          382033322E3730333132352D3133342E343032333434203130312E3639393231
          392D3135302E393032333434203138342E356C2D322E3339383433372031322E
          3630313536322038362E3339383433372033322E36393932313920322E373033
          3132352D31382E36303135363263382E3039373635372D35362E363939323139
          2034352E3839383433382D3130352E3839383433382039382E3639353331332D
          3132382E3339383433382031392E3830343638372D382E313031353632203431
          2E3430323334342D31322E3539373635362036332E3630313536322D31322E38
          39383433372035302E3639393231392D2E363031353633203130332E35203231
          2E353937363536203133372E3730333132352037332E3739363837356C2D3437
          2E3730333132352033352E363939323139203136362E3930323334342036322E
          313031353632762D3138362E3539373635367A6D302030222066696C6C3D2223
          373862396562222F3E3C7061746820643D226D3432312E363031353632203236
          312E3530373831322D322E3430323334332031382E333030373832632D382E33
          39383433382035362E3639393231382D34362E313939323139203130352E3630
          313536322D3939203132382E3130313536322D32302E31303135363320382E33
          39383433382D34322E3330303738312031332E3839383433382D36352E313031
          3536332031332E3839383433382D35302E30393736353620302D3130312E3939
          363039342D32322E3930323334342D3133352E3839383433372D37342E383030
          3738326C34372E3430323334332D33352E3339383433372D3133382D35322E32
          30333132352D32382E3630313536322D392E383938343338763138362E333030
          3738326C34362E3930323334342D33342E356334382E3839383433372037302E
          35203132362E383938343337203131302E35203230382E313935333132203131
          302E352033332E33303037383220302036372E3230333132352D372E33303037
          38322039392E3930323334342D32312E3130313536332037382D33322E363939
          323139203133342E3430323334342D3130312E363939323139203135302E3930
          323334342D3138342E356C322E3339383433372D31322E3539373635367A6D30
          2030222066696C6C3D2223373862396562222F3E3C672066696C6C3D22233433
          61326464223E3C7061746820643D226D3432312E363031353632203236312E35
          30373831322038362E3639393231392033322E3130313536332D322E33393834
          33372031322E353937363536632D31362E352038322E3830303738312D37322E
          393032333434203135312E3830303738312D3135302E39303233343420313834
          2E352D33322E3639393231392031332E3830303738312D36362E353937363536
          2032312E3130313536332D39392E3930323334342032312E313031353633762D
          39306332322E38303037383220302034352D352E3530333930362036352E3130
          313536332D31332E3930323334342035322E3830303738312D32322E35203930
          2E3630313536322D37312E3339383433382039392D3132382E3130313536327A
          6D302030222F3E3C7061746820643D226D3531322037352E3830383539347631
          38362E3539373635366C2D3136362E3930323334342D36322E30393736353620
          34372E3730333132352D33352E373033313235632D33342E3139393231392D35
          322E3139393231392D38372D37342E3339383433382D3133372E373033313235
          2D37332E373936383735762D39302E3330303738326338312E3930323334342D
          2E363031353632203136302E38303037383220333920323130203130392E3830
          303738327A6D302030222F3E3C2F673E3C2F7376673E}
        Name = 'refresh'
      end
      item
        Data.Data = {
          0D544164765356474269746D6170450300003C737667206865696768743D2235
          31327074222076696577426F783D223020302035313220353132222077696474
          683D2235313270742220786D6C6E733D22687474703A2F2F7777772E77332E6F
          72672F323030302F737667223E3C7061746820643D226D343036203931632D39
          20302D31372E36393932313920312E352D32362E33393834333820332E383938
          3433382D32312D35312E3330303738322D36382E3639393231382D38382E3539
          373635372D3132332E3630313536322D39332E3939363039342D342E38303037
          38312D2E3630313536332D392E3930323334342D2E3930323334342D31352D2E
          3930323334342D37322E33303037383120302D3133322E353937363536203532
          2D3134362E333938343338203132312E3330303738312D312E31393932313820
          302D322E3430323334332D2E3330303738312D332E3630313536322D2E333030
          3738312D34392E3520302D39312034302E352D39312039307334312E35203930
          203931203930683331356335372E3839383433382030203130362D34372E3130
          31353632203130362D313035732D34382E3130313536322D3130352D3130362D
          3130357A6D302030222066696C6C3D2223653665366666222F3E3C7061746820
          643D226D3531322031393663302035372E3839383433382D34382E3130313536
          32203130352D31303620313035682D313530762D3330302E3039373635366335
          342E39303233343420352E333938343337203130322E3539373635362034322E
          363939323138203132332E3630313536322039332E39393630393420382E3639
          393231392D322E3339383433382031372E3339383433382D332E383938343338
          2032362E3339383433382D332E3839383433382035372E383938343338203020
          3130362034372E31303135363220313036203130357A6D302030222066696C6C
          3D2223633363336535222F3E3C7061746820643D226D33303120333631762D31
          3230682D393076313230682D37356C31323020313531203132302D3135317A6D
          302030222066696C6C3D2223373862396562222F3E3C7061746820643D226D33
          3736203336312D31323020313531762D323731683435763132307A6D30203022
          2066696C6C3D2223343361326464222F3E3C2F7376673E}
        Name = 'download'
      end>
    Left = 328
    Top = 376
  end
  object Images: TVirtualImageList
    AutoFill = True
    DisabledGrayscale = False
    DisabledSuffix = '_Disabled'
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'refresh'
        Disabled = False
        Name = 'refresh'
      end
      item
        CollectionIndex = 1
        CollectionName = 'download'
        Disabled = False
        Name = 'download'
      end>
    ImageCollection = Collection
    Width = 40
    Height = 40
    Left = 408
    Top = 376
  end
end
