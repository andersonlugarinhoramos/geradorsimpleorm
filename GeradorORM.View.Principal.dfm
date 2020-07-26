object ViewGeradorORM: TViewGeradorORM
  Left = 0
  Top = 0
  Caption = 'Gerador Simple ORM'
  ClientHeight = 614
  ClientWidth = 1055
  Color = 7036495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object panLayoutPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1055
    Height = 614
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 41
    object panTopo: TPanel
      Left = 10
      Top = 0
      Width = 1035
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      Color = 4866358
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = -6
      ExplicitWidth = 1055
    end
    object panLayoutDireita: TPanel
      Left = 449
      Top = 89
      Width = 596
      Height = 515
      Align = alClient
      BevelOuter = bvNone
      Padding.Top = 5
      TabOrder = 1
      ExplicitLeft = 336
      ExplicitWidth = 709
      ExplicitHeight = 388
      object panDireita: TPanel
        Left = 0
        Top = 5
        Width = 596
        Height = 510
        Align = alClient
        BevelOuter = bvNone
        Color = 4866358
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 6
        ExplicitHeight = 383
        object panDireitaTopo: TPanel
          Left = 10
          Top = 10
          Width = 576
          Height = 45
          Align = alTop
          BevelOuter = bvNone
          Color = 11829573
          Padding.Top = 10
          Padding.Right = 5
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 0
          object lblClasse: TLabel
            Left = 0
            Top = 10
            Width = 67
            Height = 25
            Align = alLeft
            Caption = 'Unit Name:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
          object edtNomeClasse: TEdit
            Left = 67
            Top = 10
            Width = 470
            Height = 25
            Align = alClient
            BorderStyle = bsNone
            Color = clMenuText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            StyleElements = [seClient, seBorder]
            ExplicitHeight = 20
          end
          object panBotaoSaveUnit: TPanel
            Left = 537
            Top = 10
            Width = 34
            Height = 25
            Align = alRight
            BevelOuter = bvNone
            Padding.Left = 5
            Padding.Right = 5
            TabOrder = 1
            ExplicitLeft = 544
            ExplicitTop = 16
            ExplicitWidth = 185
            ExplicitHeight = 41
            object spbSalvarUnit: TSpeedButton
              Left = 5
              Top = 0
              Width = 24
              Height = 25
              Align = alClient
              Glyph.Data = {
                C6070000424DC607000000000000360000002800000016000000160000000100
                2000000000009007000000000000000000000000000000000000000000000000
                0000000000040000000500000005000000050000000500000005000000050000
                0005000000050000000500000005000000030000000000000000000000000000
                0000000000000000000000000000000000000000000000000006242424559D9D
                9DB29F9F9FB39F9F9FB3A0A0A0B3A1A1A1B3A1A1A1B3A1A1A1B3A1A1A1B39F9F
                9FB39C9C9CB3868686A011111121000000000000000000000000000000000000
                0000000000000000000000000000000000093939397DF5F5F5FEF8F8F8FFFAFA
                FAFFFAFAFAFFFBFBFBFFFCFCFCFFFDFDFDFFFDFDFDFFF7F7F7FFEFEFEFFFE0E0
                E0FEA9A9A9D71B1B1B3200000001000000000000000000000000000000000000
                000000000000000000093939397DF5F5F5FEDFDFDFFFDEDEDEFFF2F2F2FFFBFB
                FBFFFCFCFCFFFDFDFDFFFDFDFDFFF8F8F8FFEFEFEFFFE2E1E1FFC2C2C1FEB9B9
                B9E4252525410000000100000000000000000000000000000000000000000000
                00093939397DF5F5F5FEF6F6F6FFF5F5F5FFF8F8F8FFFBFBFBFFFCFCFCFFFDFD
                FDFFFDFDFDFFF9F9F9FFF2F2F2FFE8E8E8FFB8B7B7FFEDEDEDFFBDBDBDE92323
                233E0000000100000000000000000000000000000000000000093939397DF4F4
                F4FEB09BB3FFB7A3B9FFF9F9F9FFFBFBFBFFFCFCFCFFFDFDFDFFD9CDDAFFB49C
                B6FFC1AFC3FFCABCCBFFC0BCC0FFA696A8FFC1B7C2FFAFAEAFE11717172E0000
                0000000000000000000000000000000000093939387DF2F2F2FE704774FF7B55
                7FFFF8F8F8FFFBFBFBFFFCFCFCFFFCFCFCFF9B7B9FFFDFD5E0FFC2AEC5FFB69F
                B9FFC5B6C7FFC3B9C4FFA38EA5FFAC98AEFFA8A8A8CF0D0D0D1A000000000000
                000000000000000000093838387DF2F1F2FE704774FF7B557FFFF8F7F8FFFAFA
                FAFFFBFBFBFFFCFCFCFFE4DBE5FFC0A9C2FFA482A8FFBDA4BFFFD7C9D8FF9971
                9DFFAE90B1FFE3DEE3FFEDEDEDFE434343590000000000000000000000000000
                00093838387DF1F1F1FE714776FF6F4374FFB9A3BBFFBFAAC1FFD0C1D2FFF5F2
                F5FFD1C0D3FFB294B5FFA886ACFFDCCEDDFFD5C4D6FFB190B5FFAC88B0FFE5DC
                E5FFF6F6F6FF4545455C000000000000000000000000000000093838387DF1F0
                F0FE734778FF602B66FF69366EFF67316DFF632A69FF8F6594FFF5F3F6FFF7F6
                F8FFF8F6F8FFFDFDFDFFFDFDFDFFF3EFF4FFF5F1F5FFFBFBFBFFFCFCFCFF4646
                465C000000000000000000000000000000093838387DF0EFEFFE75477AFF7F52
                84FFEDE9EDFFECE7EDFFA27EA6FF67296EFFD1BFD3FFFBFBFBFFFCFCFCFFFCFC
                FCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFF4646465C000000000000
                000000000000000000093838387DEFEEEFFE77467CFF825487FFF5F4F4FFF7F7
                F7FFBCA2BFFF692A70FFC9B3CCFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFC
                FCFFFCFCFCFFFCFCFCFFFCFCFCFF4646465C0000000000000000000000000000
                00093838387DEEEDEDFE79467EFF703776FF976E9CFF946799FF73367AFF773A
                7EFFE8DFE9FFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFC
                FCFFFBFBFBFF4545455C000000000000000000000000000000093838387DEDED
                EDFE9B769FFF8D6092FF8F6195FF946599FFA077A5FFD8C9DAFFF8F8F8FFF9F9
                F9FFFAFAFAFFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFF4545
                455C000000000000000000000000000000093838387DEEEEEDFEEFEFEFFFE3E3
                E3FFD5D5D4FFD8D8D8FFDBDBDBFFE1E1E0FFE0E0E0FFDBDBDBFFE1E1E1FFE5E5
                E5FFDBDBDBFFE0E0E0FFE2E2E2FFE9E9E9FFF9F9F9FF4545455C000000000000
                000000000000000000093838387DECECEBFEE5E5E4FFDDDDDCFFDFDFDFFFEBEB
                EAFFEFEFEFFFEFEFEEFFEEEEEEFFF1F1F1FFF3F3F2FFF1F1F1FFF2F2F2FFF3F3
                F3FFF0F0F0FFF4F4F4FFF9F9F9FF4545455C0000000000000000000000000000
                00093838387DEBEBEAFEDADAD9FFDCDCDBFFDCDCDCFFEEEEEDFFF2F2F1FFF3F3
                F2FFF3F3F3FFF4F4F4FFF5F5F5FFF6F6F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
                F6FFF7F7F7FF4545455C000000000000000000000000000000093837377DEAEA
                E9FEECECEBFFEDEDECFFEEEEEDFFEFEFEEFFF0F0EFFFF1F1F0FFF2F2F1FFF3F3
                F2FFF3F3F3FFF4F4F3FFF4F4F4FFF5F5F4FFF5F5F4FFF5F5F5FFF5F5F5FF4545
                455C000000000000000000000000000000093737377DE8E7E6FEDDDDDCFFD6D6
                D6FFD3D3D2FFD8D8D8FFE1E1E1FFDDDDDDFFD9D9D8FFD8D8D7FFDDDDDCFFEAEA
                E9FFF2F2F2FFF3F3F2FFF3F3F2FFF3F3F2FFF3F3F3FF4545455C000000000000
                000000000000000000093737377DE6E5E5FEDCDBDBFFE2E1E1FFE3E3E2FFE4E4
                E3FFE7E7E6FFE2E2E2FFE8E8E8FFE8E8E7FFE8E8E8FFEDEDEDFFF1F1F0FFF1F1
                F0FFF1F1F1FFF1F1F1FFF1F1F1FF4444445C0000000000000000000000000000
                0008222222658F8F8FBE90908FBE919190BE919191BE919191BE929291BE9292
                92BE939392BE939393BE949493BE949494BE949494BE949494BE949494BE9494
                94BE949493BD2A2A2A45000000000000000000000000000000010000000F0000
                0015000000150000001500000015000000150000001500000015000000150000
                0015000000150000001500000015000000150000001500000015000000140000
                00070000000000000000}
              ExplicitLeft = 11
              ExplicitTop = 3
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
        end
        object memUnit: TMemo
          Left = 10
          Top = 55
          Width = 576
          Height = 445
          Align = alClient
          BorderStyle = bsNone
          Color = 3288877
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitTop = 50
          ExplicitHeight = 323
        end
      end
    end
    object panLayoutEsquerda: TPanel
      Left = 10
      Top = 89
      Width = 439
      Height = 515
      Align = alLeft
      BevelOuter = bvNone
      Padding.Top = 5
      Padding.Right = 5
      TabOrder = 2
      ExplicitHeight = 388
      object panLeft: TPanel
        Left = 0
        Top = 5
        Width = 434
        Height = 510
        Align = alClient
        BevelOuter = bvNone
        Color = 7036495
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = -1
        ExplicitTop = 6
        ExplicitWidth = 370
        ExplicitHeight = 383
        object panLeftTop: TPanel
          Left = 10
          Top = 10
          Width = 414
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = 11829573
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 19
          ExplicitTop = 92
        end
        object panLeftGridFields: TPanel
          Left = 10
          Top = 295
          Width = 414
          Height = 205
          Align = alClient
          BevelOuter = bvNone
          Color = 4866358
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 19
        end
        object panLeftListaTabelas: TPanel
          Left = 10
          Top = 51
          Width = 414
          Height = 16
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Lista das Tabelas'
          Color = 7036495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          ExplicitTop = 265
        end
        object Panel2: TPanel
          Left = 10
          Top = 279
          Width = 414
          Height = 16
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Lista dos Campos da Tabela'
          Color = 7036495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          ExplicitTop = 265
        end
        object panLeftGridTabelas: TPanel
          Left = 10
          Top = 67
          Width = 414
          Height = 212
          Align = alTop
          BevelOuter = bvNone
          Color = 4866358
          ParentBackground = False
          TabOrder = 4
        end
      end
    end
  end
end
