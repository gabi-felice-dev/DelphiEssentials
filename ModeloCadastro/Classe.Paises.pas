unit Classe.Paises;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TAraDTO = class;
  TBreDTO = class;
  TBRLDTO = class;
  TCapitalInfoDTO = class;
  TCarDTO = class;
  TCesDTO = class;
  TCoatOfArmsDTO = class;
  TCurrenciesDTO = class;
  TCymDTO = class;
  TDemonymsDTO = class;
  TDeuDTO = class;
  TEngDTO = class;
  TEstDTO = class;
  TFinDTO = class;
  TFlagsDTO = class;
  TFraDTO = class;
  TGiniDTO = class;
  THrvDTO = class;
  THunDTO = class;
  TIddDTO = class;
  TItaDTO = class;
  TJpnDTO = class;
  TKorDTO = class;
  TLanguagesDTO = class;
  TMapsDTO = class;
  TNameDTO = class;
  TNativeNameDTO = class;
  TNldDTO = class;
  TPerDTO = class;
  TPolDTO = class;
  TPorDTO = class;
  TPostalCodeDTO = class;
  TRusDTO = class;
  TSlkDTO = class;
  TSpaDTO = class;
  TSrpDTO = class;
  TSweDTO = class;
  TTranslationsDTO = class;
  TTurDTO = class;
  TUrdDTO = class;
  TZhoDTO = class;

  TPostalCodeDTO = class
  private
    [JSONName('format')]
    FFormat: string;
    [JSONName('regex')]
    FRegex: string;
  published
    property Format: string read FFormat write FFormat;
    property Regex: string read FRegex write FRegex;
  end;
  
  TCapitalInfoDTO = class(TJsonDTO)
  private
    [JSONName('latlng')]
    FLatlngArray: TArray<Double>;
    [JSONMarshalled(False)]
    FLatlng: TList<Double>;
    function GetLatlng: TList<Double>;
  protected
    function GetAsJson: string; override;
  published
    property Latlng: TList<Double> read GetLatlng;
  public
    destructor Destroy; override;
  end;
  
  TCoatOfArmsDTO = class
  private
    [JSONName('png')]
    FPng: string;
    [JSONName('svg')]
    FSvg: string;
  published
    property Png: string read FPng write FPng;
    property Svg: string read FSvg write FSvg;
  end;
  
  TFlagsDTO = class
  private
    [JSONName('alt')]
    FAlt: string;
    [JSONName('png')]
    FPng: string;
    [JSONName('svg')]
    FSvg: string;
  published
    property Alt: string read FAlt write FAlt;
    property Png: string read FPng write FPng;
    property Svg: string read FSvg write FSvg;
  end;
  
  TCarDTO = class(TJsonDTO)
  private
    [JSONName('side')]
    FSide: string;
    [JSONName('signs')]
    FSignsArray: TArray<string>;
    [JSONMarshalled(False)]
    FSigns: TList<string>;
    function GetSigns: TList<string>;
  protected
    function GetAsJson: string; override;
  published
    property Side: string read FSide write FSide;
    property Signs: TList<string> read GetSigns;
  public
    destructor Destroy; override;
  end;
  
  TGiniDTO = class
  private
    [JSONName('2019')]
    F_2019: Double;
  published
    property _2019: Double read F_2019 write F_2019;
  end;
  
  TMapsDTO = class
  private
    [JSONName('googleMaps')]
    FGoogleMaps: string;
    [JSONName('openStreetMaps')]
    FOpenStreetMaps: string;
  published
    property GoogleMaps: string read FGoogleMaps write FGoogleMaps;
    property OpenStreetMaps: string read FOpenStreetMaps write FOpenStreetMaps;
  end;
  
  TFraDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('f')]
    FF: string;
    [JSONName('m')]
    FM: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property F: string read FF write FF;
    property M: string read FM write FM;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TEngDTO = class
  private
    [JSONName('f')]
    FF: string;
    [JSONName('m')]
    FM: string;
  published
    property F: string read FF write FF;
    property M: string read FM write FM;
  end;
  
  TDemonymsDTO = class
  private
    [JSONName('eng')]
    FEng: TEngDTO;
    [JSONName('fra')]
    FFra: TFraDTO;
  published
    property Eng: TEngDTO read FEng;
    property Fra: TFraDTO read FFra;
  public
    constructor Create;
    destructor Destroy; override;
  end;
  
  TZhoDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TUrdDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TTurDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TSweDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TSrpDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TSpaDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TSlkDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TRusDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TPorDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TPolDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TPerDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TNldDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TKorDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TJpnDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TItaDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  THunDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  THrvDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TFinDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TEstDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TDeuDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TCymDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TCesDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TBreDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TAraDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property Official: string read FOfficial write FOfficial;
  end;
  
  TTranslationsDTO = class
  private
    [JSONName('ara')]
    FAra: TAraDTO;
    [JSONName('bre')]
    FBre: TBreDTO;
    [JSONName('ces')]
    FCes: TCesDTO;
    [JSONName('cym')]
    FCym: TCymDTO;
    [JSONName('deu')]
    FDeu: TDeuDTO;
    [JSONName('est')]
    FEst: TEstDTO;
    [JSONName('fin')]
    FFin: TFinDTO;
    [JSONName('fra')]
    FFra: TFraDTO;
    [JSONName('hrv')]
    FHrv: THrvDTO;
    [JSONName('hun')]
    FHun: THunDTO;
    [JSONName('ita')]
    FIta: TItaDTO;
    [JSONName('jpn')]
    FJpn: TJpnDTO;
    [JSONName('kor')]
    FKor: TKorDTO;
    [JSONName('nld')]
    FNld: TNldDTO;
    [JSONName('per')]
    FPer: TPerDTO;
    [JSONName('pol')]
    FPol: TPolDTO;
    [JSONName('por')]
    FPor: TPorDTO;
    [JSONName('rus')]
    FRus: TRusDTO;
    [JSONName('slk')]
    FSlk: TSlkDTO;
    [JSONName('spa')]
    FSpa: TSpaDTO;
    [JSONName('srp')]
    FSrp: TSrpDTO;
    [JSONName('swe')]
    FSwe: TSweDTO;
    [JSONName('tur')]
    FTur: TTurDTO;
    [JSONName('urd')]
    FUrd: TUrdDTO;
    [JSONName('zho')]
    FZho: TZhoDTO;
  published
    property Ara: TAraDTO read FAra;
    property Bre: TBreDTO read FBre;
    property Ces: TCesDTO read FCes;
    property Cym: TCymDTO read FCym;
    property Deu: TDeuDTO read FDeu;
    property Est: TEstDTO read FEst;
    property Fin: TFinDTO read FFin;
    property Fra: TFraDTO read FFra;
    property Hrv: THrvDTO read FHrv;
    property Hun: THunDTO read FHun;
    property Ita: TItaDTO read FIta;
    property Jpn: TJpnDTO read FJpn;
    property Kor: TKorDTO read FKor;
    property Nld: TNldDTO read FNld;
    property Per: TPerDTO read FPer;
    property Pol: TPolDTO read FPol;
    property Por: TPorDTO read FPor;
    property Rus: TRusDTO read FRus;
    property Slk: TSlkDTO read FSlk;
    property Spa: TSpaDTO read FSpa;
    property Srp: TSrpDTO read FSrp;
    property Swe: TSweDTO read FSwe;
    property Tur: TTurDTO read FTur;
    property Urd: TUrdDTO read FUrd;
    property Zho: TZhoDTO read FZho;
  public
    constructor Create;
    destructor Destroy; override;
  end;
  
  TLanguagesDTO = class
  private
    [JSONName('por')]
    FPor: string;
  published
    property Por: string read FPor write FPor;
  end;
  
  TIddDTO = class(TJsonDTO)
  private
    [JSONName('root')]
    FRoot: string;
    [JSONName('suffixes')]
    FSuffixesArray: TArray<string>;
    [JSONMarshalled(False)]
    FSuffixes: TList<string>;
    function GetSuffixes: TList<string>;
  protected
    function GetAsJson: string; override;
  published
    property Root: string read FRoot write FRoot;
    property Suffixes: TList<string> read GetSuffixes;
  public
    destructor Destroy; override;
  end;
  
  TBRLDTO = class
  private
    [JSONName('name')]
    FName: string;
    [JSONName('symbol')]
    FSymbol: string;
  published
    property Name: string read FName write FName;
    property Symbol: string read FSymbol write FSymbol;
  end;
  
  TCurrenciesDTO = class
  private
    [JSONName('BRL')]
    FBRL: TBRLDTO;
  published
    property BRL: TBRLDTO read FBRL;
  public
    constructor Create;
    destructor Destroy; override;
  end;
  
  TNativeNameDTO = class
  private
    [JSONName('por')]
    FPor: TPorDTO;
  published
    property Por: TPorDTO read FPor;
  public
    constructor Create;
    destructor Destroy; override;
  end;
  
  TNameDTO = class
  private
    [JSONName('common')]
    FCommon: string;
    [JSONName('nativeName')]
    FNativeName: TNativeNameDTO;
    [JSONName('official')]
    FOfficial: string;
  published
    property Common: string read FCommon write FCommon;
    property NativeName: TNativeNameDTO read FNativeName;
    property Official: string read FOfficial write FOfficial;
  public
    constructor Create;
    destructor Destroy; override;
  end;
  
  TItemsDTO = class(TJsonDTO)
  private
    [JSONName('altSpellings')]
    FAltSpellingsArray: TArray<string>;
    [JSONMarshalled(False)]
    FAltSpellings: TList<string>;
    [JSONName('area')]
    FArea: Double;
    [JSONName('borders')]
    FBordersArray: TArray<string>;
    [JSONMarshalled(False)]
    FBorders: TList<string>;
    [JSONName('capital')]
    FCapitalArray: TArray<string>;
    [JSONMarshalled(False)]
    FCapital: TList<string>;
    [JSONName('capitalInfo')]
    FCapitalInfo: TCapitalInfoDTO;
    [JSONName('car')]
    FCar: TCarDTO;
    [JSONName('cca2')]
    FCca2: string;
    [JSONName('cca3')]
    FCca3: string;
    [JSONName('ccn3')]
    FCcn3: string;
    [JSONName('cioc')]
    FCioc: string;
    [JSONName('coatOfArms')]
    FCoatOfArms: TCoatOfArmsDTO;
    [JSONName('continents')]
    FContinentsArray: TArray<string>;
    [JSONMarshalled(False)]
    FContinents: TList<string>;
    [JSONName('currencies')]
    FCurrencies: TCurrenciesDTO;
    [JSONName('demonyms')]
    FDemonyms: TDemonymsDTO;
    [JSONName('fifa')]
    FFifa: string;
    [JSONName('flag')]
    FFlag: string;
    [JSONName('flags')]
    FFlags: TFlagsDTO;
    [JSONName('gini')]
    FGini: TGiniDTO;
    [JSONName('idd')]
    FIdd: TIddDTO;
    [JSONName('independent')]
    FIndependent: Boolean;
    [JSONName('landlocked')]
    FLandlocked: Boolean;
    [JSONName('languages')]
    FLanguages: TLanguagesDTO;
    [JSONName('latlng')]
    FLatlngArray: TArray<Double>;
    [JSONMarshalled(False)]
    FLatlng: TList<Double>;
    [JSONName('maps')]
    FMaps: TMapsDTO;
    [JSONName('name')]
    FName: TNameDTO;
    [JSONName('population')]
    FPopulation: Integer;
    [JSONName('postalCode')]
    FPostalCode: TPostalCodeDTO;
    [JSONName('region')]
    FRegion: string;
    [JSONName('startOfWeek')]
    FStartOfWeek: string;
    [JSONName('status')]
    FStatus: string;
    [JSONName('subregion')]
    FSubregion: string;
    [JSONName('timezones')]
    FTimezonesArray: TArray<string>;
    [JSONMarshalled(False)]
    FTimezones: TList<string>;
    [JSONName('tld')]
    FTldArray: TArray<string>;
    [JSONMarshalled(False)]
    FTld: TList<string>;
    [JSONName('translations')]
    FTranslations: TTranslationsDTO;
    [JSONName('unMember')]
    FUnMember: Boolean;
    function GetAltSpellings: TList<string>;
    function GetBorders: TList<string>;
    function GetCapital: TList<string>;
    function GetContinents: TList<string>;
    function GetLatlng: TList<Double>;
    function GetTimezones: TList<string>;
    function GetTld: TList<string>;
  protected
    function GetAsJson: string; override;
  published
    property AltSpellings: TList<string> read GetAltSpellings;
    property Area: Double read FArea write FArea;
    property Borders: TList<string> read GetBorders;
    property Capital: TList<string> read GetCapital;
    property CapitalInfo: TCapitalInfoDTO read FCapitalInfo;
    property Car: TCarDTO read FCar;
    property Cca2: string read FCca2 write FCca2;
    property Cca3: string read FCca3 write FCca3;
    property Ccn3: string read FCcn3 write FCcn3;
    property Cioc: string read FCioc write FCioc;
    property CoatOfArms: TCoatOfArmsDTO read FCoatOfArms;
    property Continents: TList<string> read GetContinents;
    property Currencies: TCurrenciesDTO read FCurrencies;
    property Demonyms: TDemonymsDTO read FDemonyms;
    property Fifa: string read FFifa write FFifa;
    property Flag: string read FFlag write FFlag;
    property Flags: TFlagsDTO read FFlags;
    property Gini: TGiniDTO read FGini;
    property Idd: TIddDTO read FIdd;
    property Independent: Boolean read FIndependent write FIndependent;
    property Landlocked: Boolean read FLandlocked write FLandlocked;
    property Languages: TLanguagesDTO read FLanguages;
    property Latlng: TList<Double> read GetLatlng;
    property Maps: TMapsDTO read FMaps;
    property Name: TNameDTO read FName;
    property Population: Integer read FPopulation write FPopulation;
    property PostalCode: TPostalCodeDTO read FPostalCode;
    property Region: string read FRegion write FRegion;
    property StartOfWeek: string read FStartOfWeek write FStartOfWeek;
    property Status: string read FStatus write FStatus;
    property Subregion: string read FSubregion write FSubregion;
    property Timezones: TList<string> read GetTimezones;
    property Tld: TList<string> read GetTld;
    property Translations: TTranslationsDTO read FTranslations;
    property UnMember: Boolean read FUnMember write FUnMember;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;
  
  TRootDTO = class(TJsonDTO)
  private
    [JSONName('Items'), JSONMarshalled(False)]
    FItemsArray: TArray<TItemsDTO>;
    [GenericListReflect]
    FItems: TObjectList<TItemsDTO>;
    function GetItems: TObjectList<TItemsDTO>;
  protected
    function GetAsJson: string; override;
  published
    property Items: TObjectList<TItemsDTO> read GetItems;
  public
    destructor Destroy; override;
  end;
  
