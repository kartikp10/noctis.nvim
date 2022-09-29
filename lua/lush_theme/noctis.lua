local lush = require('lush')
local hsl = lush.hsl

---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    Italic                                 { gui="italic", }, -- Italic         
    Bold                                   { gui="bold", }, -- Bold           
    BoldItalic                             { gui="bold,italic", }, -- Bold           
    Underlined                             { gui="underline", }, -- Underlined     
    SpecialKey                             { fg="cyan", }, -- SpecialKey     
    EndOfBuffer                            { fg="#161616", }, -- EndOfBuffer    
    NvimTreeEndOfBuffer                    { EndOfBuffer }, -- NvimTreeEndOfBuffer 
    DiffviewEndOfBuffer                    { EndOfBuffer }, -- DiffviewEndOfBuffer 
    TermCursor                             { gui="reverse", }, -- TermCursor     
    GitSignsAddInline                      { TermCursor }, -- GitSignsAddInline 
    GitSignsDeleteInline                   { TermCursor }, -- GitSignsDeleteInline 
    GitSignsChangeInline                   { TermCursor }, -- GitSignsChangeInline 
    NonText                                { fg="#525253", }, -- NonText        
    DiffviewNonText                        { NonText }, -- DiffviewNonText 
    TelescopeResultsDiffUntracked          { NonText }, -- TelescopeResultsDiffUntracked 
    TelescopePromptCounter                 { NonText }, -- TelescopePromptCounter 
    TelescopePreviewHyphen                 { NonText }, -- TelescopePreviewHyphen 
    GitSignsCurrentLineBlame               { NonText }, -- GitSignsCurrentLineBlame 
    Directory                              { fg="cyan", }, -- Directory      
    DiffviewFolderName                     { Directory }, -- DiffviewFolderName 
    TelescopePreviewDirectory              { Directory }, -- TelescopePreviewDirectory 
    TelescopePreviewDate                   { Directory }, -- TelescopePreviewDate 
    qfFileName                             { Directory }, -- qfFileName     
    ErrorMsg                               { fg="#ee5396", }, -- ErrorMsg       
    NvimInvalidSpacing                     { ErrorMsg }, -- NvimInvalidSpacing 
    IncSearch                              { fg="#2a2a2a", bg="#3ddbd9", }, -- IncSearch      
    CurSearch                              { IncSearch }, -- CurSearch      
    MiniSurround                           { IncSearch }, -- MiniSurround   
    Search                                 { fg="#f2f4f8", bg="#525253", }, -- Search         
    TelescopePreviewMatch                  { Search }, -- TelescopePreviewMatch 
    TelescopeMatching                      { Search }, -- TelescopeMatching 
    AerialLine                             { Search }, -- AerialLine     
    FocusedSymbol                          { Search }, -- FocusedSymbol  
    MoreMsg                                { gui="bold", fg="#78a9ff", }, -- MoreMsg        
    ModeMsg                                { gui="bold", fg="#be95ff", }, -- ModeMsg        
    LineNr                                 { fg="#7b7c7e", }, -- LineNr         
    LineNrAbove                            { LineNr }, -- LineNrAbove    
    LineNrBelow                            { LineNr }, -- LineNrBelow    
    TelescopeResultsLineNr                 { LineNr }, -- TelescopeResultsLineNr 
    FidgetTask                             { LineNr }, -- FidgetTask     
    qfLineNr                               { LineNr }, -- qfLineNr       
    CursorLineNr                           { gui="bold", fg="#be95ff", }, -- CursorLineNr   
    Question                               { gui="bold", fg="green", }, -- Question       
    StatusLine                             { fg="#b6b8bb", bg="#0c0c0c", }, -- StatusLine     
    MsgSeparator                           { StatusLine }, -- MsgSeparator   
    NvimTreeStatusLine                     { StatusLine }, -- NvimTreeStatusLine 
    DiffviewStatusLine                     { StatusLine }, -- DiffviewStatusLine 
    MiniStatuslineFilename                 { StatusLine }, -- MiniStatuslineFilename 
    StatusLineNC                           { fg="#0c0c0c", bg="#8cb6ff", }, -- StatusLineNC   
    NvimTreeStatusLineNC                   { StatusLineNC }, -- NvimTreeStatusLineNC 
    DiffviewStatusLineNC                   { StatusLineNC }, -- DiffviewStatusLineNC 
    MiniStatuslineInactive                 { StatusLineNC }, -- MiniStatuslineInactive 
    VertSplit                              { fg="grey", }, -- VertSplit      
    WinSeparator                           { VertSplit }, -- WinSeparator   
    NvimTreeVertSplit                      { VertSplit }, -- NvimTreeVertSplit 
    Title                                  { fg="#8cb6ff", }, -- Title          
    LspInfoTitle                           { Title }, -- LspInfoTitle   
    TSTitle                                { Title }, -- TSTitle        
    DashboardHeader                        { Title }, -- DashboardHeader 
    FidgetTitle                            { Title }, -- FidgetTitle    
    LspSagaBorderTitle                     { Title }, -- LspSagaBorderTitle 
    LspSagaCodeActionTitle                 { Title }, -- LspSagaCodeActionTitle 
    MiniStarterHeader                      { Title }, -- MiniStarterHeader 
    htmlH1                                 { Title }, -- htmlH1         
    htmlTitle                              { Title }, -- htmlTitle      
    Visual                                 { bg="#2a2a2a", }, -- Visual         
    VisualNOS                              { Visual }, -- VisualNOS      
    TelescopePreviewLine                   { Visual }, -- TelescopePreviewLine 
    WarningMsg                             { fg="#be95ff", }, -- WarningMsg     
    WildMenu                               { fg="black", bg="yellow", }, -- WildMenu       
    Folded                                 { fg="#7b7c7e", bg="#252525", }, -- Folded         
    FoldColumn                             { fg="#7b7c7e", }, -- FoldColumn     
    CursorLineFold                         { FoldColumn }, -- CursorLineFold 
    DiffAdd                                { bg="#172b20", }, -- DiffAdd        
    TelescopeResultsDiffAdd                { DiffAdd }, -- TelescopeResultsDiffAdd 
    GitSignsAddLn                          { DiffAdd }, -- GitSignsAddLn  
    GitSignsAddPreview                     { DiffAdd }, -- GitSignsAddPreview 
    DiffChange                             { bg="#222833", }, -- DiffChange     
    TelescopeResultsDiffChange             { DiffChange }, -- TelescopeResultsDiffChange 
    GitSignsChangeLn                       { DiffChange }, -- GitSignsChangeLn 
    DiffDelete                             { bg="#311d26", }, -- DiffDelete     
    TelescopeResultsDiffDelete             { DiffDelete }, -- TelescopeResultsDiffDelete 
    GitSignsDeletePreview                  { DiffDelete }, -- GitSignsDeletePreview 
    GitSignsDeleteVirtLn                   { DiffDelete }, -- GitSignsDeleteVirtLn 
    DiffText                               { bg="#1c3c50", }, -- DiffText       
    SignColumn                             { fg="#7b7c7e", }, -- SignColumn     
    CursorLineSign                         { SignColumn }, -- CursorLineSign 
    SignColumnSB                           { SignColumn }, -- SignColumnSB   
    Conceal                                { fg="#535353", }, -- Conceal        
    NeoTreeDimText                         { Conceal }, -- NeoTreeDimText 
    SymbolOutlineConnector                 { Conceal }, -- SymbolOutlineConnector 
    SpellBad                               { sp="#ee5396", gui="undercurl", }, -- SpellBad       
    SpellCap                               { sp="#be95ff", gui="undercurl", }, -- SpellCap       
    SpellRare                              { sp="#78a9ff", gui="undercurl", }, -- SpellRare      
    SpellLocal                             { sp="#78a9ff", gui="undercurl", }, -- SpellLocal     
    Pmenu                                  { fg="#f2f4f8", bg="#2a2a2a", }, -- Pmenu          
    PmenuSel                               { bg="#525253", }, -- PmenuSel       
    PmenuSbar                              { bg="grey", }, -- PmenuSbar      
    UfoPreviewSbar                         { PmenuSbar }, -- UfoPreviewSbar 
    PmenuThumb                             { bg="#525253", }, -- PmenuThumb     
    UfoPreviewThumb                        { PmenuThumb }, -- UfoPreviewThumb 
    TabLine                                { fg="#b6b8bb", bg="#252525", }, -- TabLine        
    TabLineSel                             { fg="#161616", bg="#7b7c7e", }, -- TabLineSel     
    TabLineFill                            { bg="#0c0c0c", }, -- TabLineFill    
    MiniTablineFill                        { TabLineFill }, -- MiniTablineFill 
    CursorColumn                           { bg="grey40", }, -- CursorColumn   
    NvimTreeCursorColumn                   { CursorColumn }, -- NvimTreeCursorColumn 
    CursorLine                             { bg="#222222", }, -- CursorLine     
    QuickFixLine                           { CursorLine }, -- QuickFixLine   
    NvimTreeCursorLine                     { CursorLine }, -- NvimTreeCursorLine 
    DiffviewCursorLine                     { CursorLine }, -- DiffviewCursorLine 
    TelescopeSelection                     { Bold }, -- TelescopeSelection 
    ColorColumn                            { bg="#252525", }, -- ColorColumn    
    Whitespace                             { fg="#353535", }, -- Whitespace     
    NormalNC                               { fg="#f2f4f8", bg="#141414", }, -- NormalNC       
    NormalFloat                            { fg="#f2f4f8", bg="#171717", }, -- NormalFloat    
    FloatBorder                            { fg="#7b7c7e", }, -- FloatBorder    
    DapUIFloatBorder                       { FloatBorder }, -- DapUIFloatBorder 
    FloatTitle                             { FloatBorder }, -- FloatTitle     
    Cursor                                 { fg="#161616", bg="#f2f4f8", }, -- Cursor         
    CursorIM                               { Cursor }, -- CursorIM       
    RedrawDebugNormal                      { gui="reverse", }, -- RedrawDebugNormal 
    RedrawDebugClear                       { bg="yellow", }, -- RedrawDebugClear 
    RedrawDebugComposed                    { bg="green", }, -- RedrawDebugComposed 
    RedrawDebugRecompose                   { bg="red", }, -- RedrawDebugRecompose 
    lCursor                                { fg="bg", bg="fg", }, -- lCursor        
    Normal                                 { fg="#66ffbf", bg="#141414", }, -- Normal         
    NvimSpacing                            { Normal }, -- NvimSpacing    
    NvimTreePopup                          { Normal }, -- NvimTreePopup  
    DiffviewSignColumn                     { Normal }, -- DiffviewSignColumn 
    DiffviewNormal                         { Normal }, -- DiffviewNormal 
    DapUIFrameName                         { Normal }, -- DapUIFrameName 
    TelescopeResultsFileIcon               { Normal }, -- TelescopeResultsFileIcon 
    TelescopeNormal                        { Normal }, -- TelescopeNormal 
    MiniStarterItem                        { Normal }, -- MiniStarterItem 
    cssMediaComma                          { Normal }, -- cssMediaComma  
    Substitute                             { fg="#161616", bg="#ee5396", }, -- Substitute     
    FloatShadow                            { blend=80, bg="black", }, -- FloatShadow    
    FloatShadowThrough                     { blend=100, bg="black", }, -- FloatShadowThrough 
    Error                                  { fg="#ee5396", }, -- Error          
    NvimInvalid                            { Error }, -- NvimInvalid    
    luaParenError                          { Error }, -- luaParenError  
    luaBraceError                          { Error }, -- luaBraceError  
    luaError                               { Error }, -- luaError       
    htmlError                              { Error }, -- htmlError      
    htmlPreError                           { Error }, -- htmlPreError   
    htmlPreProcAttrError                   { Error }, -- htmlPreProcAttrError 
    javaScriptError                        { Error }, -- javaScriptError 
    vbError                                { Error }, -- vbError        
    cssError                               { Error }, -- cssError       
    cssBraceError                          { Error }, -- cssBraceError  
    cssDeprecated                          { Error }, -- cssDeprecated  
    markdownError                          { Error }, -- markdownError  
    String                                 { fg="#66ffbf", }, -- String         
    Character                              { String }, -- Character      
    NvimString                             { String }, -- NvimString     
    DapUIThread                            { String }, -- DapUIThread    
    TSLiteral                              { String }, -- TSLiteral      
    TSString                               { String }, -- TSString       
    TelescopePreviewExecute                { String }, -- TelescopePreviewExecute 
    TelescopePreviewSize                   { String }, -- TelescopePreviewSize 
    luaString2                             { String }, -- luaString2     
    luaString                              { String }, -- luaString      
    DashboardCenter                        { String }, -- DashboardCenter 
    LspSagaCodeActionContent               { String }, -- LspSagaCodeActionContent 
    htmlString                             { String }, -- htmlString     
    htmlValue                              { String }, -- htmlValue      
    htmlPreAttr                            { String }, -- htmlPreAttr    
    javaScriptStringD                      { String }, -- javaScriptStringD 
    javaScriptStringS                      { String }, -- javaScriptStringS 
    javaScriptStringT                      { String }, -- javaScriptStringT 
    javaScriptRegexpString                 { String }, -- javaScriptRegexpString 
    vbString                               { String }, -- vbString       
    cssStringQ                             { String }, -- cssStringQ     
    cssStringQQ                            { String }, -- cssStringQQ    
    cssAttributeSelector                   { String }, -- cssAttributeSelector 
    cssURL                                 { String }, -- cssURL         
    markdownUrlTitle                       { String }, -- markdownUrlTitle 
    Constant                               { fg="#5ae0df", }, -- Constant       
    CmpItemKindEnum                        { Constant }, -- CmpItemKindEnum 
    CmpItemKindUnit                        { Constant }, -- CmpItemKindUnit 
    CmpItemKindInterface                   { Constant }, -- CmpItemKindInterface 
    CmpItemKindEvent                       { Constant }, -- CmpItemKindEvent 
    TSConstant                             { Constant }, -- TSConstant     
    TSAttribute                            { Constant }, -- TSAttribute    
    TelescopeResultsConstant               { Constant }, -- TelescopeResultsConstant 
    TelescopePreviewPipe                   { Constant }, -- TelescopePreviewPipe 
    TelescopePreviewCharDev                { Constant }, -- TelescopePreviewCharDev 
    TelescopePreviewBlock                  { Constant }, -- TelescopePreviewBlock 
    TelescopePreviewRead                   { Constant }, -- TelescopePreviewRead 
    TelescopePreviewUser                   { Constant }, -- TelescopePreviewUser 
    TelescopePreviewGroup                  { Constant }, -- TelescopePreviewGroup 
    luaConstant                            { Constant }, -- luaConstant    
    vbConst                                { Constant }, -- vbConst        
    vbDefine                               { Constant }, -- vbDefine       
    cssColor                               { Constant }, -- cssColor       
    cssFunction                            { Constant }, -- cssFunction    
    cssKeyFrameProp                        { Constant }, -- cssKeyFrameProp 
    cssAttr                                { Constant }, -- cssAttr        
    cssPseudoClassLang                     { Constant }, -- cssPseudoClassLang 
    cssUnicodeRange                        { Constant }, -- cssUnicodeRange 
    Number                                 { fg="#3ddbd9", }, -- Number         
    Boolean                                { Number }, -- Boolean        
    Float                                  { Number }, -- Float          
    NvimNumber                             { Number }, -- NvimNumber     
    DapUILineNumber                        { Number }, -- DapUILineNumber 
    TSNumber                               { Number }, -- TSNumber       
    TelescopeResultsNumber                 { Number }, -- TelescopeResultsNumber 
    luaNumber                              { Number }, -- luaNumber      
    vbNumber                               { Number }, -- vbNumber       
    cssUnitDecorators                      { Number }, -- cssUnitDecorators 
    cssValueInteger                        { Number }, -- cssValueInteger 
    cssValueNumber                         { Number }, -- cssValueNumber 
    cssValueLength                         { Number }, -- cssValueLength 
    cssValueAngle                          { Number }, -- cssValueAngle  
    cssValueTime                           { Number }, -- cssValueTime   
    cssValueFrequency                      { Number }, -- cssValueFrequency 
    Function                               { fg="#00b4cc", }, -- Function       
    htmlTag                                { Function }, -- htmlTag        
    DiffviewReference                      { Function }, -- DiffviewReference 
    CmpItemKindFunction                    { Function }, -- CmpItemKindFunction 
    CmpItemKindMethod                      { Function }, -- CmpItemKindMethod 
    CmpItemKindConstructor                 { Function }, -- CmpItemKindConstructor 
    LspInfoList                            { Function }, -- LspInfoList    
    TSFunction                             { Function }, -- TSFunction     
    TSMethod                               { Function }, -- TSMethod       
    TelescopeResultsFunction               { Function }, -- TelescopeResultsFunction 
    TelescopeResultsClass                  { Function }, -- TelescopeResultsClass 
    TelescopeResultsField                  { Function }, -- TelescopeResultsField 
    luaFunction                            { Function }, -- luaFunction    
    WhichKeyGroup                          { Function }, -- WhichKeyGroup  
    javaScriptFunction                     { Function }, -- javaScriptFunction 
    javaScriptBraces                       { Function }, -- javaScriptBraces 
    cssClassNameDot                        { Function }, -- cssClassNameDot 
    cssClassName                           { Function }, -- cssClassName   
    cssIdentifier                          { Function }, -- cssIdentifier  
    cssFunctionName                        { Function }, -- cssFunctionName 
    cssFunctionComma                       { Function }, -- cssFunctionComma 
    cssBraces                              { Function }, -- cssBraces      
    Identifier                             { fg="#33b1ff", }, -- Identifier     
    NvimIdentifier                         { Identifier }, -- NvimIdentifier 
    htmlEndTag                             { Identifier }, -- htmlEndTag     
    CmpItemKindKeyword                     { Identifier }, -- CmpItemKindKeyword 
    TSParameter                            { Identifier }, -- TSParameter    
    TSSymbol                               { Identifier }, -- TSSymbol       
    TelescopePromptPrefix                  { Identifier }, -- TelescopePromptPrefix 
    TelescopeResultsIdentifier             { Identifier }, -- TelescopeResultsIdentifier 
    TelescopeMultiIcon                     { Identifier }, -- TelescopeMultiIcon 
    luaFunc                                { Identifier }, -- luaFunc        
    DashboardShortCut                      { Identifier }, -- DashboardShortCut 
    WhichKey                               { Identifier }, -- WhichKey       
    javaScriptIdentifier                   { Identifier }, -- javaScriptIdentifier 
    vbFunction                             { Identifier }, -- vbFunction     
    vbIdentifier                           { Identifier }, -- vbIdentifier   
    Conditional                            { fg="#c8a5ff", }, -- Conditional    
    Repeat                                 { Conditional }, -- Repeat         
    Label                                  { Conditional }, -- Label          
    TSConditional                          { Conditional }, -- TSConditional  
    luaElse                                { Conditional }, -- luaElse        
    luaCond                                { Conditional }, -- luaCond        
    javaScriptConditional                  { Conditional }, -- javaScriptConditional 
    javaScriptBranch                       { Conditional }, -- javaScriptBranch 
    vbConditional                          { Conditional }, -- vbConditional  
    Statement                              { fg="#be95ff", }, -- Statement      
    TelescopePreviewSocket                 { Statement }, -- TelescopePreviewSocket 
    TelescopePreviewWrite                  { Statement }, -- TelescopePreviewWrite 
    luaStatement                           { Statement }, -- luaStatement   
    javaScriptStatement                    { Statement }, -- javaScriptStatement 
    vbStatement                            { Statement }, -- vbStatement    
    vbKeyword                              { Statement }, -- vbKeyword      
    cssTagName                             { Statement }, -- cssTagName     
    cssAtRuleLogical                       { Statement }, -- cssAtRuleLogical 
    htmlStatement                          { Statement }, -- htmlStatement  
    Operator                               { fg="#ff669c", Bold }, -- Operator       
    NvimAssignment                         { Operator }, -- NvimAssignment 
    NvimOperator                           { Operator }, -- NvimOperator   
    CmpItemKindOperator                    { Operator }, -- CmpItemKindOperator 
    TelescopeResultsOperator               { Operator }, -- TelescopeResultsOperator 
    luaIn                                  { Operator }, -- luaIn          
    luaOperator                            { Operator }, -- luaOperator    
    javaScriptOperator                     { Operator }, -- javaScriptOperator 
    vbOperator                             { Operator }, -- vbOperator     
    Keyword                                { fg="#ff669c", }, -- Keyword        
    Exception                              { Keyword }, -- Exception      
    DapUISource                            { Keyword }, -- DapUISource    
    CmpItemKindValue                       { Keyword }, -- CmpItemKindValue 
    CmpItemKindReference                   { Keyword }, -- CmpItemKindReference 
    TSKeyword                              { Keyword }, -- TSKeyword      
    TelescopePreviewSticky                 { Keyword }, -- TelescopePreviewSticky 
    WhichKeyDesc                           { Keyword }, -- WhichKeyDesc   
    javaScriptNull                         { Keyword }, -- javaScriptNull 
    javaScriptMessage                      { Keyword }, -- javaScriptMessage 
    javaScriptGlobal                       { Keyword }, -- javaScriptGlobal 
    javaScriptMember                       { Keyword }, -- javaScriptMember 
    javaScriptReserved                     { Keyword }, -- javaScriptReserved 
    PreProc                                { fg="#ff91c1", Italic }, -- PreProc        
    Include                                { PreProc }, -- Include        
    Define                                 { PreProc }, -- Define         
    Macro                                  { PreProc }, -- Macro          
    PreCondit                              { PreProc }, -- PreCondit      
    DiffviewFolderSign                     { PreProc }, -- DiffviewFolderSign 
    TSAnnotation                           { PreProc }, -- TSAnnotation   
    TSPreProc                              { PreProc }, -- TSPreProc      
    htmlPreStmt                            { PreProc }, -- htmlPreStmt    
    htmlPreProc                            { PreProc }, -- htmlPreProc    
    htmlPreProcAttrName                    { PreProc }, -- htmlPreProcAttrName 
    htmlHead                               { PreProc }, -- htmlHead       
    vbMethods                              { PreProc }, -- vbMethods      
    vbPreProc                              { PreProc }, -- vbPreProc      
    cssPseudoClassId                       { PreProc }, -- cssPseudoClassId 
    cssAtKeyword                           { PreProc }, -- cssAtKeyword   
    cssPagePseudo                          { PreProc }, -- cssPagePseudo  
    markdownRule                           { PreProc }, -- markdownRule   
    Type                                   { fg="#08bdba", }, -- Type           
    StorageClass                           { Type }, -- StorageClass   
    Structure                              { Type }, -- Structure      
    Typedef                                { Type }, -- Typedef        
    NvimNumberPrefix                       { Type }, -- NvimNumberPrefix 
    NvimOptionSigil                        { Type }, -- NvimOptionSigil 
    htmlArg                                { Type }, -- htmlArg        
    DapUIType                              { Type }, -- DapUIType      
    CmpItemKindClass                       { Type }, -- CmpItemKindClass 
    CmpItemKindStruct                      { Type }, -- CmpItemKindStruct 
    LspInfoFiletype                        { Type }, -- LspInfoFiletype 
    TSEnvironmentName                      { Type }, -- TSEnvironmentName 
    TSType                                 { Type }, -- TSType         
    TSTypeQualifier                        { Type }, -- TSTypeQualifier 
    TelescopeMultiSelection                { Type }, -- TelescopeMultiSelection 
    javaScriptType                         { Type }, -- javaScriptType 
    vbTypes                                { Type }, -- vbTypes        
    vbTypeSpecifier                        { Type }, -- vbTypeSpecifier 
    markdownId                             { Type }, -- markdownId     
    Special                                { fg="#8cb6ff", }, -- Special        
    Tag                                    { Special }, -- Tag            
    SpecialChar                            { Special }, -- SpecialChar    
    Delimiter                              { Special }, -- Delimiter      
    SpecialComment                         { Special }, -- SpecialComment 
    Debug                                  { Special }, -- Debug          
    javaScript                             { Special }, -- javaScript     
    TSMath                                 { Special }, -- TSMath         
    TelescopePreviewLink                   { Special }, -- TelescopePreviewLink 
    htmlSpecialChar                        { Special }, -- htmlSpecialChar 
    htmlCssDefinition                      { Special }, -- htmlCssDefinition 
    javaScriptSpecial                      { Special }, -- javaScriptSpecial 
    javaScriptEmbed                        { Special }, -- javaScriptEmbed 
    vbEvents                               { Special }, -- vbEvents       
    cssSelectorOp                          { Special }, -- cssSelectorOp  
    cssSelectorOp2                         { Special }, -- cssSelectorOp2 
    cssUnicodeEscape                       { Special }, -- cssUnicodeEscape 
    cssImportant                           { Special }, -- cssImportant   
    cssCustomProp                          { Special }, -- cssCustomProp  
    cssAttrComma                           { Special }, -- cssAttrComma   
    cssMediaType                           { Special }, -- cssMediaType   
    cssFontDescriptor                      { Special }, -- cssFontDescriptor 
    markdownEscape                         { Special }, -- markdownEscape 
    DiagnosticError                        { fg="#ee5396", }, -- DiagnosticError 
    DiagnosticFloatingError                { DiagnosticError }, -- DiagnosticFloatingError 
    DiagnosticSignError                    { DiagnosticError }, -- DiagnosticSignError 
    NvimTreeLspDiagnosticsError            { DiagnosticError }, -- NvimTreeLspDiagnosticsError 
    DiagnosticWarn                         { fg="#be95ff", }, -- DiagnosticWarn 
    DiagnosticFloatingWarn                 { DiagnosticWarn }, -- DiagnosticFloatingWarn 
    DiagnosticSignWarn                     { DiagnosticWarn }, -- DiagnosticSignWarn 
    NvimTreeLspDiagnosticsWarning          { DiagnosticWarn }, -- NvimTreeLspDiagnosticsWarning 
    DiagnosticInfo                         { fg="#78a9ff", }, -- DiagnosticInfo 
    DiagnosticFloatingInfo                 { DiagnosticInfo }, -- DiagnosticFloatingInfo 
    DiagnosticSignInfo                     { DiagnosticInfo }, -- DiagnosticSignInfo 
    NvimTreeLspDiagnosticsInformation      { DiagnosticInfo }, -- NvimTreeLspDiagnosticsInformation 
    DiagnosticHint                         { fg="#3ddbd9", }, -- DiagnosticHint 
    DiagnosticFloatingHint                 { DiagnosticHint }, -- DiagnosticFloatingHint 
    DiagnosticSignHint                     { DiagnosticHint }, -- DiagnosticSignHint 
    NvimTreeLspDiagnosticsHint             { DiagnosticHint }, -- NvimTreeLspDiagnosticsHint 
    DiagnosticUnderlineError               { sp="#ee5396", gui="undercurl", }, -- DiagnosticUnderlineError 
    DiagnosticUnderlineWarn                { sp="#be95ff", gui="undercurl", }, -- DiagnosticUnderlineWarn 
    DiagnosticUnderlineInfo                { sp="#78a9ff", gui="undercurl", }, -- DiagnosticUnderlineInfo 
    DiagnosticUnderlineHint                { sp="#3ddbd9", gui="undercurl", }, -- DiagnosticUnderlineHint 
    DiagnosticVirtualTextError             { fg="#ee5396", bg="#361f29", }, -- DiagnosticVirtualTextError 
    NvimDapVirtualTextError                { DiagnosticVirtualTextError }, -- NvimDapVirtualTextError 
    DiagnosticVirtualTextWarn              { fg="#be95ff", bg="#2f2939", }, -- DiagnosticVirtualTextWarn 
    NvimDapVirtualTextChanged              { DiagnosticVirtualTextWarn }, -- NvimDapVirtualTextChanged 
    DiagnosticVirtualTextInfo              { fg="#78a9ff", bg="#252c39", }, -- DiagnosticVirtualTextInfo 
    NvimDapVirtualTextInfo                 { DiagnosticVirtualTextInfo }, -- NvimDapVirtualTextInfo 
    DiagnosticVirtualTextHint              { fg="#3ddbd9", bg="#1c3433", }, -- DiagnosticVirtualTextHint 
    MatchParen                             { gui="bold", fg="#be95ff", }, -- MatchParen     
    Comment                                { fg="#6e6f70", Italic }, -- Comment        
    NvimTreeGitIgnored                     { Comment }, -- NvimTreeGitIgnored 
    DiffviewDiffDelete                     { Comment }, -- DiffviewDiffDelete 
    DiffviewFilePanelPath                  { Comment }, -- DiffviewFilePanelPath 
    DiffviewStatusIgnored                  { Comment }, -- DiffviewStatusIgnored 
    NvimDapVirtualText                     { Comment }, -- NvimDapVirtualText 
    UfoFoldedEllipsis                      { Comment }, -- UfoFoldedEllipsis 
    CmpItemMenu                            { Comment }, -- CmpItemMenu    
    LspInfoTip                             { Comment }, -- LspInfoTip     
    TSComment                              { Comment }, -- TSComment      
    TelescopeResultsComment                { Comment }, -- TelescopeResultsComment 
    luaComment                             { Comment }, -- luaComment     
    MiniStarterInactive                    { Comment }, -- MiniStarterInactive 
    WhichKeySeparator                      { Comment }, -- WhichKeySeparator 
    WhichKeySeperator                      { Comment }, -- WhichKeySeperator 
    WhichKeyValue                          { Comment }, -- WhichKeyValue  
    htmlComment                            { Comment }, -- htmlComment    
    javaScriptLineComment                  { Comment }, -- javaScriptLineComment 
    javaScriptComment                      { Comment }, -- javaScriptComment 
    htmlCssStyleComment                    { Comment }, -- htmlCssStyleComment 
    vbComment                              { Comment }, -- vbComment      
    vbLineLabel                            { Comment }, -- vbLineLabel    
    vbLineNumber                           { Comment }, -- vbLineNumber   
    cssComment                             { Comment }, -- cssComment     
    cssVendor                              { Comment }, -- cssVendor      
    cssHacks                               { Comment }, -- cssHacks       
    markdownBlockquote                     { Comment }, -- markdownBlockquote 
    Todo                                   { fg="#000000", bg="yellow", }, -- Todo           
    TSTodo                                 { Todo }, -- TSTodo         
    luaTodo                                { Todo }, -- luaTodo        
    javaScriptCommentTodo                  { Todo }, -- javaScriptCommentTodo 
    vbTodo                                 { Todo }, -- vbTodo         
    htmlLink                               { Underlined }, -- htmlLink       
    Ignore                                 { fg="bg", }, -- Ignore         
    NvimInternalError                      { fg="red", bg="red", }, -- NvimInternalError 
    NvimFigureBrace                        { NvimInternalError }, -- NvimFigureBrace 
    NvimSingleQuotedUnknownEscape          { NvimInternalError }, -- NvimSingleQuotedUnknownEscape 
    NvimInvalidSingleQuotedUnknownEscape   { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape 
    diffAdded                              { fg="#25be6a", }, -- diffAdded      
    DiffviewFilePanelInsertions            { diffAdded }, -- DiffviewFilePanelInsertions 
    DiffviewStatusAdded                    { diffAdded }, -- DiffviewStatusAdded 
    DiffviewStatusUntracked                { diffAdded }, -- DiffviewStatusUntracked 
    diffLine                               { fg="#5ae0df", }, -- diffLine       
    NvimTreeImageFile                      { fg="#bebebe", }, -- NvimTreeImageFile 
    NvimTreeOpenedFile                     { fg="#ff91c1", }, -- NvimTreeOpenedFile 
    NvimTreeGitDirty                       { fg="#08bdba", }, -- NvimTreeGitDirty 
    NvimTreeFileDirty                      { NvimTreeGitDirty }, -- NvimTreeFileDirty 
    NvimTreeGitDeleted                     { fg="#ee5396", }, -- NvimTreeGitDeleted 
    NvimTreeGitRenamed                     { NvimTreeGitDeleted }, -- NvimTreeGitRenamed 
    NvimTreeFileDeleted                    { NvimTreeGitDeleted }, -- NvimTreeFileDeleted 
    NvimTreeGitMerge                       { fg="#3ddbd9", }, -- NvimTreeGitMerge 
    NvimTreeFileMerge                      { NvimTreeGitMerge }, -- NvimTreeFileMerge 
    NvimTreeGitNew                         { fg="#25be6a", }, -- NvimTreeGitNew 
    NvimTreeFileNew                        { NvimTreeGitNew }, -- NvimTreeFileNew 
    NvimTreeWindowPicker                   { gui="bold", fg="#ededed", bg="#4493c8", }, -- NvimTreeWindowPicker 
    NvimTreeLiveFilterPrefix               { gui="bold", fg="#be95ff", }, -- NvimTreeLiveFilterPrefix 
    NvimTreeLiveFilterValue                { gui="bold", fg="#ffffff", }, -- NvimTreeLiveFilterValue 
    NvimTreeBookmark                       { fg="#25be6a", }, -- NvimTreeBookmark 
    NvimTreeIndentMarker                   { fg="#535353", }, -- NvimTreeIndentMarker 
    NvimTreeSymlink                        { fg="#d96b9b", }, -- NvimTreeSymlink 
    NvimTreeFolderIcon                     { fg="#cbcb41", }, -- NvimTreeFolderIcon 
    NvimTreeRootFolder                     { gui="bold,italic", fg="#ff91c1", }, -- NvimTreeRootFolder 
    NvimTreeExecFile                       { gui="bold", fg="#25be6a", }, -- NvimTreeExecFile 
    NvimTreeSpecialFile                    { fg="#33b1ff", }, -- NvimTreeSpecialFile 
    NvimTreeNormal                         { fg="#bebebe", bg="#161616", }, -- NvimTreeNormal 
    NvimTreeNormalNC                       { NvimTreeNormal }, -- NvimTreeNormalNC 
    NvimTreeSignColumn                     { NvimTreeNormal }, -- NvimTreeSignColumn 
    NvimTreeFolderName                     { fg="#78a9ff", }, -- NvimTreeFolderName 
    NvimTreeEmptyFolderName                { fg="#7b7c7e", }, -- NvimTreeEmptyFolderName 
    NvimTreeOpenedFolderName               { fg="#8cb6ff", }, -- NvimTreeOpenedFolderName 
    DevIconCp                              { fg="#519aba", }, -- DevIconCp      
    DevIconGitAttributes                   { fg="#41535b", }, -- DevIconGitAttributes 
    DevIconSql                             { fg="#dad8d8", }, -- DevIconSql     
    DevIconStyl                            { fg="#8dc149", }, -- DevIconStyl    
    DevIconGitConfig                       { fg="#41535b", }, -- DevIconGitConfig 
    DevIconAi                              { fg="#cbcb41", }, -- DevIconAi      
    DevIconGitIgnore                       { fg="#41535b", }, -- DevIconGitIgnore 
    DevIconClojureDart                     { fg="#519aba", }, -- DevIconClojureDart 
    DevIconGitlabCI                        { fg="#e24329", }, -- DevIconGitlabCI 
    DevIconSuo                             { fg="#854cc7", }, -- DevIconSuo     
    DevIconCobol                           { fg="#005ca5", }, -- DevIconCobol   
    DevIconDefault                         { fg="#6d8086", }, -- DevIconDefault 
    DevIconGitModules                      { fg="#41535b", }, -- DevIconGitModules 
    DevIconGvimrc                          { fg="#019833", }, -- DevIconGvimrc  
    DevIconIco                             { fg="#cbcb41", }, -- DevIconIco     
    DevIconCMake                           { fg="#6d8086", }, -- DevIconCMake   
    DevIconLua                             { fg="#51a0cf", }, -- DevIconLua     
    DevIconNPMIgnore                       { fg="#e8274b", }, -- DevIconNPMIgnore 
    DevIconIni                             { fg="#6d8086", }, -- DevIconIni     
    DevIconTcl                             { fg="#1e5cb3", }, -- DevIconTcl     
    DevIconMl                              { fg="#e37933", }, -- DevIconMl      
    DevIconJson5                           { fg="#cbcb41", }, -- DevIconJson5   
    DevIconJl                              { fg="#a270ba", }, -- DevIconJl      
    DevIconAwk                             { fg="#4d5a5e", }, -- DevIconAwk     
    DevIconZshprofile                      { fg="#89e051", }, -- DevIconZshprofile 
    DevIconZshenv                          { fg="#89e051", }, -- DevIconZshenv  
    DevIconZshrc                           { fg="#89e051", }, -- DevIconZshrc   
    DevIconKsh                             { fg="#4d5a5e", }, -- DevIconKsh     
    DevIconBrewfile                        { fg="#701516", }, -- DevIconBrewfile 
    DevIconKotlin                          { fg="#f88a02", }, -- DevIconKotlin  
    DevIconCMakeLists                      { fg="#6d8086", }, -- DevIconCMakeLists 
    DevIconKotlinScript                    { fg="#f88a02", }, -- DevIconKotlinScript 
    DevIconLeex                            { fg="#a074c4", }, -- DevIconLeex    
    DevIconGitCommit                       { fg="#41535b", }, -- DevIconGitCommit 
    DevIconEdn                             { fg="#519aba", }, -- DevIconEdn     
    DevIconLicense                         { fg="#cbcb41", }, -- DevIconLicense 
    DevIconVHDL                            { fg="#019833", }, -- DevIconVHDL    
    DevIconDockerfile                      { fg="#384d54", }, -- DevIconDockerfile 
    DevIconCoffee                          { fg="#cbcb41", }, -- DevIconCoffee  
    DevIconMakefile                        { fg="#6d8086", }, -- DevIconMakefile 
    DevIconHaml                            { fg="#eaeae1", }, -- DevIconHaml    
    DevIconTor                             { fg="#519aba", }, -- DevIconTor     
    DevIconMd                              { fg="#ffffff", }, -- DevIconMd      
    DevIconWebpack                         { fg="#519aba", }, -- DevIconWebpack 
    DevIconC                               { fg="#599eff", }, -- DevIconC       
    DevIconCrystal                         { fg="#000000", }, -- DevIconCrystal 
    DevIconRmd                             { fg="#519aba", }, -- DevIconRmd     
    DevIconConfiguration                   { fg="#ececec", }, -- DevIconConfiguration 
    DevIconMdx                             { fg="#519aba", }, -- DevIconMdx     
    DevIconVagrantfile                     { fg="#1563ff", }, -- DevIconVagrantfile 
    DevIconGraphQL                         { fg="#e535ab", }, -- DevIconGraphQL 
    DevIconMjs                             { fg="#f1e05a", }, -- DevIconMjs     
    DevIconCsh                             { fg="#4d5a5e", }, -- DevIconCsh     
    DevIconVimrc                           { fg="#019833", }, -- DevIconVimrc   
    DevIconD                               { fg="#427819", }, -- DevIconD       
    DevIconFish                            { fg="#4d5a5e", }, -- DevIconFish    
    DevIconR                               { fg="#358a5b", }, -- DevIconR       
    DevIconBat                             { fg="#c1f12e", }, -- DevIconBat     
    DevIconPhp                             { fg="#a074c4", }, -- DevIconPhp     
    DevIconCxx                             { fg="#519aba", }, -- DevIconCxx     
    DevIconSlim                            { fg="#e34c26", }, -- DevIconSlim    
    DevIconSvg                             { fg="#ffb13b", }, -- DevIconSvg     
    DevIconSolidity                        { fg="#519aba", }, -- DevIconSolidity 
    DevIconDb                              { fg="#dad8d8", }, -- DevIconDb      
    DevIconEx                              { fg="#a074c4", }, -- DevIconEx      
    DevIconNPMrc                           { fg="#e8274b", }, -- DevIconNPMrc   
    DevIconDesktopEntry                    { fg="#563d7c", }, -- DevIconDesktopEntry 
    DevIconDrools                          { fg="#ffafaf", }, -- DevIconDrools  
    DevIconCss                             { fg="#42a5f5", }, -- DevIconCss     
    DevIconCPlusPlus                       { fg="#f34b7d", }, -- DevIconCPlusPlus 
    DevIconScss                            { fg="#f55385", }, -- DevIconScss    
    DevIconGitLogo                         { fg="#f14c28", }, -- DevIconGitLogo 
    DevIconDropbox                         { fg="#0061fe", }, -- DevIconDropbox 
    DevIconClojure                         { fg="#8dc149", }, -- DevIconClojure 
    DevIconSettingsJson                    { fg="#854cc7", }, -- DevIconSettingsJson 
    DevIconDsStore                         { fg="#41535b", }, -- DevIconDsStore 
    DevIconHbs                             { fg="#f0772b", }, -- DevIconHbs     
    DevIconTextResource                    { fg="#cbcb41", }, -- DevIconTextResource 
    DevIconVerilog                         { fg="#019833", }, -- DevIconVerilog 
    DevIconLog                             { fg="#ffffff", }, -- DevIconLog     
    DevIconGulpfile                        { fg="#cc3e44", }, -- DevIconGulpfile 
    DevIconTs                              { fg="#519aba", }, -- DevIconTs      
    DevIconEex                             { fg="#a074c4", }, -- DevIconEex     
    DevIconTextScene                       { fg="#a074c4", }, -- DevIconTextScene 
    DevIconHeex                            { fg="#a074c4", }, -- DevIconHeex    
    DevIconCsv                             { fg="#89e051", }, -- DevIconCsv     
    DevIconErl                             { fg="#b83998", }, -- DevIconErl     
    DevIconJava                            { fg="#cc3e44", }, -- DevIconJava    
    DevIconDump                            { fg="#dad8d8", }, -- DevIconDump    
    DevIconErb                             { fg="#701516", }, -- DevIconErb     
    DevIconExs                             { fg="#a074c4", }, -- DevIconExs     
    DevIconLhs                             { fg="#a074c4", }, -- DevIconLhs     
    DevIconWebmanifest                     { fg="#f1e05a", }, -- DevIconWebmanifest 
    DevIconZsh                             { fg="#89e051", }, -- DevIconZsh     
    DevIconFavicon                         { fg="#cbcb41", }, -- DevIconFavicon 
    DevIconLock                            { fg="#bbbbbb", }, -- DevIconLock    
    DevIconWebp                            { fg="#a074c4", }, -- DevIconWebp    
    DevIconFennel                          { fg="#fff3d7", }, -- DevIconFennel  
    DevIconSwift                           { fg="#e37933", }, -- DevIconSwift   
    DevIconCson                            { fg="#cbcb41", }, -- DevIconCson    
    DevIconDoc                             { fg="#185abd", }, -- DevIconDoc     
    DevIconEjs                             { fg="#cbcb41", }, -- DevIconEjs     
    DevIconEpp                             { fg="#ffa61a", }, -- DevIconEpp     
    DevIconBmp                             { fg="#a074c4", }, -- DevIconBmp     
    DevIconFsi                             { fg="#519aba", }, -- DevIconFsi     
    DevIconXul                             { fg="#e37933", }, -- DevIconXul     
    DevIconDiff                            { fg="#41535b", }, -- DevIconDiff    
    DevIconFsx                             { fg="#519aba", }, -- DevIconFsx     
    DevIconScala                           { fg="#cc3e44", }, -- DevIconScala   
    DevIconYml                             { fg="#6d8086", }, -- DevIconYml     
    DevIconGemspec                         { fg="#701516", }, -- DevIconGemspec 
    DevIconClojureJS                       { fg="#519aba", }, -- DevIconClojureJS 
    DevIconMli                             { fg="#e37933", }, -- DevIconMli     
    DevIconEnv                             { fg="#faf743", }, -- DevIconEnv     
    DevIconMotoko                          { fg="#9772fb", }, -- DevIconMotoko  
    DevIconPrisma                          { fg="#ffffff", }, -- DevIconPrisma  
    DevIconFs                              { fg="#519aba", }, -- DevIconFs      
    DevIconTerminal                        { fg="#31b53e", }, -- DevIconTerminal 
    DevIconGDScript                        { fg="#6d8086", }, -- DevIconGDScript 
    DevIconConf                            { fg="#6d8086", }, -- DevIconConf    
    DevIconSystemVerilog                   { fg="#019833", }, -- DevIconSystemVerilog 
    DevIconSass                            { fg="#f55385", }, -- DevIconSass    
    DevIconLess                            { fg="#563d7c", }, -- DevIconLess    
    DevIconGodotProject                    { fg="#6d8086", }, -- DevIconGodotProject 
    DevIconJson                            { fg="#cbcb41", }, -- DevIconJson    
    DevIconVim                             { fg="#019833", }, -- DevIconVim     
    DevIconMixLock                         { fg="#a074c4", }, -- DevIconMixLock 
    DevIconGruntfile                       { fg="#e37933", }, -- DevIconGruntfile 
    DevIconOPUS                            { fg="#f88a02", }, -- DevIconOPUS    
    DevIconNim                             { fg="#f3d400", }, -- DevIconNim     
    DevIconOpenTypeFont                    { fg="#ececec", }, -- DevIconOpenTypeFont 
    DevIconCpp                             { fg="#519aba", }, -- DevIconCpp     
    DevIconToml                            { fg="#6d8086", }, -- DevIconToml    
    DevIconGemfile                         { fg="#701516", }, -- DevIconGemfile 
    DevIconHh                              { fg="#a074c4", }, -- DevIconHh      
    DevIconJsx                             { fg="#519aba", }, -- DevIconJsx     
    DevIconTsx                             { fg="#519aba", }, -- DevIconTsx     
    DevIconBash                            { fg="#89e051", }, -- DevIconBash    
    DevIconPackedResource                  { fg="#6d8086", }, -- DevIconPackedResource 
    DevIconHtml                            { fg="#e44d26", }, -- DevIconHtml    
    DevIconPdf                             { fg="#b30b00", }, -- DevIconPdf     
    DevIconVue                             { fg="#8dc149", }, -- DevIconVue     
    DevIconBinaryGLTF                      { fg="#ffb13b", }, -- DevIconBinaryGLTF 
    DevIconPackageLockJson                 { fg="#7a0d21", }, -- DevIconPackageLockJson 
    DevIconFsharp                          { fg="#519aba", }, -- DevIconFsharp  
    DevIconHpp                             { fg="#a074c4", }, -- DevIconHpp     
    DevIconPl                              { fg="#519aba", }, -- DevIconPl      
    DevIconHrl                             { fg="#b83998", }, -- DevIconHrl     
    DevIconElm                             { fg="#519aba", }, -- DevIconElm     
    DevIconHs                              { fg="#a074c4", }, -- DevIconHs      
    DevIconPpt                             { fg="#cb4a32", }, -- DevIconPpt     
    DevIconHtm                             { fg="#e34c26", }, -- DevIconHtm     
    DevIconMarkdown                        { fg="#519aba", }, -- DevIconMarkdown 
    DevIconProlog                          { fg="#e4b854", }, -- DevIconProlog  
    DevIconNix                             { fg="#7ebae4", }, -- DevIconNix     
    DevIconHxx                             { fg="#a074c4", }, -- DevIconHxx     
    DevIconDart                            { fg="#03589c", }, -- DevIconDart    
    DevIconMustache                        { fg="#e37933", }, -- DevIconMustache 
    DevIconProcfile                        { fg="#a074c4", }, -- DevIconProcfile 
    DevIconRs                              { fg="#dea584", }, -- DevIconRs      
    DevIconPromptPs1                       { fg="#4d5a5e", }, -- DevIconPromptPs1 
    DevIconPsb                             { fg="#519aba", }, -- DevIconPsb     
    DevIconTwig                            { fg="#8dc149", }, -- DevIconTwig    
    DevIconPp                              { fg="#ffa61a", }, -- DevIconPp      
    DevIconPm                              { fg="#519aba", }, -- DevIconPm      
    DevIconPsd                             { fg="#519aba", }, -- DevIconPsd     
    DevIconPy                              { fg="#ffbc03", }, -- DevIconPy      
    DevIconPackageJson                     { fg="#e8274b", }, -- DevIconPackageJson 
    DevIconMint                            { fg="#87c095", }, -- DevIconMint    
    DevIconMaterial                        { fg="#b83998", }, -- DevIconMaterial 
    DevIconPyc                             { fg="#ffe291", }, -- DevIconPyc     
    DevIconNodeModules                     { fg="#e8274b", }, -- DevIconNodeModules 
    DevIconFsscript                        { fg="#519aba", }, -- DevIconFsscript 
    DevIconPyd                             { fg="#ffe291", }, -- DevIconPyd     
    DevIconSh                              { fg="#4d5a5e", }, -- DevIconSh      
    DevIconPyo                             { fg="#ffe291", }, -- DevIconPyo     
    DevIconJs                              { fg="#cbcb41", }, -- DevIconJs      
    DevIconRake                            { fg="#701516", }, -- DevIconRake    
    DevIconImportConfiguration             { fg="#ececec", }, -- DevIconImportConfiguration 
    DevIconRakefile                        { fg="#701516", }, -- DevIconRakefile 
    DevIconRb                              { fg="#701516", }, -- DevIconRb      
    DevIconTex                             { fg="#3d6117", }, -- DevIconTex     
    DevIconRlib                            { fg="#dea584", }, -- DevIconRlib    
    DevIconBabelrc                         { fg="#cbcb41", }, -- DevIconBabelrc 
    DevIconH                               { fg="#a074c4", }, -- DevIconH       
    DevIconZig                             { fg="#f69a1b", }, -- DevIconZig     
    DevIconRproj                           { fg="#358a5b", }, -- DevIconRproj   
    DevIconYaml                            { fg="#6d8086", }, -- DevIconYaml    
    DevIconGo                              { fg="#519aba", }, -- DevIconGo      
    DevIconXml                             { fg="#e37933", }, -- DevIconXml     
    DevIconRss                             { fg="#fb9d3b", }, -- DevIconRss     
    DevIconXls                             { fg="#207245", }, -- DevIconXls     
    DevIconClojureC                        { fg="#8dc149", }, -- DevIconClojureC 
    DevIconXcPlayground                    { fg="#e37933", }, -- DevIconXcPlayground 
    DevIconJpg                             { fg="#a074c4", }, -- DevIconJpg     
    DevIconJpeg                            { fg="#a074c4", }, -- DevIconJpeg    
    DevIconPng                             { fg="#a074c4", }, -- DevIconPng     
    DevIconGif                             { fg="#a074c4", }, -- DevIconGif     
    DevIconScheme                          { fg="#000000", }, -- DevIconScheme  
    DevIconBashProfile                     { fg="#89e051", }, -- DevIconBashProfile 
    DevIconCs                              { fg="#596706", }, -- DevIconCs      
    DevIconTxt                             { fg="#89e051", }, -- DevIconTxt     
    DevIconSig                             { fg="#e37933", }, -- DevIconSig     
    DevIconConfigRu                        { fg="#701516", }, -- DevIconConfigRu 
    DevIconBashrc                          { fg="#89e051", }, -- DevIconBashrc  
    DevIconSln                             { fg="#854cc7", }, -- DevIconSln     
    DevIconSvelte                          { fg="#ff3e00", }, -- DevIconSvelte  
    DevIconSml                             { fg="#e37933", }, -- DevIconSml     
    lualine_a_normal                       { fg="#0b0b0b", bg="#78a9ff", }, -- lualine_a_normal 
    lualine_c_normal                       { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_normal 
    lualine_b_normal                       { fg="#b6b7ba", bg="#2b3a54", }, -- lualine_b_normal 
    lualine_a_terminal                     { fg="#0b0b0b", bg="#3ddbd9", }, -- lualine_a_terminal 
    lualine_c_terminal                     { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_terminal 
    lualine_b_terminal                     { fg="#b6b7ba", bg="#1a4948", }, -- lualine_b_terminal 
    lualine_a_inactive                     { fg="#0b0b0b", bg="#7a7b7d", }, -- lualine_a_inactive 
    lualine_c_inactive                     { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_inactive 
    lualine_b_inactive                     { fg="#b6b7ba", bg="#2c2c2d", }, -- lualine_b_inactive 
    lualine_a_command                      { fg="#0b0b0b", bg="#08bdba", }, -- lualine_a_command 
    lualine_c_command                      { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_command 
    lualine_b_command                      { fg="#b6b7ba", bg="#0a403f", }, -- lualine_b_command 
    lualine_a_insert                       { fg="#0b0b0b", bg="#25be6a", }, -- lualine_a_insert 
    lualine_c_insert                       { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_insert 
    lualine_b_insert                       { fg="#b6b7ba", bg="#124027", }, -- lualine_b_insert 
    lualine_a_replace                      { fg="#0b0b0b", bg="#ee5396", }, -- lualine_a_replace 
    lualine_c_replace                      { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_replace 
    lualine_b_replace                      { fg="#b6b7ba", bg="#4f2034", }, -- lualine_b_replace 
    lualine_a_visual                       { fg="#0b0b0b", bg="#be95ff", }, -- lualine_a_visual 
    lualine_c_visual                       { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_visual 
    lualine_b_visual                       { fg="#b6b7ba", bg="#403454", }, -- lualine_b_visual 
    BufferLineError                        { sp="#ee5396", fg="#6e6f70", bg="#101010", }, -- BufferLineError 
    BufferLineHintSelected                 { sp="#3ddbd9", gui="bold,italic", fg="#3ddbd9", bg="#161616", }, -- BufferLineHintSelected 
    BufferLineBufferVisible                { fg="#b6b8bb", bg="#252525", }, -- BufferLineBufferVisible 
    BufferLineModifiedVisible              { fg="#b6b8bb", bg="#252525", }, -- BufferLineModifiedVisible 
    BufferLineGroupSeparator               { fg="#6e6f70", bg="#0c0c0c", }, -- BufferLineGroupSeparator 
    BufferLineSeparator                    { fg="#252525", bg="#252525", }, -- BufferLineSeparator 
    BufferLineTabClose                     { fg="#161616", bg="#161616", }, -- BufferLineTabClose 
    BufferLineDuplicateVisible             { gui="underline,italic", fg="#b6b8bb", bg="#252525", }, -- BufferLineDuplicateVisible 
    BufferLinePickVisible                  { gui="bold,italic", fg="#ee5396", bg="#141414", }, -- BufferLinePickVisible 
    BufferLineBackground                   { fg="#b6b8bb", bg="#252525", }, -- BufferLineBackground 
    BufferLineDuplicate                    { gui="underline,italic", fg="#b6b8bb", bg="#252525", }, -- BufferLineDuplicate 
    BufferLineModifiedSelected             { fg="#f2f4f8", bg="#161616", }, -- BufferLineModifiedSelected 
    BufferLineBuffer                       { fg="#6e6f70", bg="#101010", }, -- BufferLineBuffer 
    BufferLineNumbers                      { fg="#6e6f70", bg="#101010", }, -- BufferLineNumbers 
    BufferLineDiagnostic                   { fg="#525354", bg="#101010", }, -- BufferLineDiagnostic 
    BufferLineSeparatorSelected            { fg="#161616", bg="#161616", }, -- BufferLineSeparatorSelected 
    BufferLineInfoDiagnosticSelected       { sp="#5a7ebf", gui="bold,italic", fg="#5a7ebf", bg="#161616", }, -- BufferLineInfoDiagnosticSelected 
    BufferLineFill                         { bg="#252525", }, -- BufferLineFill 
    BufferLineCloseButton                  { fg="#b6b8bb", bg="#252525", }, -- BufferLineCloseButton 
    BufferLineCloseButtonVisible           { fg="#b6b8bb", bg="#252525", }, -- BufferLineCloseButtonVisible 
    BufferLineTabSelected                  { fg="#f2f4f8", bg="#161616", }, -- BufferLineTabSelected 
    BufferLineGroupLabel                   { fg="#0c0c0c", bg="#6e6f70", }, -- BufferLineGroupLabel 
    BufferLineCloseButtonSelected          { fg="#f2f4f8", bg="#161616", }, -- BufferLineCloseButtonSelected 
    BufferLineBufferSelected               { gui="bold,italic", fg="#f2f4f8", bg="#161616", }, -- BufferLineBufferSelected 
    BufferLineTab                          { fg="#b6b8bb", bg="#252525", }, -- BufferLineTab  
    BufferLineNumbersVisible               { fg="#6e6f70", bg="#141414", }, -- BufferLineNumbersVisible 
    BufferLineDiagnosticVisible            { fg="#525354", bg="#141414", }, -- BufferLineDiagnosticVisible 
    BufferLineDiagnosticSelected           { gui="bold,italic", fg="#b5b7ba", bg="#161616", }, -- BufferLineDiagnosticSelected 
    BufferLineSeparatorVisible             { fg="#252525", bg="#252525", }, -- BufferLineSeparatorVisible 
    BufferLineIndicatorSelected            { bg="#161616", }, -- BufferLineIndicatorSelected 
    BufferLineHintDiagnostic               { sp="#2da4a2", fg="#525354", bg="#101010", }, -- BufferLineHintDiagnostic 
    BufferLineHintDiagnosticVisible        { fg="#525354", bg="#141414", }, -- BufferLineHintDiagnosticVisible 
    BufferLineHintDiagnosticSelected       { sp="#2da4a2", gui="bold,italic", fg="#2da4a2", bg="#161616", }, -- BufferLineHintDiagnosticSelected 
    BufferLineInfoVisible                  { fg="#6e6f70", bg="#141414", }, -- BufferLineInfoVisible 
    BufferLineInfoSelected                 { sp="#78a9ff", gui="bold,italic", fg="#78a9ff", bg="#161616", }, -- BufferLineInfoSelected 
    BufferLineInfoDiagnostic               { sp="#5a7ebf", fg="#525354", bg="#101010", }, -- BufferLineInfoDiagnostic 
    BufferLineInfoDiagnosticVisible        { fg="#525354", bg="#141414", }, -- BufferLineInfoDiagnosticVisible 
    BufferLineModified                     { fg="#b6b8bb", bg="#252525", }, -- BufferLineModified 
    BufferLineWarningVisible               { fg="#6e6f70", bg="#141414", }, -- BufferLineWarningVisible 
    BufferLineWarningSelected              { sp="#be95ff", gui="bold,italic", fg="#be95ff", bg="#161616", }, -- BufferLineWarningSelected 
    BufferLineWarningDiagnostic            { sp="#8e6fbf", fg="#525354", bg="#101010", }, -- BufferLineWarningDiagnostic 
    BufferLineWarningDiagnosticVisible     { fg="#525354", bg="#141414", }, -- BufferLineWarningDiagnosticVisible 
    BufferLineWarningDiagnosticSelected    { sp="#8e6fbf", gui="bold,italic", fg="#8e6fbf", bg="#161616", }, -- BufferLineWarningDiagnosticSelected 
    BufferLineErrorVisible                 { fg="#6e6f70", bg="#141414", }, -- BufferLineErrorVisible 
    BufferLineErrorSelected                { sp="#ee5396", gui="bold,italic", fg="#ee5396", bg="#161616", }, -- BufferLineErrorSelected 
    BufferLineErrorDiagnostic              { sp="#b23e70", fg="#525354", bg="#101010", }, -- BufferLineErrorDiagnostic 
    BufferLineErrorDiagnosticVisible       { fg="#525354", bg="#141414", }, -- BufferLineErrorDiagnosticVisible 
    BufferLineErrorDiagnosticSelected      { sp="#b23e70", gui="bold,italic", fg="#b23e70", bg="#161616", }, -- BufferLineErrorDiagnosticSelected 
    BufferLineTabSeparator                 { fg="#0c0c0c", bg="#101010", }, -- BufferLineTabSeparator 
    BufferLineTabSeparatorSelected         { fg="#0c0c0c", bg="#161616", }, -- BufferLineTabSeparatorSelected 
    BufferLineIndicatorVisible             { fg="#141414", bg="#141414", }, -- BufferLineIndicatorVisible 
    BufferLinePickSelected                 { gui="bold,italic", fg="#ee5396", bg="#161616", }, -- BufferLinePickSelected 
    BufferLinePick                         { gui="bold,italic", fg="#ee5396", bg="#101010", }, -- BufferLinePick 
    BufferLineOffsetSeparator              { fg="#0c0c0c", bg="#0c0c0c", }, -- BufferLineOffsetSeparator 
    BufferLineDuplicateSelected            { gui="underline,italic", fg="#161616", bg="#7b7c7e", }, -- BufferLineDuplicateSelected 
    BufferLineInfo                         { sp="#78a9ff", fg="#6e6f70", bg="#101010", }, -- BufferLineInfo 
    BufferLineNumbersSelected              { gui="italic", fg="#f2f4f8", bg="#161616", }, -- BufferLineNumbersSelected 
    BufferLineWarning                      { sp="#be95ff", fg="#6e6f70", bg="#101010", }, -- BufferLineWarning 
    BufferLineHintVisible                  { fg="#6e6f70", bg="#141414", }, -- BufferLineHintVisible 
    BufferLineHint                         { sp="#3ddbd9", fg="#6e6f70", bg="#101010", }, -- BufferLineHint 
    GitSignsChange                         { fg="#08bdba", }, -- GitSignsChange 
    GitSignsChangeNr                       { GitSignsChange }, -- GitSignsChangeNr 
    GitSignsAdd                            { fg="#25be6a", }, -- GitSignsAdd    
    GitSignsAddNr                          { GitSignsAdd }, -- GitSignsAddNr  
    GitSignsDelete                         { fg="#ee5396", }, -- GitSignsDelete 
    GitSignsDeleteNr                       { GitSignsDelete }, -- GitSignsDeleteNr 
    DiffviewDiffAddAsDelete                { bg="#311d26", }, -- DiffviewDiffAddAsDelete 
    DiffviewPrimary                        { fg="#8cb6ff", }, -- DiffviewPrimary 
    DiffviewSecondary                      { fg="#25be6a", }, -- DiffviewSecondary 
    DiffviewFilePanelTitle                 { gui="bold", fg="#c8a5ff", }, -- DiffviewFilePanelTitle 
    DiffviewFilePanelRootPath              { DiffviewFilePanelTitle }, -- DiffviewFilePanelRootPath 
    DiffviewFilePanelCounter               { gui="bold", fg="#33b1ff", }, -- DiffviewFilePanelCounter 
    DiffviewFilePanelFileName              { fg="#f2f4f8", }, -- DiffviewFilePanelFileName 
    DiffviewDim1                           { fg="#6e6f70", }, -- DiffviewDim1   
    diffRemoved                            { fg="#ee5396", }, -- diffRemoved    
    DiffviewFilePanelDeletions             { diffRemoved }, -- DiffviewFilePanelDeletions 
    DiffviewStatusUnknown                  { diffRemoved }, -- DiffviewStatusUnknown 
    DiffviewStatusDeleted                  { diffRemoved }, -- DiffviewStatusDeleted 
    DiffviewStatusBroken                   { diffRemoved }, -- DiffviewStatusBroken 
    diffChanged                            { fg="#08bdba", }, -- diffChanged    
    DiffviewStatusModified                 { diffChanged }, -- DiffviewStatusModified 
    DiffviewStatusRenamed                  { diffChanged }, -- DiffviewStatusRenamed 
    DiffviewStatusCopied                   { diffChanged }, -- DiffviewStatusCopied 
    DiffviewStatusTypeChange               { diffChanged }, -- DiffviewStatusTypeChange 
    DiffviewStatusUnmerged                 { diffChanged }, -- DiffviewStatusUnmerged 
    DapUIVariable                          { fg="#dfdfe0", }, -- DapUIVariable  
    DapUIScope                             { fg="#52bdff", }, -- DapUIScope     
    DapUIValue                             { fg="#dfdfe0", }, -- DapUIValue     
    DapUIModifiedValue                     { gui="bold", fg="#dfdfe0", }, -- DapUIModifiedValue 
    DapUIDecoration                        { fg="#7b7c7e", }, -- DapUIDecoration 
    DapUIStoppedThread                     { fg="#52bdff", }, -- DapUIStoppedThread 
    DapUIWatchesEmpty                      { fg="#ee5396", }, -- DapUIWatchesEmpty 
    DapUIWatchesValue                      { fg="#be95ff", }, -- DapUIWatchesValue 
    DapUIWatchesError                      { fg="#ee5396", }, -- DapUIWatchesError 
    DapUIBreakpointsPath                   { fg="#52bdff", }, -- DapUIBreakpointsPath 
    DapUIBreakpointsInfo                   { fg="#78a9ff", }, -- DapUIBreakpointsInfo 
    DapUIBreakpointsCurrentLine            { gui="bold", fg="#3ddbd9", }, -- DapUIBreakpointsCurrentLine 
    DapUICurrentFrameName                  { DapUIBreakpointsCurrentLine }, -- DapUICurrentFrameName 
    DapUIBreakpointsDisabledLine           { fg="#6e6f70", }, -- DapUIBreakpointsDisabledLine 
    DapUIStepOver                          { fg="#00f1f5", }, -- DapUIStepOver  
    DapUIStepInto                          { fg="#00f1f5", }, -- DapUIStepInto  
    DapUIStepBack                          { fg="#00f1f5", }, -- DapUIStepBack  
    DapUIStepOut                           { fg="#00f1f5", }, -- DapUIStepOut   
    DapUIStop                              { fg="#f70067", }, -- DapUIStop      
    DapUIPlayPause                         { fg="#a9ff68", }, -- DapUIPlayPause 
    DapUIRestart                           { fg="#a9ff68", }, -- DapUIRestart   
    DapUIUnavailable                       { fg="#424242", }, -- DapUIUnavailable 
    UfoFoldedBg                            { bg="#252525", }, -- UfoFoldedBg    
    UfoPreviewWinBar                       { UfoFoldedBg }, -- UfoPreviewWinBar 
    UfoFoldedFg                            { fg="#f2f4f8", }, -- UfoFoldedFg    
    IndentBlanklineChar                    { gui="nocombine", fg="#353535", }, -- IndentBlanklineChar 
    IndentBlanklineSpaceChar               { gui="nocombine", fg="#353535", }, -- IndentBlanklineSpaceChar 
    IndentBlanklineSpaceCharBlankline      { gui="nocombine", fg="#353535", }, -- IndentBlanklineSpaceCharBlankline 
    IndentBlanklineContextChar             { gui="nocombine", fg="#c8a5ff", }, -- IndentBlanklineContextChar 
    IndentBlanklineContextStart            { sp="#c8a5ff", gui="underline", }, -- IndentBlanklineContextStart 
    CmpItemAbbr                            { fg="#f2f4f8", }, -- CmpItemAbbr    
    CmpItemAbbrDefault                     { fg="#f2f4f8", }, -- CmpItemAbbrDefault 
    CmpItemAbbrDeprecated                  { gui="strikethrough", fg="#7b7c7e", }, -- CmpItemAbbrDeprecated 
    CmpItemAbbrDeprecatedDefault           { fg="#6e6f70", }, -- CmpItemAbbrDeprecatedDefault 
    CmpItemAbbrMatch                       { fg="#8cb6ff", }, -- CmpItemAbbrMatch 
    CmpItemAbbrMatchDefault                { fg="#f2f4f8", }, -- CmpItemAbbrMatchDefault 
    CmpItemAbbrMatchFuzzy                  { fg="#8cb6ff", }, -- CmpItemAbbrMatchFuzzy 
    CmpItemAbbrMatchFuzzyDefault           { fg="#f2f4f8", }, -- CmpItemAbbrMatchFuzzyDefault 
    CmpItemKindDefault                     { fg="#8cb6ff", }, -- CmpItemKindDefault 
    CmpItemKind                            { CmpItemKindDefault }, -- CmpItemKind    
    CmpItemMenuDefault                     { fg="#f2f4f8", }, -- CmpItemMenuDefault 
    CmpItemKindSnippet                     { fg="#b6b8bb", }, -- CmpItemKindSnippet 
    TSNone                                 { }, -- TSNone         
    TSText                                 { TSNone }, -- TSText         
    TSStrong                               { gui="bold", }, -- TSStrong       
    TSEmphasis                             { gui="italic", }, -- TSEmphasis     
    TSUnderline                            { gui="underline", }, -- TSUnderline    
    TSStrike                               { gui="strikethrough", }, -- TSStrike       
    TSURI                                  { gui="bold", fg="#33b1ff", }, -- TSURI          
    TSTextReference                        { fg="#be95ff", }, -- TSTextReference 
    TSNote                                 { fg="#78a9ff", }, -- TSNote         
    commentTSNote                          { TSNote }, -- commentTSNote  
    TSWarning                              { fg="#be95ff", }, -- TSWarning      
    commentTSWarning                       { TSWarning }, -- commentTSWarning 
    TSDanger                               { fg="#ee5396", }, -- TSDanger       
    commentTSDanger                        { TSDanger }, -- commentTSDanger 
    TSTypeBuiltin                          { fg="#ffc69d", Italic }, -- TSTypeBuiltin  
    TSField                                { fg="#78a9ff", }, -- TSField        
    CmpItemKindEnumMember                  { TSField }, -- CmpItemKindEnumMember 
    CmpItemKindTypeParameter               { TSField }, -- CmpItemKindTypeParameter 
    CmpItemKindField                       { TSField }, -- CmpItemKindField 
    TSProperty                             { TSField }, -- TSProperty     
    luaTSField                             { TSField }, -- luaTSField     
    TSConstBuiltin                         { fg="#5ae0df", }, -- TSConstBuiltin 
    luaTSConstBuiltin                      { TSConstBuiltin }, -- luaTSConstBuiltin 
    TSConstructor                          { fg="#be95ff", }, -- TSConstructor  
    luaTSConstructor                       { TSConstructor }, -- luaTSConstructor 
    TSFuncBuiltin                          { fg="#99f3ff", Italic }, -- TSFuncBuiltin  
    luaTSFuncBuiltin                       { TSFuncBuiltin }, -- luaTSFuncBuiltin 
    TSFuncMacro                            { fg="#ee5396", }, -- TSFuncMacro    
    TSKeywordFunction                      { fg="#ff7039", Bold }, -- TSKeywordFunction 
    luaTSKeywordFunction                   { TSKeywordFunction }, -- luaTSKeywordFunction 
    TSKeywordOperator                      { gui="bold", fg="#b6b8bb", }, -- TSKeywordOperator 
    TSOperator                             { fg="#b6b8bb", Bold }, -- TSOperator     
    luaTSOperator                          { TSOperator }, -- luaTSOperator  
    TSNamespace                            { fg="#52bdff", }, -- TSNamespace    
    CmpItemKindModule                      { TSNamespace }, -- CmpItemKindModule 
    TSPunctDelimiter                       { fg="#b6b8bb", }, -- TSPunctDelimiter 
    luaTSPunctDelimiter                    { TSPunctDelimiter }, -- luaTSPunctDelimiter 
    commentTSPunctDelimiter                { TSPunctDelimiter }, -- commentTSPunctDelimiter 
    TSPunctBracket                         { fg="#b6b8bb", }, -- TSPunctBracket 
    luaTSPunctBracket                      { TSPunctBracket }, -- luaTSPunctBracket 
    TSPunctSpecial                         { fg="#b6b8bb", }, -- TSPunctSpecial 
    markdownTSPunctSpecial                 { TSPunctSpecial }, -- markdownTSPunctSpecial 
    TSStringRegex                          { fg="#2dc7c4", }, -- TSStringRegex  
    TSStringEscape                         { gui="bold", fg="#2dc7c4", }, -- TSStringEscape 
    TSVariableBuiltin                      { fg="#ee5396", }, -- TSVariableBuiltin 
    TelescopeBorder                        { fg="#535353", }, -- TelescopeBorder 
    TelescopePreviewBorder                 { TelescopeBorder }, -- TelescopePreviewBorder 
    TelescopeTitle                         { TelescopeBorder }, -- TelescopeTitle 
    TelescopePromptBorder                  { TelescopeBorder }, -- TelescopePromptBorder 
    TelescopeResultsBorder                 { TelescopeBorder }, -- TelescopeResultsBorder 
    TelescopeSelectionCaret                { fg="#ffffff", }, -- TelescopeSelectionCaret 
    BufferLineDevIconLuaSelected           { fg="#51a0cf", bg="#161616", }, -- BufferLineDevIconLuaSelected 
    TSVariable                             { fg="#ffb966", }, -- TSVariable     
    CmpItemKindVariable                    { TSVariable }, -- CmpItemKindVariable 
    luaTSVariable                          { TSVariable }, -- luaTSVariable  
    BufferLineDevIconLua                   { fg="#51a0cf", bg="#252525", }, -- BufferLineDevIconLua 
    BufferLineDevIconLicense               { fg="#cbcb41", bg="#252525", }, -- BufferLineDevIconLicense 
    LspReferenceText                       { bg="#2a2a2a", }, -- LspReferenceText 
    MiniCursorword                         { LspReferenceText }, -- MiniCursorword 
    MiniCursorwordCurrent                  { LspReferenceText }, -- MiniCursorwordCurrent 
    illuminatedCurWord                     { LspReferenceText }, -- illuminatedCurWord 
    illuminatedWord                        { LspReferenceText }, -- illuminatedWord 
    LspReferenceRead                       { bg="#2a2a2a", }, -- LspReferenceRead 
    LspReferenceWrite                      { bg="#2a2a2a", }, -- LspReferenceWrite 
    LspCodeLens                            { fg="#6e6f70", }, -- LspCodeLens    
    LspCodeLensSeparator                   { fg="#7b7c7e", }, -- LspCodeLensSeparator 
    LspSignatureActiveParameter            { fg="#525253", }, -- LspSignatureActiveParameter 
    TSError                                { fg="#ee5396", }, -- TSError        
    luaTSError                             { TSError }, -- luaTSError     
    AerialGuide                            { fg="#535353", }, -- AerialGuide    
    BufferCurrent                          { fg="#f2f4f8", bg="#7b7c7e", }, -- BufferCurrent  
    BufferCurrentIndex                     { fg="#78a9ff", bg="#7b7c7e", }, -- BufferCurrentIndex 
    BufferCurrentMod                       { fg="#be95ff", bg="#7b7c7e", }, -- BufferCurrentMod 
    BufferCurrentSign                      { fg="#78a9ff", bg="#7b7c7e", }, -- BufferCurrentSign 
    BufferCurrentTarget                    { fg="#ee5396", bg="#7b7c7e", }, -- BufferCurrentTarget 
    BufferInactive                         { fg="#6e6f70", bg="#0c0c0c", }, -- BufferInactive 
    BufferInactiveIndex                    { fg="#6e6f70", bg="#0c0c0c", }, -- BufferInactiveIndex 
    BufferInactiveMod                      { fg="#2f2939", bg="#0c0c0c", }, -- BufferInactiveMod 
    BufferInactiveSign                     { fg="#353535", bg="#0c0c0c", }, -- BufferInactiveSign 
    BufferInactiveTarget                   { fg="#ee5396", bg="#0c0c0c", }, -- BufferInactiveTarget 
    BufferTabpage                          { fg="#353535", bg="#0c0c0c", }, -- BufferTabpage  
    BufferTabpages                         { bg="#0c0c0c", }, -- BufferTabpages 
    BufferVisible                          { fg="#f2f4f8", bg="#0c0c0c", }, -- BufferVisible  
    BufferVisibleIndex                     { fg="#78a9ff", bg="#0c0c0c", }, -- BufferVisibleIndex 
    BufferVisibleMod                       { fg="#be95ff", bg="#0c0c0c", }, -- BufferVisibleMod 
    BufferVisibleSign                      { fg="#78a9ff", bg="#0c0c0c", }, -- BufferVisibleSign 
    BufferVisibleTarget                    { fg="#ee5396", bg="#0c0c0c", }, -- BufferVisibleTarget 
    CmpDocumentation                       { fg="#f2f4f8", bg="#0c0c0c", }, -- CmpDocumentation 
    CmpDocumentationBorder                 { fg="#2a2a2a", bg="#0c0c0c", }, -- CmpDocumentationBorder 
    CocInlayHint                           { fg="#6e6f70", bg="#252525", }, -- CocInlayHint   
    DashboardFooter                        { gui="italic", fg="#5ae0df", }, -- DashboardFooter 
    FernBranchText                         { fg="#78a9ff", }, -- FernBranchText 
    GitGutterAdd                           { fg="#25be6a", }, -- GitGutterAdd   
    GitGutterChange                        { fg="#08bdba", }, -- GitGutterChange 
    GitGutterDelete                        { fg="#ee5396", }, -- GitGutterDelete 
    GlyphPalette0                          { fg="#282828", }, -- GlyphPalette0  
    GlyphPalette1                          { fg="#ee5396", }, -- GlyphPalette1  
    GlyphPalette10                         { fg="#46c880", }, -- GlyphPalette10 
    GlyphPalette11                         { fg="#2dc7c4", }, -- GlyphPalette11 
    GlyphPalette12                         { fg="#8cb6ff", }, -- GlyphPalette12 
    GlyphPalette13                         { fg="#c8a5ff", }, -- GlyphPalette13 
    GlyphPalette14                         { fg="#52bdff", }, -- GlyphPalette14 
    GlyphPalette15                         { fg="#e4e4e5", }, -- GlyphPalette15 
    GlyphPalette2                          { fg="#25be6a", }, -- GlyphPalette2  
    GlyphPalette3                          { fg="#08bdba", }, -- GlyphPalette3  
    GlyphPalette4                          { fg="#78a9ff", }, -- GlyphPalette4  
    GlyphPalette5                          { fg="#be95ff", }, -- GlyphPalette5  
    GlyphPalette6                          { fg="#33b1ff", }, -- GlyphPalette6  
    GlyphPalette7                          { fg="#e4e4e5", }, -- GlyphPalette7  
    GlyphPalette8                          { fg="#484848", }, -- GlyphPalette8  
    GlyphPalette9                          { fg="#f16da6", }, -- GlyphPalette9  
    HopNextKey                             { gui="bold", fg="#33b1ff", }, -- HopNextKey     
    HopNextKey1                            { gui="bold", fg="#78a9ff", }, -- HopNextKey1    
    HopNextKey2                            { fg="#6690d9", }, -- HopNextKey2    
    HopUnmatched                           { fg="#6e6f70", }, -- HopUnmatched   
    LightspeedGreyWash                     { fg="#6e6f70", }, -- LightspeedGreyWash 
    LspFloatWinBorder                      { fg="#7b7c7e", }, -- LspFloatWinBorder 
    LspFloatWinNormal                      { bg="#0c0c0c", }, -- LspFloatWinNormal 
    LspInlayHint                           { fg="#6e6f70", bg="#252525", }, -- LspInlayHint   
    LspSagaCodeActionBorder                { fg="#7b7c7e", }, -- LspSagaCodeActionBorder 
    LspSagaDefPreviewBorder                { fg="#7b7c7e", }, -- LspSagaDefPreviewBorder 
    LspSagaFinderSelection                 { fg="#2a2a2a", }, -- LspSagaFinderSelection 
    LspSagaHoverBorder                     { fg="#7b7c7e", }, -- LspSagaHoverBorder 
    LspSagaRenameBorder                    { fg="#7b7c7e", }, -- LspSagaRenameBorder 
    LspSagaSignatureHelpBorder             { fg="#ee5396", }, -- LspSagaSignatureHelpBorder 
    LspTroubleCount                        { fg="#be95ff", bg="#7b7c7e", }, -- LspTroubleCount 
    LspTroubleNormal                       { fg="#7b7c7e", bg="#0c0c0c", }, -- LspTroubleNormal 
    LspTroubleText                         { fg="#b6b8bb", }, -- LspTroubleText 
    MiniCompletionActiveParameter          { gui="underline", }, -- MiniCompletionActiveParameter 
    MiniIndentscopePrefix                  { gui="nocombine", }, -- MiniIndentscopePrefix 
    MiniJump                               { fg="#0c0c0c", bg="#be95ff", }, -- MiniJump       
    MiniJump2dSpot                         { gui="bold", fg="#33b1ff", }, -- MiniJump2dSpot 
    MiniStarterCurrent                     { gui="nocombine", }, -- MiniStarterCurrent 
    MiniStarterFooter                      { gui="italic", fg="#5ae0df", }, -- MiniStarterFooter 
    MiniStarterItemBullet                  { fg="#7b7c7e", }, -- MiniStarterItemBullet 
    MiniStarterItemPrefix                  { fg="#ff7eb6", }, -- MiniStarterItemPrefix 
    MiniStarterQuery                       { fg="#25be6a", }, -- MiniStarterQuery 
    MiniStarterSection                     { fg="#ee5396", }, -- MiniStarterSection 
    MiniStatuslineDevinfo                  { fg="#b6b8bb", bg="#252525", }, -- MiniStatuslineDevinfo 
    MiniStatuslineFileinfo                 { fg="#b6b8bb", bg="#252525", }, -- MiniStatuslineFileinfo 
    MiniStatuslineModeCommand              { gui="bold", fg="#0c0c0c", bg="#08bdba", }, -- MiniStatuslineModeCommand 
    MiniStatuslineModeInsert               { gui="bold", fg="#0c0c0c", bg="#25be6a", }, -- MiniStatuslineModeInsert 
    MiniStatuslineModeNormal               { gui="bold", fg="#0c0c0c", bg="#33b1ff", }, -- MiniStatuslineModeNormal 
    MiniStatuslineModeOther                { gui="bold", fg="#0c0c0c", bg="#78a9ff", }, -- MiniStatuslineModeOther 
    MiniStatuslineModeReplace              { gui="bold", fg="#0c0c0c", bg="#ee5396", }, -- MiniStatuslineModeReplace 
    MiniStatuslineModeVisual               { gui="bold", fg="#0c0c0c", bg="#be95ff", }, -- MiniStatuslineModeVisual 
    MiniTablineCurrent                     { gui="bold", fg="#b6b8bb", bg="#535353", }, -- MiniTablineCurrent 
    MiniTablineHidden                      { fg="#7b7c7e", bg="#252525", }, -- MiniTablineHidden 
    MiniTablineModifiedCurrent             { gui="bold", fg="#535353", bg="#b6b8bb", }, -- MiniTablineModifiedCurrent 
    MiniTablineModifiedHidden              { fg="#252525", bg="#7b7c7e", }, -- MiniTablineModifiedHidden 
    MiniTablineModifiedVisible             { fg="#252525", bg="#b6b8bb", }, -- MiniTablineModifiedVisible 
    MiniTablineTabpagesection              { gui="bold", fg="#f2f4f8", bg="#161616", }, -- MiniTablineTabpagesection 
    MiniTablineVisible                     { fg="#b6b8bb", bg="#252525", }, -- MiniTablineVisible 
    MiniTestEmphasis                       { gui="bold", }, -- MiniTestEmphasis 
    MiniTestFail                           { gui="bold", fg="#ee5396", }, -- MiniTestFail   
    MiniTestPass                           { gui="bold", fg="#25be6a", }, -- MiniTestPass   
    MiniTrailspace                         { bg="#ee5396", }, -- MiniTrailspace 
    ModesCopy                              { bg="#08bdba", }, -- ModesCopy      
    ModesDelete                            { bg="#ee5396", }, -- ModesDelete    
    ModesInsert                            { bg="#33b1ff", }, -- ModesInsert    
    ModesVisual                            { bg="#be95ff", }, -- ModesVisual    
    NeoTreeDirectoryIcon                   { fg="#78a9ff", }, -- NeoTreeDirectoryIcon 
    NeoTreeDirectoryName                   { fg="#78a9ff", }, -- NeoTreeDirectoryName 
    NeoTreeDotfile                         { fg="#6690d9", }, -- NeoTreeDotfile 
    NeoTreeFileName                        { fg="#b6b8bb", }, -- NeoTreeFileName 
    NeoTreeFileNameOpened                  { fg="#f2f4f8", }, -- NeoTreeFileNameOpened 
    NeoTreeGitAdded                        { fg="#25be6a", }, -- NeoTreeGitAdded 
    NeoTreeGitConflict                     { gui="italic", fg="#3ddbd9", }, -- NeoTreeGitConflict 
    NeoTreeGitDeleted                      { fg="#ee5396", }, -- NeoTreeGitDeleted 
    NeoTreeGitIgnored                      { fg="#6e6f70", }, -- NeoTreeGitIgnored 
    NeoTreeGitModified                     { fg="#08bdba", }, -- NeoTreeGitModified 
    NeoTreeGitUntracked                    { fg="#a27fd9", }, -- NeoTreeGitUntracked 
    NeoTreeIndentMarker                    { fg="#535353", }, -- NeoTreeIndentMarker 
    NeoTreeNormal                          { fg="#f2f4f8", bg="#0c0c0c", }, -- NeoTreeNormal  
    NeoTreeNormalNC                        { NeoTreeNormal }, -- NeoTreeNormalNC 
    NeoTreeRootName                        { gui="bold", fg="#3ddbd9", }, -- NeoTreeRootName 
    NeoTreeSymbolicLinkTarget              { fg="#d96b9b", }, -- NeoTreeSymbolicLinkTarget 
    NeogitBranch                           { fg="#be95ff", }, -- NeogitBranch   
    NeogitDiffAdd                          { fg="#25be6a", }, -- NeogitDiffAdd  
    NeogitDiffAddHighlight                 { bg="#172b20", }, -- NeogitDiffAddHighlight 
    NeogitDiffContextHighlight             { bg="#252525", }, -- NeogitDiffContextHighlight 
    NeogitDiffDelete                       { fg="#ee5396", }, -- NeogitDiffDelete 
    NeogitDiffDeleteHighlight              { bg="#311d26", }, -- NeogitDiffDeleteHighlight 
    NeogitHunkHeader                       { fg="#78a9ff", bg="#353535", }, -- NeogitHunkHeader 
    NeogitHunkHeaderHighlight              { fg="#78a9ff", bg="#2a2a2a", }, -- NeogitHunkHeaderHighlight 
    NeogitNotificationError                { fg="#ee5396", }, -- NeogitNotificationError 
    NeogitNotificationInfo                 { fg="#78a9ff", }, -- NeogitNotificationInfo 
    NeogitNotificationWarning              { fg="#be95ff", }, -- NeogitNotificationWarning 
    NeogitRemote                           { fg="#3ddbd9", }, -- NeogitRemote   
    NotifyDEBUGBorder                      { fg="#2a7878", }, -- NotifyDEBUGBorder 
    NotifyDEBUGTitle                       { fg="#3ddbd9", }, -- NotifyDEBUGTitle 
    NotifyDEBUGIcon                        { NotifyDEBUGTitle }, -- NotifyDEBUGIcon 
    NotifyERRORBorder                      { fg="#823456", }, -- NotifyERRORBorder 
    NotifyERRORTitle                       { fg="#ee5396", }, -- NotifyERRORTitle 
    NotifyERRORIcon                        { NotifyERRORTitle }, -- NotifyERRORIcon 
    NotifyINFOBorder                       { fg="#47608a", }, -- NotifyINFOBorder 
    NotifyINFOTitle                        { fg="#78a9ff", }, -- NotifyINFOTitle 
    NotifyINFOIcon                         { NotifyINFOTitle }, -- NotifyINFOIcon 
    NotifyTRACEBorder                      { fg="#535353", }, -- NotifyTRACEBorder 
    NotifyTRACETitle                       { fg="#6e6f70", }, -- NotifyTRACETitle 
    NotifyTRACEIcon                        { NotifyTRACETitle }, -- NotifyTRACEIcon 
    NotifyWARNBorder                       { fg="#6a568a", }, -- NotifyWARNBorder 
    NotifyWARNTitle                        { fg="#be95ff", }, -- NotifyWARNTitle 
    NotifyWARNIcon                         { NotifyWARNTitle }, -- NotifyWARNIcon 
    PounceAccept                           { fg="#161616", bg="#5ae0df", }, -- PounceAccept   
    PounceAcceptBest                       { fg="#161616", bg="#52bdff", }, -- PounceAcceptBest 
    PounceGap                              { fg="#f2f4f8", bg="#2a2a2a", }, -- PounceGap      
    PounceMatch                            { fg="#f2f4f8", bg="#525253", }, -- PounceMatch    
    Sneak                                  { fg="#0c0c0c", bg="#be95ff", }, -- Sneak          
    SneakScope                             { bg="#2a2a2a", }, -- SneakScope     
    WhichKeyFloat                          { bg="#0c0c0c", }, -- WhichKeyFloat  
    WinBar                                 { gui="bold", fg="#7b7c7e", bg="#161616", }, -- WinBar         
    WinBarNC                               { gui="bold", fg="#7b7c7e", bg="#161616", }, -- WinBarNC       
    diffFile                               { fg="#78a9ff", }, -- diffFile       
    diffIndexLine                          { fg="#ff91c1", }, -- diffIndexLine  
    diffNewFile                            { fg="#3ddbd9", }, -- diffNewFile    
    diffOldFile                            { fg="#be95ff", }, -- diffOldFile    
    rainbowcol1                            { fg="#ee5396", }, -- rainbowcol1    
    rainbowcol2                            { fg="#08bdba", }, -- rainbowcol2    
    rainbowcol3                            { fg="#25be6a", }, -- rainbowcol3    
    rainbowcol4                            { fg="#78a9ff", }, -- rainbowcol4    
    rainbowcol5                            { fg="#33b1ff", }, -- rainbowcol5    
    rainbowcol6                            { fg="#be95ff", }, -- rainbowcol6    
    rainbowcol7                            { fg="#ff7eb6", }, -- rainbowcol7    
    rustTSField                            { fg="#b6b8bb", }, -- rustTSField    
    BufferLineDevIconMarkdown              { fg="#519aba", bg="#252525", }, -- BufferLineDevIconMarkdown 
  }
end)


return theme

-- vi:nowrap
