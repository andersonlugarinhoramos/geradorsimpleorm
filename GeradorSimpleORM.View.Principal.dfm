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
  WindowState = wsMaximized
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
    object panLayoutDireita: TPanel
      Left = 449
      Top = 49
      Width = 596
      Height = 555
      Align = alClient
      BevelOuter = bvNone
      Padding.Top = 5
      TabOrder = 0
      object panDireita: TPanel
        Left = 0
        Top = 5
        Width = 596
        Height = 550
        Align = alClient
        BevelOuter = bvNone
        Color = 4866358
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 0
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
            TabStop = False
            Align = alClient
            BorderStyle = bsNone
            Color = clMenuText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            StyleElements = [seClient, seBorder]
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
            object spbSalvarUnit: TSpeedButton
              Left = 5
              Top = 0
              Width = 24
              Height = 25
              Hint = 'Gerar Unit'
              Align = alClient
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000330000003300000000000000000000000000000000000000000000
                000A000000260000003300000033000000330000003300000033000000330000
                00336C6A69FF6C6A69FF0000000E0000003300000033000000000000001F2322
                205C837E75C9B0AA9EFFAFA99DFFAEA89CFFC9C3B6FF73716FFF777573FFCBC4
                B8FF999796FF999796FF1C1C1C69777573FF73716FFF000000006B6760ADB4AE
                A2FFC5BEB3FFD4CAC2FFE1D7CFFFE8DED6FFFBEFE8FF7F7D7BFFC7C4C3FF8684
                83FFBCBAB9FFBCBAB9FF868483FFC7C4C3FF787675FF00000000B1AB9FFFC8C1
                B6FFCFC7BFFFD6CCC5FFDCD3CAFFE9DDD6FFFFFFFFFFC2BEB8FF878584FFA9A7
                A6FF817F7DFF817F7DFFA9A7A6FF878584FF2E2D2C8900000033B0AB9EFFC7C0
                B6FFCDC4BBFFD3CAC2FFDAD1C8FFFFFFFCFF716F6DFFA19F9EFFC1BFBDFF8380
                7FFFFCF2E6FFF5EAE0FF83807FFFC1BFBDFFA09E9DFF7B7977FFB0AA9EFFCAC3
                B9FFEAE5DDFFF7F3EBFFFFFBF4FFFFFFFBFF72706EFFA3A09FFFC4C2C1FF8684
                80FFEFEEEEFFD1CAC1FF868480FFC3C1C1FFA19F9EFF7C7A78FF6F6B64ADF9F3
                EDFFD8D1C9FFC2B8B0FFBFB6AEFFC5BAB2FFE1D5CBFFA8A09BFF8C8A88FFB2AF
                AEFF878584FF878584FFB2AFAEFF8C8A88FF3837369B00000000706C64B4A39A
                8FFFBAB2A7FFCAC1B8FFDED5CCFFE5DBD3FFFFFFFFFF868481FFD5D3D2FF8D8B
                89FFC9C7C6FFC9C7C6FF8D8B89FFD5D3D2FF7F7D7BFF00000000B1AB9FFFC9C2
                B9FFCFC7BFFFD5CCC4FFDCD3CAFFE3D9D1FFF7EBE4FF7A7876FF878583FFD9D9
                D8FFA9A7A5FFA9A7A5FFC0BBAFFF878583FF7B7977FF00000000B0AB9EFFC7C0
                B6FFCCC4BBFFD3C9C1FFDAD0C7FFE1D7CFFFEBE1DAFFF4E8DFFFFFFBF2FFF3E9
                DDFF767472FF767472FFBDB6AAFF000000000000000000000000AFAA9DFFC8C1
                B7FFE8E3DBFFF5F0E8FFFDF8F2FFFCF8F1FFFBF7F0FFFCF7F1FFFCF8F1FFF6F0
                EAFFE9E2DBFFCAC2BAFFAFA99DFF000000000000000000000000AEA89CFFFBF5
                EFFFEEE7DEFFE0D8CEFFDDD5CCFFDDD4CBFFDDD4CBFFDDD4CBFFDDD5CCFFE0D7
                CEFFEDE6DEFFFBF6EFFFAEA89CFF000000000000000000000000AFA99DFFE1D8
                CEFFE1D7CEFFDFD6CCFFDFD5CBFFDFD5CBFFDFD5CBFFDFD5CBFFDFD5CBFFDFD6
                CCFFE1D7CEFFE1D8CEFFAFA99DFF0000000000000000000000006A675F99B6B0
                A4FFD6CFC4FFE6DED5FFEFE7DDFFEEE6DCFFEEE6DCFFEEE6DCFFEFE7DDFFE6DE
                D5FFD6CFC4FFB6B0A4FF6A675F99000000000000000000000000000000002322
                2033827D74BCAEA99CFFAEA89CFFAEA89CFFAEA89CFFAEA89CFFAEA89CFFAEA9
                9CFF827D74BC2322203300000000000000000000000000000000}
              ParentShowHint = False
              ShowHint = True
              OnClick = spbSalvarUnitClick
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
          Height = 485
          Align = alClient
          BorderStyle = bsNone
          Color = 3288877
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
    end
    object panLayoutEsquerda: TPanel
      Left = 10
      Top = 49
      Width = 439
      Height = 555
      Align = alLeft
      BevelOuter = bvNone
      Padding.Top = 5
      Padding.Right = 5
      TabOrder = 1
      object panLeft: TPanel
        Left = 0
        Top = 5
        Width = 434
        Height = 550
        Align = alClient
        BevelOuter = bvNone
        Color = 7036495
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 0
        object panLeftTop: TPanel
          Left = 10
          Top = 10
          Width = 414
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = 11829573
          Padding.Left = 10
          Padding.Top = 9
          Padding.Right = 10
          Padding.Bottom = 9
          ParentBackground = False
          TabOrder = 0
          object srcTabelas: TSearchBox
            Left = 10
            Top = 9
            Width = 394
            Height = 23
            Align = alClient
            TabOrder = 0
            OnInvokeSearch = srcTabelasInvokeSearch
            ExplicitHeight = 21
          end
        end
        object panLeftGridFields: TPanel
          Left = 10
          Top = 295
          Width = 414
          Height = 245
          Align = alClient
          BevelOuter = bvNone
          Color = 4866358
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentBackground = False
          TabOrder = 1
          object DBGrid2: TDBGrid
            Left = 5
            Top = 5
            Width = 404
            Height = 235
            Align = alClient
            DataSource = dsFields
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'COLUMN_NAME'
                Title.Alignment = taRightJustify
                Title.Caption = 'Campo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 165
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COLUMN_TYPENAME'
                Title.Alignment = taRightJustify
                Title.Caption = 'Tipo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 140
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COLUMN_LENGTH'
                Title.Alignment = taRightJustify
                Title.Caption = 'Tamanho'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 60
                Visible = True
              end>
          end
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
        end
        object panLeftGridTabelas: TPanel
          Left = 10
          Top = 67
          Width = 414
          Height = 212
          Align = alTop
          BevelOuter = bvNone
          Color = 4866358
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentBackground = False
          TabOrder = 4
          object DBGrid1: TDBGrid
            Left = 5
            Top = 5
            Width = 404
            Height = 202
            Align = alClient
            DataSource = dsTabelas
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGrid1CellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'TABLE_NAME'
                Title.Alignment = taCenter
                Title.Caption = 'Tabela'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 370
                Visible = True
              end>
          end
        end
      end
    end
    object panTopo: TPanel
      Left = 10
      Top = 0
      Width = 1035
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Color = 4866358
      Padding.Bottom = 10
      ParentBackground = False
      TabOrder = 2
      object lblProjeto: TLabel
        Left = 10
        Top = 13
        Width = 67
        Height = 19
        Caption = 'Projeto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object panBotaoDireita: TPanel
        Left = 824
        Top = 0
        Width = 211
        Height = 39
        Align = alRight
        BevelOuter = bvNone
        Padding.Left = 30
        Padding.Top = 5
        Padding.Right = 30
        Padding.Bottom = 5
        TabOrder = 0
        object spbSelecionar: TSpeedButton
          Left = 30
          Top = 5
          Width = 151
          Height = 29
          Align = alClient
          Caption = 'Projetos'
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000015131241544C47F8544C47FF544C
            47FF544C47FF544C47FF544C47FF544C47FF544C47FF544C47FF544C47F81513
            1241000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000024211F6E625A54F6B1A297FFC0B0
            A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FFB1A297FF625A54F62421
            1F6E000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000101010228232173574F49F9C0B0
            A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FF574F49F9282321730101
            0102000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000544C47FFC0B0
            A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FF564E48F1000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000544C47FFC0B0
            A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FF60585280000000000000
            00000000000000000000000000000000000000000000000000000A09081E4A44
            41C7554D48FC544C47FF544C47FF544C47FF544C47FF544C47FF544C47FF544C
            47FF544C47FF544C47FF544C47FF544C47FF544C47FF544C47FF544C47FF544C
            47FF544C47FF544C47FF544C47FF554D48FC4A4441C70A09081E4A4441C89995
            92FEEAEAE9FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2
            F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2
            F1FFF2F2F1FFF2F2F1FFF2F2F1FFEAEAE9FF999592FE4A4441C7554D48FCEAEA
            E9FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2
            F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2
            F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFEAEAE9FF554D48FC544C47FFF2F2
            F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2
            F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2
            F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FF544C47FF544C47FFF2F2
            F1FFD4D3D2FFA39F9CFFA39F9CFFA39F9CFFA39F9CFFA39F9CFFA39F9CFFA39F
            9CFFA39F9CFFA39F9CFFA39F9CFFA39F9CFFA39F9CFFA39F9CFFA39F9CFFA39F
            9CFFA39F9CFFA39F9CFFA39F9CFFA39F9CFFA39F9CFF544C47FF544C47FFC0B0
            A4FFBE9B6EFFA17B48FFA17B48FFA17B48FFA17B48FFA17B48FFA17B48FFA17B
            48FFA17B48FFA17B48FFA17B48FFA17B48FFA17B48FFA17B48FFA17B48FFA17B
            48FFA17B48FFA17B48FFA17B48FF957C5FFF8A7E76FF5A534DB8544C47FFC0B0
            A4FFD7AD77FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA
            49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFE6A549FFAA80
            48FFAA8048FFE6A549FFEEAA49FFD7AD77FFC0B0A4FF60585280544C47FFC0B0
            A4FFD7AD77FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA
            49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFC99349FFDEA049FFAA8048FF685C
            52FF685C52FFAA8048FFDD9F49FFB8966CFFC0B0A4FF60585280544C47FFC0B0
            A4FFD7AD77FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA
            49FFEEAA49FFEEAA49FFEEAA49FFA98049FF61554CFF5F5449FF6D5C48FF7E6F
            61FF7E6F61FF6D5C48FF5E5349FF60554DFF90837AFF60585280544C47FFC0B0
            A4FFD7AD77FFEAA849FF856948FFB38649FFEEAA49FFB18448FF846948FFEAA8
            49FFEEAA49FFEEAA49FFEEAA49FF725F4AFF827263FF8D7B6AFF857465FF9F89
            75FF9F8975FF857465FF8D7B6AFF827263FF6B6159FF60585280544C47FFC0B0
            A4FFD4AB76FF836947FF846948FFEBA849FFEEAA49FFEAA849FF836947FF8369
            47FFEAA849FFEEAA49FFEEAA49FFC69248FF5B5249FFA08B76FF9E8975FF8373
            64FF837364FF9E8975FFA08B76FF5A514AFFA4968CFF60585280544C47FFC0B0
            A4FFA18563FF625447FFE8A649FFEEAA49FFEEAA49FFEEAA49FFE8A649FF6254
            47FFAF8448FFEEAA49FF7D664AFF544C47FF756758FFA08B76FF6F6255FF756A
            60FF756A60FF6F6255FFA08B76FF74675AFF544C47FF5B534CE1544C47FFC0B0
            A4FFD4AB76FF836947FF856948FFEBA849FFEEAA49FFEAA849FF846948FF8369
            47FFEAA849FFEEAA49FF544C47FFA08B76FFA08B76FFA08B76FF594F4AFFD0C8
            C2FFD0C8C2FF594F4AFFA08B76FFA08B76FFA08B76FF544C47FF544C47FFC0B0
            A4FFD7AD77FFEAA849FF846948FFB18448FFEEAA49FFB38649FF856948FFEAA8
            49FFEEAA49FFEEAA49FF7D664AFF544C47FF756758FFA08B76FF6F6255FF756A
            60FF756A60FF6F6255FFA08B76FF74675AFF544C47FF5B534CE1544C47FFC0B0
            A4FFD7AD77FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA
            49FFEEAA49FFEEAA49FFEEAA49FFC69248FF5B5249FFA08B76FF9E8975FF8373
            64FF837364FF9E8975FFA08B76FF5A514AFFA4968CFF60585280544C47FFC0B0
            A4FFD7AD77FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA49FFEEAA
            49FFEEAA49FFEEAA49FFEEAA49FF725F4AFF827263FF8D7B6AFF867565FF9F89
            75FF9F8975FF867565FF8D7B6AFF827263FF6B6159FF60585280544C47FCBAAB
            A0FFC8AF93FFD7AD77FFD7AD77FFD7AD77FFD7AD77FFD7AD77FFD7AD77FFD7AD
            77FFD7AD77FFD7AD77FFD7AD77FF9C8162FF60554DFF5D534CFF695C4FFF7E6F
            61FF7E6F61FF695C4FFF5D534CFF5F554EFF90837AFF5C544E7A47403DC88378
            70FEBAABA0FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0
            A4FFC0B0A4FFC0B0A4FFC0B0A4FFC0B0A4FFA6988EFFB4A599FF90837BFF675C
            53FF675C53FF90837BFFB4A599FFA6988EFFBEAFA3FD262320320A09081E4740
            3DC8544C47FC544C47FF544C47FF544C47FF544C47FF544C47FF544C47FF544C
            47FF544C47FF544C47FF5B534DAF6058528060585280605852805F5751875B53
            4DB95B534DB960575187605852805C544E7A2623203200000000}
          OnClick = spbSelecionarClick
          ExplicitLeft = 82
          ExplicitTop = 4
          ExplicitWidth = 129
          ExplicitHeight = 35
        end
      end
    end
  end
  object dsTabelas: TDataSource
    Left = 356
    Top = 161
  end
  object dsFields: TDataSource
    Left = 364
    Top = 385
  end
end