implementation

{ TCapitalInfoDTO }

destructor TCapitalInfoDTO.Destroy;
begin
  GetLatlng.Free;
  inherited;
end;

function TCapitalInfoDTO.GetLatlng: TList<Double>;
begin
  Result := List<Double>(FLatlng, FLatlngArray);
end;

function TCapitalInfoDTO.GetAsJson: string;
begin
  RefreshArray<Double>(FLatlng, FLatlngArray);
  Result := inherited;
end;

{ TCarDTO }

destructor TCarDTO.Destroy;
begin
  GetSigns.Free;
  inherited;
end;

function TCarDTO.GetSigns: TList<string>;
begin
  Result := List<string>(FSigns, FSignsArray);
end;

function TCarDTO.GetAsJson: string;
begin
  RefreshArray<string>(FSigns, FSignsArray);
  Result := inherited;
end;

{ TDemonymsDTO }

constructor TDemonymsDTO.Create;
begin
  inherited;
  FEng := TEngDTO.Create;
  FFra := TFraDTO.Create;
end;

destructor TDemonymsDTO.Destroy;
begin
  FEng.Free;
  FFra.Free;
  inherited;
end;

{ TTranslationsDTO }

constructor TTranslationsDTO.Create;
begin
  inherited;
  FAra := TAraDTO.Create;
  FBre := TBreDTO.Create;
  FCes := TCesDTO.Create;
  FCym := TCymDTO.Create;
  FDeu := TDeuDTO.Create;
  FEst := TEstDTO.Create;
  FFin := TFinDTO.Create;
  FFra := TFraDTO.Create;
  FHrv := THrvDTO.Create;
  FHun := THunDTO.Create;
  FIta := TItaDTO.Create;
  FJpn := TJpnDTO.Create;
  FKor := TKorDTO.Create;
  FNld := TNldDTO.Create;
  FPer := TPerDTO.Create;
  FPol := TPolDTO.Create;
  FPor := TPorDTO.Create;
  FRus := TRusDTO.Create;
  FSlk := TSlkDTO.Create;
  FSpa := TSpaDTO.Create;
  FSrp := TSrpDTO.Create;
  FSwe := TSweDTO.Create;
  FTur := TTurDTO.Create;
  FUrd := TUrdDTO.Create;
  FZho := TZhoDTO.Create;
