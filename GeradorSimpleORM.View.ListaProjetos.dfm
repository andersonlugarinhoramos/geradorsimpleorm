object ViewListaProjetos: TViewListaProjetos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de Projetos'
  ClientHeight = 609
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panLeft: TPanel
    Left = 0
    Top = 0
    Width = 482
    Height = 609
    Align = alClient
    BevelOuter = bvNone
    Color = 7036495
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 488
    ExplicitHeight = 638
    object panLeftTop: TPanel
      Left = 10
      Top = 10
      Width = 462
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 11829573
      Padding.Left = 5
      Padding.Top = 9
      Padding.Right = 5
      Padding.Bottom = 9
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 468
      object srcLista: TSearchBox
        Left = 5
        Top = 9
        Width = 452
        Height = 23
        Align = alClient
        TabOrder = 0
        OnInvokeSearch = srcListaInvokeSearch
        ExplicitLeft = 0
        ExplicitTop = 12
        ExplicitWidth = 364
      end
    end
    object panLeftGridFields: TPanel
      Left = 10
      Top = 325
      Width = 462
      Height = 274
      Align = alClient
      BevelOuter = bvNone
      Color = 4866358
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 468
      ExplicitHeight = 303
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 462
        Height = 249
        Align = alClient
        DataSource = dsConfiguracoes
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PARAMETRO'
            Title.Alignment = taCenter
            Title.Caption = 'Par'#226'metro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end>
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 249
        Width = 462
        Height = 25
        DataSource = dsConfiguracoes
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alBottom
        ConfirmDelete = False
        TabOrder = 1
        ExplicitLeft = 144
        ExplicitTop = 192
        ExplicitWidth = 240
      end
    end
    object panLeftListaTabelas: TPanel
      Left = 10
      Top = 51
      Width = 462
      Height = 16
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Projetos'
      Color = 7036495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 468
    end
    object Panel2: TPanel
      Left = 10
      Top = 309
      Width = 462
      Height = 16
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Configura'#231#227'o do Projeto'
      Color = 7036495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      ExplicitWidth = 468
    end
    object panLeftGridTabelas: TPanel
      Left = 10
      Top = 67
      Width = 462
      Height = 242
      Align = alTop
      BevelOuter = bvNone
      Color = 4866358
      ParentBackground = False
      TabOrder = 4
      ExplicitWidth = 468
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 462
        Height = 217
        Align = alClient
        DataSource = dsProjetos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 375
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 217
        Width = 462
        Height = 25
        DataSource = dsProjetos
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alBottom
        ConfirmDelete = False
        TabOrder = 1
        ExplicitLeft = 144
        ExplicitTop = 192
        ExplicitWidth = 240
      end
    end
  end
  object dsProjetos: TDataSource
    Left = 402
    Top = 107
  end
  object dsConfiguracoes: TDataSource
    Left = 410
    Top = 379
  end
end
