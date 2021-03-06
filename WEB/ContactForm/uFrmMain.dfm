object FrmMain: TFrmMain
  Width = 640
  Height = 480
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  object btnReset: TWebButton
    Left = 0
    Top = 0
    Width = 96
    Height = 25
    Caption = 'btnReset'
    ElementID = 'btnReset'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
    OnClick = btnResetClick
  end
  object txtLast: TWebEdit
    Left = 101
    Top = 0
    Width = 96
    Height = 25
    ChildOrder = 1
    ElementID = 'txtLast'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object btnSend: TWebButton
    Left = 202
    Top = 0
    Width = 96
    Height = 25
    Caption = 'btnSend'
    ChildOrder = 2
    ElementID = 'btnSend'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
    OnClick = btnSendClick
  end
  object txtSubject: TWebEdit
    Left = 303
    Top = 0
    Width = 96
    Height = 25
    ChildOrder = 3
    ElementID = 'txtSubject'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object txtEmail: TWebEdit
    Left = 404
    Top = 0
    Width = 96
    Height = 25
    ChildOrder = 4
    ElementID = 'txtEmail'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object txtFirst: TWebEdit
    Left = 505
    Top = 0
    Width = 96
    Height = 25
    ChildOrder = 5
    ElementID = 'txtFirst'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object txtBody: TWebMemo
    Left = 40
    Top = 46
    Width = 96
    Height = 25
    AutoSize = False
    ElementID = 'txtBody'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    SelLength = 0
    SelStart = 0
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
end