end;

destructor TTranslationsDTO.Destroy;
begin
  FAra.Free;
  FBre.Free;
  FCes.Free;
  FCym.Free;
  FDeu.Free;
  FEst.Free;
  FFin.Free;
  FFra.Free;
  FHrv.Free;
  FHun.Free;
  FIta.Free;
  FJpn.Free;
  FKor.Free;
  FNld.Free;
  FPer.Free;
  FPol.Free;
  FPor.Free;
  FRus.Free;
  FSlk.Free;
  FSpa.Free;
  FSrp.Free;
  FSwe.Free;
  FTur.Free;
  FUrd.Free;
  FZho.Free;
  inherited;
end;

{ TIddDTO }

destructor TIddDTO.Destroy;
begin
  GetSuffixes.Free;
  inherited;
end;

function TIddDTO.GetSuffixes: TList<string>;
begin
  Result := List<string>(FSuffixes, FSuffixesArray);
end;

function TIddDTO.GetAsJson: string;
begin
  RefreshArray<string>(FSuffixes, FSuffixesArray);
  Result := inherited;
end;

{ TCurrenciesDTO }

constructor TCurrenciesDTO.Create;
begin
  inherited;
  FBRL := TBRLDTO.Create;
end;

destructor TCurrenciesDTO.Destroy;
begin
  FBRL.Free;
  inherited;
