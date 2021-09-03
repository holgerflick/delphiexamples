object DbController: TDbController
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 337
  Width = 482
  object Manager: TFDManager
    ConnectionDefFileAutoLoad = False
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 136
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 72
    Top = 112
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    DriverID = 'FB4'
    VendorLib = 'D:\firebird4\fbclient.dll'
    Left = 256
    Top = 104
  end
end