end;

{ TNativeNameDTO }

constructor TNativeNameDTO.Create;
begin
  inherited;
  FPor := TPorDTO.Create;
end;

destructor TNativeNameDTO.Destroy;
begin
  FPor.Free;
  inherited;
end;

{ TNameDTO }

constructor TNameDTO.Create;
begin
  inherited;
  FNativeName := TNativeNameDTO.Create;
end;

destructor TNameDTO.Destroy;
begin
  FNativeName.Free;
  inherited;
end;

{ TItemsDTO }

constructor TItemsDTO.Create;
begin
  inherited;
  FName := TNameDTO.Create;
  FCurrencies := TCurrenciesDTO.Create;
  FIdd := TIddDTO.Create;
  FLanguages := TLanguagesDTO.Create;
  FTranslations := TTranslationsDTO.Create;
  FDemonyms := TDemonymsDTO.Create;
  FMaps := TMapsDTO.Create;
  FGini := TGiniDTO.Create;
  FCar := TCarDTO.Create;
  FFlags := TFlagsDTO.Create;
  FCoatOfArms := TCoatOfArmsDTO.Create;
  FCapitalInfo := TCapitalInfoDTO.Create;
  FPostalCode := TPostalCodeDTO.Create;
end;

destructor TItemsDTO.Destroy;
begin
  FName.Free;
  FCurrencies.Free;
  FIdd.Free;
  FLanguages.Free;
  FTranslations.Free;
  FDemonyms.Free;
  FMaps.Free;
  FGini.Free;
  FCar.Free;
  FFlags.Free;
  FCoatOfArms.Free;
  FCapitalInfo.Free;
  FPostalCode.Free;
  GetTld.Free;
  GetCapital.Free;
  GetAltSpellings.Free;
  GetLatlng.Free;
  GetBorders.Free;
  GetTimezones.Free;
  GetContinents.Free;
  inherited;
end;

function TItemsDTO.GetAltSpellings: TList<string>;
begin
  Result := List<string>(FAltSpellings, FAltSpellingsArray);
end;

function TItemsDTO.GetBorders: TList<string>;
begin
  Result := List<string>(FBorders, FBordersArray);
end;

function TItemsDTO.GetCapital: TList<string>;
begin
  Result := List<string>(FCapital, FCapitalArray);
end;

function TItemsDTO.GetContinents: TList<string>;
begin
  Result := List<string>(FContinents, FContinentsArray);
end;

function TItemsDTO.GetLatlng: TList<Double>;
begin
  Result := List<Double>(FLatlng, FLatlngArray);
end;

function TItemsDTO.GetTimezones: TList<string>;
begin
  Result := List<string>(FTimezones, FTimezonesArray);
end;

function TItemsDTO.GetTld: TList<string>;
begin
  Result := List<string>(FTld, FTldArray);
end;

function TItemsDTO.GetAsJson: string;
begin
  RefreshArray<string>(FAltSpellings, FAltSpellingsArray);
  RefreshArray<string>(FBorders, FBordersArray);
  RefreshArray<string>(FCapital, FCapitalArray);
  RefreshArray<string>(FContinents, FContinentsArray);
  RefreshArray<Double>(FLatlng, FLatlngArray);
  RefreshArray<string>(FTimezones, FTimezonesArray);
  RefreshArray<string>(FTld, FTldArray);
  Result := inherited;
end;

{ TRootDTO }

destructor TRootDTO.Destroy;
begin
  GetItems.Free;
  inherited;
end;

function TRootDTO.GetItems: TObjectList<TItemsDTO>;
begin
  Result := ObjectList<TItemsDTO>(FItems, FItemsArray);
end;

function TRootDTO.GetAsJson: string;
begin
  RefreshArray<TItemsDTO>(FItems, FItemsArray);
  Result := inherited;
end;

end.
