--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    Italic                                 { gui="italic", }, -- Italic         xxx cterm=italic gui=italic
    Bold                                   { gui="bold", }, -- Bold           xxx cterm=bold gui=bold
    BoldItalic                             { gui="bold,italic", }, -- Bold           xxx cterm=bold gui=bold
    Underlined                             { gui="underline", }, -- Underlined     xxx cterm=underline gui=underline
    SpecialKey                             { fg="cyan", }, -- SpecialKey     xxx ctermfg=81 guifg=Cyan
    EndOfBuffer                            { fg="#000000", }, -- EndOfBuffer    
    NvimTreeEndOfBuffer                    { EndOfBuffer }, -- NvimTreeEndOfBuffer xxx links to EndOfBuffer
    DiffviewEndOfBuffer                    { EndOfBuffer }, -- DiffviewEndOfBuffer xxx links to EndOfBuffer
    TermCursor                             { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
    GitSignsAddInline                      { TermCursor }, -- GitSignsAddInline xxx links to TermCursor
    GitSignsDeleteInline                   { TermCursor }, -- GitSignsDeleteInline xxx links to TermCursor
    GitSignsChangeInline                   { TermCursor }, -- GitSignsChangeInline xxx links to TermCursor
    NonText                                { fg="#535353", }, -- NonText        xxx guifg=#535353
    DiffviewNonText                        { NonText }, -- DiffviewNonText xxx links to NonText
    TelescopeResultsDiffUntracked          { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    TelescopePromptCounter                 { NonText }, -- TelescopePromptCounter xxx links to NonText
    TelescopePreviewHyphen                 { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    GitSignsCurrentLineBlame               { NonText }, -- GitSignsCurrentLineBlame xxx links to NonText
    Directory                              { fg="#8cb6ff", }, -- Directory      xxx guifg=#8cb6ff
    DiffviewFolderName                     { Directory }, -- DiffviewFolderName xxx links to Directory
    TelescopePreviewDirectory              { Directory }, -- TelescopePreviewDirectory xxx links to Directory
    TelescopePreviewDate                   { Directory }, -- TelescopePreviewDate xxx links to Directory
    qfFileName                             { Directory }, -- qfFileName     xxx links to Directory
    ErrorMsg                               { fg="#ee5396", }, -- ErrorMsg       xxx guifg=#ee5396
    NvimInvalidSpacing                     { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    IncSearch                              { fg="#2a2a2a", bg="#3ddbd9", }, -- IncSearch      xxx guifg=#2a2a2a guibg=#3ddbd9
    CurSearch                              { IncSearch }, -- CurSearch      xxx links to IncSearch
    MiniSurround                           { IncSearch }, -- MiniSurround   xxx links to IncSearch
    Search                                 { fg="#f2f4f8", bg="#525253", }, -- Search         xxx guifg=#f2f4f8 guibg=#525253
    TelescopePreviewMatch                  { Search }, -- TelescopePreviewMatch xxx links to Search
    TelescopeMatching                      { Search }, -- TelescopeMatching xxx links to Search
    AerialLine                             { Search }, -- AerialLine     xxx links to Search
    FocusedSymbol                          { Search }, -- FocusedSymbol  xxx links to Search
    MoreMsg                                { gui="bold", fg="#78a9ff", }, -- MoreMsg        xxx cterm=bold gui=bold guifg=#78a9ff
    ModeMsg                                { gui="bold", fg="#be95ff", }, -- ModeMsg        xxx cterm=bold gui=bold guifg=#be95ff
    LineNr                                 { fg="#7b7c7e", }, -- LineNr         xxx guifg=#7b7c7e
    LineNrAbove                            { LineNr }, -- LineNrAbove    xxx links to LineNr
    LineNrBelow                            { LineNr }, -- LineNrBelow    xxx links to LineNr
    TelescopeResultsLineNr                 { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
    FidgetTask                             { LineNr }, -- FidgetTask     xxx links to LineNr
    qfLineNr                               { LineNr }, -- qfLineNr       xxx links to LineNr
    CursorLineNr                           { gui="bold", fg="#be95ff", }, -- CursorLineNr   xxx cterm=bold gui=bold guifg=#be95ff
    Question                               { gui="bold", fg="green", }, -- Question       xxx ctermfg=121 gui=bold guifg=Green
    StatusLine                             { fg="#b6b8bb", bg="#0c0c0c", }, -- StatusLine     xxx guifg=#b6b8bb guibg=#0c0c0c
    MsgSeparator                           { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    NvimTreeStatusLine                     { StatusLine }, -- NvimTreeStatusLine xxx links to StatusLine
    DiffviewStatusLine                     { StatusLine }, -- DiffviewStatusLine xxx links to StatusLine
    MiniStatuslineFilename                 { StatusLine }, -- MiniStatuslineFilename xxx links to StatusLine
    StatusLineNC                           { fg="#7b7c7e", bg="#0c0c0c", }, -- StatusLineNC   xxx guifg=#7b7c7e guibg=#0c0c0c
    NvimTreeStatusLineNC                   { StatusLineNC }, -- NvimTreeStatusLineNC xxx links to StatusLineNC
    DiffviewStatusLineNC                   { StatusLineNC }, -- DiffviewStatusLineNC xxx links to StatusLineNC
    MiniStatuslineInactive                 { StatusLineNC }, -- MiniStatuslineInactive xxx links to StatusLineNC
    VertSplit                              { fg="#0c0c0c", }, -- VertSplit      xxx guifg=#0c0c0c
    WinSeparator                           { VertSplit }, -- WinSeparator   xxx links to VertSplit
    NvimTreeVertSplit                      { VertSplit }, -- NvimTreeVertSplit xxx links to VertSplit
    Title                                  { fg="#8cb6ff", }, -- Title          xxx guifg=#8cb6ff
    LspInfoTitle                           { Title }, -- LspInfoTitle   xxx links to Title
    TSTitle                                { Title }, -- TSTitle        xxx links to Title
    DashboardHeader                        { Title }, -- DashboardHeader xxx links to Title
    FidgetTitle                            { Title }, -- FidgetTitle    xxx links to Title
    LspSagaBorderTitle                     { Title }, -- LspSagaBorderTitle xxx links to Title
    LspSagaCodeActionTitle                 { Title }, -- LspSagaCodeActionTitle xxx links to Title
    MiniStarterHeader                      { Title }, -- MiniStarterHeader xxx links to Title
    htmlH1                                 { Title }, -- htmlH1         xxx links to Title
    htmlTitle                              { Title }, -- htmlTitle      xxx links to Title
    Visual                                 { bg="#2a2a2a", }, -- Visual         xxx guibg=#2a2a2a
    VisualNOS                              { Visual }, -- VisualNOS      xxx links to Visual
    TelescopePreviewLine                   { Visual }, -- TelescopePreviewLine xxx links to Visual
    WarningMsg                             { fg="#be95ff", }, -- WarningMsg     xxx guifg=#be95ff
    WildMenu                               { fg="black", bg="yellow", }, -- WildMenu       xxx ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
    Folded                                 { fg="#7b7c7e", bg="#252525", }, -- Folded         xxx guifg=#7b7c7e guibg=#252525
    FoldColumn                             { fg="#7b7c7e", }, -- FoldColumn     xxx guifg=#7b7c7e
    CursorLineFold                         { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
    DiffAdd                                { bg="#172b20", }, -- DiffAdd        xxx guibg=#172b20
    TelescopeResultsDiffAdd                { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    GitSignsAddLn                          { DiffAdd }, -- GitSignsAddLn  xxx links to DiffAdd
    GitSignsAddPreview                     { DiffAdd }, -- GitSignsAddPreview xxx links to DiffAdd
    DiffChange                             { bg="#222833", }, -- DiffChange     xxx guibg=#222833
    TelescopeResultsDiffChange             { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    GitSignsChangeLn                       { DiffChange }, -- GitSignsChangeLn xxx links to DiffChange
    DiffDelete                             { bg="#311d26", }, -- DiffDelete     xxx guibg=#311d26
    TelescopeResultsDiffDelete             { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    GitSignsDeletePreview                  { DiffDelete }, -- GitSignsDeletePreview xxx links to DiffDelete
    GitSignsDeleteVirtLn                   { DiffDelete }, -- GitSignsDeleteVirtLn xxx links to DiffDelete
    DiffText                               { bg="#1c3c50", }, -- DiffText       xxx guibg=#1c3c50
    SignColumn                             { fg="#7b7c7e", }, -- SignColumn     xxx guifg=#7b7c7e
    CursorLineSign                         { SignColumn }, -- CursorLineSign xxx links to SignColumn
    SignColumnSB                           { SignColumn }, -- SignColumnSB   xxx links to SignColumn
    Conceal                                { fg="#535353", }, -- Conceal        xxx guifg=#535353
    NeoTreeDimText                         { Conceal }, -- NeoTreeDimText xxx links to Conceal
    SymbolOutlineConnector                 { Conceal }, -- SymbolOutlineConnector xxx links to Conceal
    SpellBad                               { sp="#ee5396", gui="undercurl", }, -- SpellBad       xxx cterm=undercurl gui=undercurl guisp=#ee5396
    SpellCap                               { sp="#be95ff", gui="undercurl", }, -- SpellCap       xxx cterm=undercurl gui=undercurl guisp=#be95ff
    SpellRare                              { sp="#78a9ff", gui="undercurl", }, -- SpellRare      xxx cterm=undercurl gui=undercurl guisp=#78a9ff
    SpellLocal                             { sp="#78a9ff", gui="undercurl", }, -- SpellLocal     xxx cterm=undercurl gui=undercurl guisp=#78a9ff
    Pmenu                                  { fg="#f2f4f8", bg="#2a2a2a", }, -- Pmenu          xxx guifg=#f2f4f8 guibg=#2a2a2a
    PmenuSel                               { bg="#525253", }, -- PmenuSel       xxx guibg=#525253
    PmenuSbar                              { bg="grey", }, -- PmenuSbar      xxx ctermbg=248 guibg=Grey
    UfoPreviewSbar                         { PmenuSbar }, -- UfoPreviewSbar xxx links to PmenuSbar
    PmenuThumb                             { bg="#525253", }, -- PmenuThumb     xxx guibg=#525253
    UfoPreviewThumb                        { PmenuThumb }, -- UfoPreviewThumb xxx links to PmenuThumb
    TabLine                                { fg="#b6b8bb", bg="#252525", }, -- TabLine        xxx guifg=#b6b8bb guibg=#252525
    TabLineSel                             { fg="#161616", bg="#7b7c7e", }, -- TabLineSel     xxx guifg=#161616 guibg=#7b7c7e
    TabLineFill                            { bg="#0c0c0c", }, -- TabLineFill    xxx guibg=#0c0c0c
    MiniTablineFill                        { TabLineFill }, -- MiniTablineFill xxx links to TabLineFill
    CursorColumn                           { bg="grey40", }, -- CursorColumn   xxx ctermbg=242 guibg=Grey40
    NvimTreeCursorColumn                   { CursorColumn }, -- NvimTreeCursorColumn xxx links to CursorColumn
    CursorLine                             { bg="#353535", }, -- CursorLine     xxx guibg=#353535
    QuickFixLine                           { CursorLine }, -- QuickFixLine   xxx links to CursorLine
    NvimTreeCursorLine                     { CursorLine }, -- NvimTreeCursorLine xxx links to CursorLine
    DiffviewCursorLine                     { CursorLine }, -- DiffviewCursorLine xxx links to CursorLine
    TelescopeSelection                     { CursorLine }, -- TelescopeSelection xxx links to CursorLine
    ColorColumn                            { bg="#252525", }, -- ColorColumn    xxx guibg=#252525
    Whitespace                             { fg="#353535", }, -- Whitespace     xxx guifg=#353535
    NormalNC                               { fg="#f2f4f8", bg="#161616", }, -- NormalNC       xxx guifg=#f2f4f8 guibg=#161616
    NormalFloat                            { fg="#f2f4f8", bg="#0c0c0c", }, -- NormalFloat    xxx guifg=#f2f4f8 guibg=#0c0c0c
    FloatBorder                            { fg="#7b7c7e", }, -- FloatBorder    xxx guifg=#7b7c7e
    DapUIFloatBorder                       { FloatBorder }, -- DapUIFloatBorder xxx links to FloatBorder
    FloatTitle                             { FloatBorder }, -- FloatTitle     xxx links to FloatBorder
    Cursor                                 { fg="#161616", bg="#f2f4f8", }, -- Cursor         xxx guifg=#161616 guibg=#f2f4f8
    CursorIM                               { Cursor }, -- CursorIM       xxx links to Cursor
    RedrawDebugNormal                      { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    RedrawDebugClear                       { bg="yellow", }, -- RedrawDebugClear xxx ctermbg=11 guibg=Yellow
    RedrawDebugComposed                    { bg="green", }, -- RedrawDebugComposed xxx ctermbg=10 guibg=Green
    RedrawDebugRecompose                   { bg="red", }, -- RedrawDebugRecompose xxx ctermbg=9 guibg=Red
    lCursor                                { fg="bg", bg="fg", }, -- lCursor        xxx guifg=bg guibg=fg
    Normal                                 { fg="#f2f4f8", bg="#161616", }, -- Normal         xxx guifg=#f2f4f8 guibg=#161616
    NvimSpacing                            { Normal }, -- NvimSpacing    xxx links to Normal
    NvimTreePopup                          { Normal }, -- NvimTreePopup  xxx links to Normal
    DiffviewSignColumn                     { Normal }, -- DiffviewSignColumn xxx links to Normal
    DiffviewNormal                         { Normal }, -- DiffviewNormal xxx links to Normal
    DapUIFrameName                         { Normal }, -- DapUIFrameName xxx links to Normal
    TelescopeResultsFileIcon               { Normal }, -- TelescopeResultsFileIcon xxx links to Normal
    TelescopeNormal                        { Normal }, -- TelescopeNormal xxx links to Normal
    MiniStarterItem                        { Normal }, -- MiniStarterItem xxx links to Normal
    cssMediaComma                          { Normal }, -- cssMediaComma  xxx links to Normal
    Substitute                             { fg="#161616", bg="#ee5396", }, -- Substitute     xxx guifg=#161616 guibg=#ee5396
    FloatShadow                            { blend=80, bg="black", }, -- FloatShadow    xxx guibg=Black blend=80
    FloatShadowThrough                     { blend=100, bg="black", }, -- FloatShadowThrough xxx guibg=Black blend=100
    Error                                  { fg="#ee5396", }, -- Error          xxx guifg=#ee5396
    NvimInvalid                            { Error }, -- NvimInvalid    xxx links to Error
    luaParenError                          { Error }, -- luaParenError  xxx links to Error
    luaBraceError                          { Error }, -- luaBraceError  xxx links to Error
    luaError                               { Error }, -- luaError       xxx links to Error
    htmlError                              { Error }, -- htmlError      xxx links to Error
    htmlPreError                           { Error }, -- htmlPreError   xxx links to Error
    htmlPreProcAttrError                   { Error }, -- htmlPreProcAttrError xxx links to Error
    javaScriptError                        { Error }, -- javaScriptError xxx links to Error
    vbError                                { Error }, -- vbError        xxx links to Error
    cssError                               { Error }, -- cssError       xxx links to Error
    cssBraceError                          { Error }, -- cssBraceError  xxx links to Error
    cssDeprecated                          { Error }, -- cssDeprecated  xxx links to Error
    markdownError                          { Error }, -- markdownError  xxx links to Error
    Todo                                   { fg="#161616", bg="yellow", }, -- Todo           xxx guifg=#161616 guibg=#78a9ff
    TSTodo                                 { Todo }, -- TSTodo         xxx links to Todo
    luaTodo                                { Todo }, -- luaTodo        xxx links to Todo
    javaScriptCommentTodo                  { Todo }, -- javaScriptCommentTodo xxx links to Todo
    vbTodo                                 { Todo }, -- vbTodo         xxx links to Todo
    String                                 { fg="#66ffbf", }, -- String         xxx guifg=#25be6a
    Character                              { String }, -- Character      xxx links to String
    NvimString                             { String }, -- NvimString     xxx links to String
    DapUIThread                            { String }, -- DapUIThread    xxx links to String
    TSLiteral                              { String }, -- TSLiteral      xxx links to String
    TSString                               { String }, -- TSString       xxx links to String
    TelescopePreviewExecute                { String }, -- TelescopePreviewExecute xxx links to String
    TelescopePreviewSize                   { String }, -- TelescopePreviewSize xxx links to String
    luaString2                             { String }, -- luaString2     xxx links to String
    luaString                              { String }, -- luaString      xxx links to String
    DashboardCenter                        { String }, -- DashboardCenter xxx links to String
    LspSagaCodeActionContent               { String }, -- LspSagaCodeActionContent xxx links to String
    htmlString                             { String }, -- htmlString     xxx links to String
    htmlValue                              { String }, -- htmlValue      xxx links to String
    htmlPreAttr                            { String }, -- htmlPreAttr    xxx links to String
    javaScriptStringD                      { String }, -- javaScriptStringD xxx links to String
    javaScriptStringS                      { String }, -- javaScriptStringS xxx links to String
    javaScriptStringT                      { String }, -- javaScriptStringT xxx links to String
    javaScriptRegexpString                 { String }, -- javaScriptRegexpString xxx links to String
    vbString                               { String }, -- vbString       xxx links to String
    cssStringQ                             { String }, -- cssStringQ     xxx links to String
    cssStringQQ                            { String }, -- cssStringQQ    xxx links to String
    cssAttributeSelector                   { String }, -- cssAttributeSelector xxx links to String
    cssURL                                 { String }, -- cssURL         xxx links to String
    markdownUrlTitle                       { String }, -- markdownUrlTitle xxx links to String
    Constant                               { fg="#5ae0df", }, -- Constant       xxx guifg=#5ae0df
    CmpItemKindEnum                        { Constant }, -- CmpItemKindEnum xxx links to Constant
    CmpItemKindUnit                        { Constant }, -- CmpItemKindUnit xxx links to Constant
    CmpItemKindInterface                   { Constant }, -- CmpItemKindInterface xxx links to Constant
    CmpItemKindEvent                       { Constant }, -- CmpItemKindEvent xxx links to Constant
    TSConstant                             { Constant }, -- TSConstant     xxx links to Constant
    TSAttribute                            { Constant }, -- TSAttribute    xxx links to Constant
    TelescopeResultsConstant               { Constant }, -- TelescopeResultsConstant xxx links to Constant
    TelescopePreviewPipe                   { Constant }, -- TelescopePreviewPipe xxx links to Constant
    TelescopePreviewCharDev                { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    TelescopePreviewBlock                  { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopePreviewRead                   { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewUser                   { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopePreviewGroup                  { Constant }, -- TelescopePreviewGroup xxx links to Constant
    luaConstant                            { Constant }, -- luaConstant    xxx links to Constant
    vbConst                                { Constant }, -- vbConst        xxx links to Constant
    vbDefine                               { Constant }, -- vbDefine       xxx links to Constant
    cssColor                               { Constant }, -- cssColor       xxx links to Constant
    cssFunction                            { Constant }, -- cssFunction    xxx links to Constant
    cssKeyFrameProp                        { Constant }, -- cssKeyFrameProp xxx links to Constant
    cssAttr                                { Constant }, -- cssAttr        xxx links to Constant
    cssPseudoClassLang                     { Constant }, -- cssPseudoClassLang xxx links to Constant
    cssUnicodeRange                        { Constant }, -- cssUnicodeRange xxx links to Constant
    Number                                 { fg="#3ddbd9", }, -- Number         xxx guifg=#3ddbd9
    Boolean                                { Number }, -- Boolean        xxx links to Number
    Float                                  { Number }, -- Float          xxx links to Number
    NvimNumber                             { Number }, -- NvimNumber     xxx links to Number
    DapUILineNumber                        { Number }, -- DapUILineNumber xxx links to Number
    TSNumber                               { Number }, -- TSNumber       xxx links to Number
    TelescopeResultsNumber                 { Number }, -- TelescopeResultsNumber xxx links to Number
    luaNumber                              { Number }, -- luaNumber      xxx links to Number
    vbNumber                               { Number }, -- vbNumber       xxx links to Number
    cssUnitDecorators                      { Number }, -- cssUnitDecorators xxx links to Number
    cssValueInteger                        { Number }, -- cssValueInteger xxx links to Number
    cssValueNumber                         { Number }, -- cssValueNumber xxx links to Number
    cssValueLength                         { Number }, -- cssValueLength xxx links to Number
    cssValueAngle                          { Number }, -- cssValueAngle  xxx links to Number
    cssValueTime                           { Number }, -- cssValueTime   xxx links to Number
    cssValueFrequency                      { Number }, -- cssValueFrequency xxx links to Number
    Function                               { fg="#00b4cc", }, -- Function       xxx guifg=#8cb6ff
    htmlTag                                { Function }, -- htmlTag        xxx links to Function
    DiffviewReference                      { Function }, -- DiffviewReference xxx links to Function
    CmpItemKindFunction                    { Function }, -- CmpItemKindFunction xxx links to Function
    CmpItemKindMethod                      { Function }, -- CmpItemKindMethod xxx links to Function
    CmpItemKindConstructor                 { Function }, -- CmpItemKindConstructor xxx links to Function
    LspInfoList                            { Function }, -- LspInfoList    xxx links to Function
    TSFunction                             { Function }, -- TSFunction     xxx links to Function
    TSMethod                               { Function }, -- TSMethod       xxx links to Function
    TelescopeResultsFunction               { Function }, -- TelescopeResultsFunction xxx links to Function
    TelescopeResultsClass                  { Function }, -- TelescopeResultsClass xxx links to Function
    TelescopeResultsField                  { Function }, -- TelescopeResultsField xxx links to Function
    luaFunction                            { Function }, -- luaFunction    xxx links to Function
    WhichKeyGroup                          { Function }, -- WhichKeyGroup  xxx links to Function
    javaScriptFunction                     { Function }, -- javaScriptFunction xxx links to Function
    javaScriptBraces                       { Function }, -- javaScriptBraces xxx links to Function
    cssClassNameDot                        { Function }, -- cssClassNameDot xxx links to Function
    cssClassName                           { Function }, -- cssClassName   xxx links to Function
    cssIdentifier                          { Function }, -- cssIdentifier  xxx links to Function
    cssFunctionName                        { Function }, -- cssFunctionName xxx links to Function
    cssFunctionComma                       { Function }, -- cssFunctionComma xxx links to Function
    cssBraces                              { Function }, -- cssBraces      xxx links to Function
    Identifier                             { fg="#33b1ff", }, -- Identifier     xxx guifg=#33b1ff
    NvimIdentifier                         { Identifier }, -- NvimIdentifier xxx links to Identifier
    htmlEndTag                             { Identifier }, -- htmlEndTag     xxx links to Identifier
    CmpItemKindKeyword                     { Identifier }, -- CmpItemKindKeyword xxx links to Identifier
    TSParameter                            { Identifier }, -- TSParameter    xxx links to Identifier
    TSSymbol                               { Identifier }, -- TSSymbol       xxx links to Identifier
    TelescopePromptPrefix                  { Identifier }, -- TelescopePromptPrefix xxx links to Identifier
    TelescopeResultsIdentifier             { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    TelescopeMultiIcon                     { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
    luaFunc                                { Identifier }, -- luaFunc        xxx links to Identifier
    DashboardShortCut                      { Identifier }, -- DashboardShortCut xxx links to Identifier
    WhichKey                               { Identifier }, -- WhichKey       xxx links to Identifier
    javaScriptIdentifier                   { Identifier }, -- javaScriptIdentifier xxx links to Identifier
    vbFunction                             { Identifier }, -- vbFunction     xxx links to Identifier
    vbIdentifier                           { Identifier }, -- vbIdentifier   xxx links to Identifier
    Conditional                            { fg="#c8a5ff", }, -- Conditional    xxx guifg=#c8a5ff
    Repeat                                 { Conditional }, -- Repeat         xxx links to Conditional
    Label                                  { Conditional }, -- Label          xxx links to Conditional
    TSConditional                          { Conditional }, -- TSConditional  xxx links to Conditional
    luaElse                                { Conditional }, -- luaElse        xxx links to Conditional
    luaCond                                { Conditional }, -- luaCond        xxx links to Conditional
    javaScriptConditional                  { Conditional }, -- javaScriptConditional xxx links to Conditional
    javaScriptBranch                       { Conditional }, -- javaScriptBranch xxx links to Conditional
    vbConditional                          { Conditional }, -- vbConditional  xxx links to Conditional
    Statement                              { fg="#be95ff", }, -- Statement      xxx guifg=#be95ff
    TelescopePreviewSocket                 { Statement }, -- TelescopePreviewSocket xxx links to Statement
    TelescopePreviewWrite                  { Statement }, -- TelescopePreviewWrite xxx links to Statement
    luaStatement                           { Statement }, -- luaStatement   xxx links to Statement
    javaScriptStatement                    { Statement }, -- javaScriptStatement xxx links to Statement
    vbStatement                            { Statement }, -- vbStatement    xxx links to Statement
    vbKeyword                              { Statement }, -- vbKeyword      xxx links to Statement
    cssTagName                             { Statement }, -- cssTagName     xxx links to Statement
    cssAtRuleLogical                       { Statement }, -- cssAtRuleLogical xxx links to Statement
    htmlStatement                          { Statement }, -- htmlStatement  xxx links to Statement
    Operator                               { fg="#ff669c", Bold }, -- Operator       xxx guifg=#b6b8bb
    NvimAssignment                         { Operator }, -- NvimAssignment xxx links to Operator
    NvimOperator                           { Operator }, -- NvimOperator   xxx links to Operator
    CmpItemKindOperator                    { Operator }, -- CmpItemKindOperator xxx links to Operator
    TelescopeResultsOperator               { Operator }, -- TelescopeResultsOperator xxx links to Operator
    luaIn                                  { Operator }, -- luaIn          xxx links to Operator
    luaOperator                            { Operator }, -- luaOperator    xxx links to Operator
    javaScriptOperator                     { Operator }, -- javaScriptOperator xxx links to Operator
    vbOperator                             { Operator }, -- vbOperator     xxx links to Operator
    Keyword                                { fg="#ff669c", }, -- Keyword        xxx guifg=#be95ff
    Exception                              { Keyword }, -- Exception      xxx links to Keyword
    DapUISource                            { Keyword }, -- DapUISource    xxx links to Keyword
    CmpItemKindValue                       { Keyword }, -- CmpItemKindValue xxx links to Keyword
    CmpItemKindReference                   { Keyword }, -- CmpItemKindReference xxx links to Keyword
    TSKeyword                              { Keyword }, -- TSKeyword      xxx links to Keyword
    TelescopePreviewSticky                 { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
    WhichKeyDesc                           { Keyword }, -- WhichKeyDesc   xxx links to Keyword
    javaScriptNull                         { Keyword }, -- javaScriptNull xxx links to Keyword
    javaScriptMessage                      { Keyword }, -- javaScriptMessage xxx links to Keyword
    javaScriptGlobal                       { Keyword }, -- javaScriptGlobal xxx links to Keyword
    javaScriptMember                       { Keyword }, -- javaScriptMember xxx links to Keyword
    javaScriptReserved                     { Keyword }, -- javaScriptReserved xxx links to Keyword
    PreProc                                { fg="#ff91c1", Italic }, -- PreProc        xxx guifg=#ff91c1
    Include                                { PreProc }, -- Include        xxx links to PreProc
    Define                                 { PreProc }, -- Define         xxx links to PreProc
    Macro                                  { PreProc }, -- Macro          xxx links to PreProc
    PreCondit                              { PreProc }, -- PreCondit      xxx links to PreProc
    DiffviewFolderSign                     { PreProc }, -- DiffviewFolderSign xxx links to PreProc
    TSAnnotation                           { PreProc }, -- TSAnnotation   xxx links to PreProc
    TSPreProc                              { PreProc }, -- TSPreProc      xxx links to PreProc
    htmlPreStmt                            { PreProc }, -- htmlPreStmt    xxx links to PreProc
    htmlPreProc                            { PreProc }, -- htmlPreProc    xxx links to PreProc
    htmlPreProcAttrName                    { PreProc }, -- htmlPreProcAttrName xxx links to PreProc
    htmlHead                               { PreProc }, -- htmlHead       xxx links to PreProc
    vbMethods                              { PreProc }, -- vbMethods      xxx links to PreProc
    vbPreProc                              { PreProc }, -- vbPreProc      xxx links to PreProc
    cssPseudoClassId                       { PreProc }, -- cssPseudoClassId xxx links to PreProc
    cssAtKeyword                           { PreProc }, -- cssAtKeyword   xxx links to PreProc
    cssPagePseudo                          { PreProc }, -- cssPagePseudo  xxx links to PreProc
    markdownRule                           { PreProc }, -- markdownRule   xxx links to PreProc
    Type                                   { fg="#08bdba", }, -- Type           xxx guifg=#08bdba
    StorageClass                           { Type }, -- StorageClass   xxx links to Type
    Structure                              { Type }, -- Structure      xxx links to Type
    Typedef                                { Type }, -- Typedef        xxx links to Type
    NvimNumberPrefix                       { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil                        { Type }, -- NvimOptionSigil xxx links to Type
    htmlArg                                { Type }, -- htmlArg        xxx links to Type
    DapUIType                              { Type }, -- DapUIType      xxx links to Type
    CmpItemKindClass                       { Type }, -- CmpItemKindClass xxx links to Type
    CmpItemKindStruct                      { Type }, -- CmpItemKindStruct xxx links to Type
    LspInfoFiletype                        { Type }, -- LspInfoFiletype xxx links to Type
    TSEnvironmentName                      { Type }, -- TSEnvironmentName xxx links to Type
    TSType                                 { Type }, -- TSType         xxx links to Type
    TSTypeQualifier                        { Type }, -- TSTypeQualifier xxx links to Type
    TelescopeMultiSelection                { Type }, -- TelescopeMultiSelection xxx links to Type
    javaScriptType                         { Type }, -- javaScriptType xxx links to Type
    vbTypes                                { Type }, -- vbTypes        xxx links to Type
    vbTypeSpecifier                        { Type }, -- vbTypeSpecifier xxx links to Type
    markdownId                             { Type }, -- markdownId     xxx links to Type
    Special                                { fg="#8cb6ff", }, -- Special        xxx guifg=#8cb6ff
    Tag                                    { Special }, -- Tag            xxx links to Special
    SpecialChar                            { Special }, -- SpecialChar    xxx links to Special
    Delimiter                              { Special }, -- Delimiter      xxx links to Special
    SpecialComment                         { Special }, -- SpecialComment xxx links to Special
    Debug                                  { Special }, -- Debug          xxx links to Special
    javaScript                             { Special }, -- javaScript     xxx links to Special
    TSMath                                 { Special }, -- TSMath         xxx links to Special
    TelescopePreviewLink                   { Special }, -- TelescopePreviewLink xxx links to Special
    htmlSpecialChar                        { Special }, -- htmlSpecialChar xxx links to Special
    htmlCssDefinition                      { Special }, -- htmlCssDefinition xxx links to Special
    javaScriptSpecial                      { Special }, -- javaScriptSpecial xxx links to Special
    javaScriptEmbed                        { Special }, -- javaScriptEmbed xxx links to Special
    vbEvents                               { Special }, -- vbEvents       xxx links to Special
    cssSelectorOp                          { Special }, -- cssSelectorOp  xxx links to Special
    cssSelectorOp2                         { Special }, -- cssSelectorOp2 xxx links to Special
    cssUnicodeEscape                       { Special }, -- cssUnicodeEscape xxx links to Special
    cssImportant                           { Special }, -- cssImportant   xxx links to Special
    cssCustomProp                          { Special }, -- cssCustomProp  xxx links to Special
    cssAttrComma                           { Special }, -- cssAttrComma   xxx links to Special
    cssMediaType                           { Special }, -- cssMediaType   xxx links to Special
    cssFontDescriptor                      { Special }, -- cssFontDescriptor xxx links to Special
    markdownEscape                         { Special }, -- markdownEscape xxx links to Special
    DiagnosticError                        { fg="#ee5396", }, -- DiagnosticError xxx guifg=#ee5396
    DiagnosticFloatingError                { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticSignError                    { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    NvimTreeLspDiagnosticsError            { DiagnosticError }, -- NvimTreeLspDiagnosticsError xxx links to DiagnosticError
    DiagnosticWarn                         { fg="#be95ff", }, -- DiagnosticWarn xxx guifg=#be95ff
    DiagnosticFloatingWarn                 { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn                     { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    NvimTreeLspDiagnosticsWarning          { DiagnosticWarn }, -- NvimTreeLspDiagnosticsWarning xxx links to DiagnosticWarn
    DiagnosticInfo                         { fg="#78a9ff", }, -- DiagnosticInfo xxx guifg=#78a9ff
    DiagnosticFloatingInfo                 { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo                     { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    NvimTreeLspDiagnosticsInformation      { DiagnosticInfo }, -- NvimTreeLspDiagnosticsInformation xxx links to DiagnosticInfo
    DiagnosticHint                         { fg="#3ddbd9", }, -- DiagnosticHint xxx guifg=#3ddbd9
    DiagnosticFloatingHint                 { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticSignHint                     { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    NvimTreeLspDiagnosticsHint             { DiagnosticHint }, -- NvimTreeLspDiagnosticsHint xxx links to DiagnosticHint
    DiagnosticUnderlineError               { sp="#ee5396", gui="undercurl", }, -- DiagnosticUnderlineError xxx cterm=undercurl gui=undercurl guisp=#ee5396
    DiagnosticUnderlineWarn                { sp="#be95ff", gui="undercurl", }, -- DiagnosticUnderlineWarn xxx cterm=undercurl gui=undercurl guisp=#be95ff
    DiagnosticUnderlineInfo                { sp="#78a9ff", gui="undercurl", }, -- DiagnosticUnderlineInfo xxx cterm=undercurl gui=undercurl guisp=#78a9ff
    DiagnosticUnderlineHint                { sp="#3ddbd9", gui="undercurl", }, -- DiagnosticUnderlineHint xxx cterm=undercurl gui=undercurl guisp=#3ddbd9
    DiagnosticVirtualTextError             { fg="#ee5396", bg="#361f29", }, -- DiagnosticVirtualTextError xxx guifg=#ee5396 guibg=#361f29
    NvimDapVirtualTextError                { DiagnosticVirtualTextError }, -- NvimDapVirtualTextError xxx links to DiagnosticVirtualTextError
    DiagnosticVirtualTextWarn              { fg="#be95ff", bg="#2f2939", }, -- DiagnosticVirtualTextWarn xxx guifg=#be95ff guibg=#2f2939
    NvimDapVirtualTextChanged              { DiagnosticVirtualTextWarn }, -- NvimDapVirtualTextChanged xxx links to DiagnosticVirtualTextWarn
    DiagnosticVirtualTextInfo              { fg="#78a9ff", bg="#252c39", }, -- DiagnosticVirtualTextInfo xxx guifg=#78a9ff guibg=#252c39
    NvimDapVirtualTextInfo                 { DiagnosticVirtualTextInfo }, -- NvimDapVirtualTextInfo xxx links to DiagnosticVirtualTextInfo
    DiagnosticVirtualTextHint              { fg="#3ddbd9", bg="#1c3433", }, -- DiagnosticVirtualTextHint xxx guifg=#3ddbd9 guibg=#1c3433
    MatchParen                             { gui="bold", fg="#be95ff", }, -- MatchParen     xxx cterm=bold gui=bold guifg=#be95ff
    Comment                                { fg="#6e6f70", }, -- Comment        xxx guifg=#6e6f70
    NvimTreeGitIgnored                     { Comment }, -- NvimTreeGitIgnored xxx links to Comment
    DiffviewDiffDelete                     { Comment }, -- DiffviewDiffDelete xxx links to Comment
    DiffviewFilePanelPath                  { Comment }, -- DiffviewFilePanelPath xxx links to Comment
    DiffviewStatusIgnored                  { Comment }, -- DiffviewStatusIgnored xxx links to Comment
    NvimDapVirtualText                     { Comment }, -- NvimDapVirtualText xxx links to Comment
    UfoFoldedEllipsis                      { Comment }, -- UfoFoldedEllipsis xxx links to Comment
    CmpItemMenu                            { Comment }, -- CmpItemMenu    xxx links to Comment
    LspInfoTip                             { Comment }, -- LspInfoTip     xxx links to Comment
    TSComment                              { Comment }, -- TSComment      xxx links to Comment
    TelescopeResultsComment                { Comment }, -- TelescopeResultsComment xxx links to Comment
    luaComment                             { Comment }, -- luaComment     xxx links to Comment
    MiniStarterInactive                    { Comment }, -- MiniStarterInactive xxx links to Comment
    WhichKeySeparator                      { Comment }, -- WhichKeySeparator xxx links to Comment
    WhichKeySeperator                      { Comment }, -- WhichKeySeperator xxx links to Comment
    WhichKeyValue                          { Comment }, -- WhichKeyValue  xxx links to Comment
    htmlComment                            { Comment }, -- htmlComment    xxx links to Comment
    javaScriptLineComment                  { Comment }, -- javaScriptLineComment xxx links to Comment
    javaScriptComment                      { Comment }, -- javaScriptComment xxx links to Comment
    htmlCssStyleComment                    { Comment }, -- htmlCssStyleComment xxx links to Comment
    vbComment                              { Comment }, -- vbComment      xxx links to Comment
    vbLineLabel                            { Comment }, -- vbLineLabel    xxx links to Comment
    vbLineNumber                           { Comment }, -- vbLineNumber   xxx links to Comment
    cssComment                             { Comment }, -- cssComment     xxx links to Comment
    cssVendor                              { Comment }, -- cssVendor      xxx links to Comment
    cssHacks                               { Comment }, -- cssHacks       xxx links to Comment
    markdownBlockquote                     { Comment }, -- markdownBlockquote xxx links to Comment
    htmlLink                               { Underlined }, -- htmlLink       xxx links to Underlined
    Ignore                                 { fg="bg", }, -- Ignore         xxx ctermfg=0 guifg=bg
    NvimInternalError                      { fg="red", bg="red", }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
    NvimFigureBrace                        { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
    NvimSingleQuotedUnknownEscape          { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimInvalidSingleQuotedUnknownEscape   { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
    diffAdded                              { fg="#25be6a", }, -- diffAdded      xxx guifg=#25be6a
    DiffviewFilePanelInsertions            { diffAdded }, -- DiffviewFilePanelInsertions xxx links to diffAdded
    DiffviewStatusAdded                    { diffAdded }, -- DiffviewStatusAdded xxx links to diffAdded
    DiffviewStatusUntracked                { diffAdded }, -- DiffviewStatusUntracked xxx links to diffAdded
    diffLine                               { fg="#5ae0df", }, -- diffLine       xxx guifg=#5ae0df
    NvimTreeImageFile                      { fg="#bebebe", }, -- NvimTreeImageFile xxx guifg=#bebebe
    NvimTreeOpenedFile                     { fg="#ff91c1", }, -- NvimTreeOpenedFile xxx guifg=#ff91c1
    NvimTreeGitDirty                       { fg="#08bdba", }, -- NvimTreeGitDirty xxx guifg=#08bdba
    NvimTreeFileDirty                      { NvimTreeGitDirty }, -- NvimTreeFileDirty xxx links to NvimTreeGitDirty
    NvimTreeGitDeleted                     { fg="#ee5396", }, -- NvimTreeGitDeleted xxx guifg=#ee5396
    NvimTreeGitRenamed                     { NvimTreeGitDeleted }, -- NvimTreeGitRenamed xxx links to NvimTreeGitDeleted
    NvimTreeFileDeleted                    { NvimTreeGitDeleted }, -- NvimTreeFileDeleted xxx links to NvimTreeGitDeleted
    NvimTreeGitMerge                       { fg="#3ddbd9", }, -- NvimTreeGitMerge xxx guifg=#3ddbd9
    NvimTreeFileMerge                      { NvimTreeGitMerge }, -- NvimTreeFileMerge xxx links to NvimTreeGitMerge
    NvimTreeGitNew                         { fg="#25be6a", }, -- NvimTreeGitNew xxx guifg=#25be6a
    NvimTreeFileNew                        { NvimTreeGitNew }, -- NvimTreeFileNew xxx links to NvimTreeGitNew
    NvimTreeWindowPicker                   { gui="bold", fg="#ededed", bg="#4493c8", }, -- NvimTreeWindowPicker xxx gui=bold guifg=#ededed guibg=#4493c8
    NvimTreeLiveFilterPrefix               { gui="bold", fg="#be95ff", }, -- NvimTreeLiveFilterPrefix xxx gui=bold guifg=#be95ff
    NvimTreeLiveFilterValue                { gui="bold", fg="#ffffff", }, -- NvimTreeLiveFilterValue xxx gui=bold guifg=#fff
    NvimTreeBookmark                       { fg="#25be6a", }, -- NvimTreeBookmark xxx guifg=#25be6a
    NvimTreeIndentMarker                   { fg="#535353", }, -- NvimTreeIndentMarker xxx guifg=#535353
    NvimTreeSymlink                        { fg="#d96b9b", }, -- NvimTreeSymlink xxx guifg=#d96b9b
    NvimTreeFolderIcon                     { fg="#78a9ff", }, -- NvimTreeFolderIcon xxx guifg=#78a9ff
    NvimTreeRootFolder                     { gui="bold", fg="#3ddbd9", }, -- NvimTreeRootFolder xxx cterm=bold gui=bold guifg=#3ddbd9
    NvimTreeExecFile                       { gui="bold", fg="#25be6a", }, -- NvimTreeExecFile xxx gui=bold guifg=#25be6a
    NvimTreeSpecialFile                    { fg="#33b1ff", }, -- NvimTreeSpecialFile xxx guifg=#33b1ff
    NvimTreeNormal                         { fg="#f2f4f8", bg="#0c0c0c", }, -- NvimTreeNormal xxx guifg=#f2f4f8 guibg=#0c0c0c
    NvimTreeNormalNC                       { NvimTreeNormal }, -- NvimTreeNormalNC xxx links to NvimTreeNormal
    NvimTreeSignColumn                     { NvimTreeNormal }, -- NvimTreeSignColumn xxx links to NvimTreeNormal
    NvimTreeFolderName                     { fg="#78a9ff", }, -- NvimTreeFolderName xxx guifg=#78a9ff
    NvimTreeEmptyFolderName                { fg="#7b7c7e", }, -- NvimTreeEmptyFolderName xxx guifg=#7b7c7e
    NvimTreeOpenedFolderName               { fg="#8cb6ff", }, -- NvimTreeOpenedFolderName xxx guifg=#8cb6ff
    DevIconCp                              { fg="#519aba", }, -- DevIconCp      xxx ctermfg=67 guifg=#519aba
    DevIconGitAttributes                   { fg="#41535b", }, -- DevIconGitAttributes xxx ctermfg=59 guifg=#41535b
    DevIconSql                             { fg="#dad8d8", }, -- DevIconSql     xxx ctermfg=188 guifg=#dad8d8
    DevIconStyl                            { fg="#8dc149", }, -- DevIconStyl    xxx ctermfg=107 guifg=#8dc149
    DevIconGitConfig                       { fg="#41535b", }, -- DevIconGitConfig xxx ctermfg=59 guifg=#41535b
    DevIconAi                              { fg="#cbcb41", }, -- DevIconAi      xxx ctermfg=185 guifg=#cbcb41
    DevIconGitIgnore                       { fg="#41535b", }, -- DevIconGitIgnore xxx ctermfg=59 guifg=#41535b
    DevIconClojureDart                     { fg="#519aba", }, -- DevIconClojureDart xxx ctermfg=67 guifg=#519aba
    DevIconGitlabCI                        { fg="#e24329", }, -- DevIconGitlabCI xxx ctermfg=166 guifg=#e24329
    DevIconSuo                             { fg="#854cc7", }, -- DevIconSuo     xxx ctermfg=98 guifg=#854CC7
    DevIconCobol                           { fg="#005ca5", }, -- DevIconCobol   xxx ctermfg=25 guifg=#005ca5
    DevIconDefault                         { fg="#6d8086", }, -- DevIconDefault xxx ctermfg=66 guifg=#6d8086
    DevIconGitModules                      { fg="#41535b", }, -- DevIconGitModules xxx ctermfg=59 guifg=#41535b
    DevIconGvimrc                          { fg="#019833", }, -- DevIconGvimrc  xxx ctermfg=29 guifg=#019833
    DevIconIco                             { fg="#cbcb41", }, -- DevIconIco     xxx ctermfg=185 guifg=#cbcb41
    DevIconCMake                           { fg="#6d8086", }, -- DevIconCMake   xxx ctermfg=66 guifg=#6d8086
    DevIconLua                             { fg="#51a0cf", }, -- DevIconLua     xxx ctermfg=74 guifg=#51a0cf
    DevIconNPMIgnore                       { fg="#e8274b", }, -- DevIconNPMIgnore xxx ctermfg=161 guifg=#E8274B
    DevIconIni                             { fg="#6d8086", }, -- DevIconIni     xxx ctermfg=66 guifg=#6d8086
    DevIconTcl                             { fg="#1e5cb3", }, -- DevIconTcl     xxx ctermfg=67 guifg=#1e5cb3
    DevIconMl                              { fg="#e37933", }, -- DevIconMl      xxx ctermfg=173 guifg=#e37933
    DevIconJson5                           { fg="#cbcb41", }, -- DevIconJson5   xxx ctermfg=185 guifg=#cbcb41
    DevIconJl                              { fg="#a270ba", }, -- DevIconJl      xxx ctermfg=133 guifg=#a270ba
    DevIconAwk                             { fg="#4d5a5e", }, -- DevIconAwk     xxx ctermfg=59 guifg=#4d5a5e
    DevIconZshprofile                      { fg="#89e051", }, -- DevIconZshprofile xxx ctermfg=113 guifg=#89e051
    DevIconZshenv                          { fg="#89e051", }, -- DevIconZshenv  xxx ctermfg=113 guifg=#89e051
    DevIconZshrc                           { fg="#89e051", }, -- DevIconZshrc   xxx ctermfg=113 guifg=#89e051
    DevIconKsh                             { fg="#4d5a5e", }, -- DevIconKsh     xxx ctermfg=59 guifg=#4d5a5e
    DevIconBrewfile                        { fg="#701516", }, -- DevIconBrewfile xxx ctermfg=52 guifg=#701516
    DevIconKotlin                          { fg="#f88a02", }, -- DevIconKotlin  xxx ctermfg=208 guifg=#F88A02
    DevIconCMakeLists                      { fg="#6d8086", }, -- DevIconCMakeLists xxx ctermfg=66 guifg=#6d8086
    DevIconKotlinScript                    { fg="#f88a02", }, -- DevIconKotlinScript xxx ctermfg=208 guifg=#F88A02
    DevIconLeex                            { fg="#a074c4", }, -- DevIconLeex    xxx ctermfg=140 guifg=#a074c4
    DevIconGitCommit                       { fg="#41535b", }, -- DevIconGitCommit xxx ctermfg=59 guifg=#41535b
    DevIconEdn                             { fg="#519aba", }, -- DevIconEdn     xxx ctermfg=67 guifg=#519aba
    DevIconLicense                         { fg="#cbcb41", }, -- DevIconLicense xxx ctermfg=185 guifg=#cbcb41
    DevIconVHDL                            { fg="#019833", }, -- DevIconVHDL    xxx ctermfg=29 guifg=#019833
    DevIconDockerfile                      { fg="#384d54", }, -- DevIconDockerfile xxx ctermfg=59 guifg=#384d54
    DevIconCoffee                          { fg="#cbcb41", }, -- DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
    DevIconMakefile                        { fg="#6d8086", }, -- DevIconMakefile xxx ctermfg=66 guifg=#6d8086
    DevIconHaml                            { fg="#eaeae1", }, -- DevIconHaml    xxx ctermfg=188 guifg=#eaeae1
    DevIconTor                             { fg="#519aba", }, -- DevIconTor     xxx ctermfg=67 guifg=#519aba
    DevIconMd                              { fg="#ffffff", }, -- DevIconMd      xxx ctermfg=15 guifg=#ffffff
    DevIconWebpack                         { fg="#519aba", }, -- DevIconWebpack xxx ctermfg=67 guifg=#519aba
    DevIconC                               { fg="#599eff", }, -- DevIconC       xxx ctermfg=75 guifg=#599eff
    DevIconCrystal                         { fg="#000000", }, -- DevIconCrystal xxx ctermfg=16 guifg=#000000
    DevIconRmd                             { fg="#519aba", }, -- DevIconRmd     xxx ctermfg=67 guifg=#519aba
    DevIconConfiguration                   { fg="#ececec", }, -- DevIconConfiguration xxx ctermfg=231 guifg=#ECECEC
    DevIconMdx                             { fg="#519aba", }, -- DevIconMdx     xxx ctermfg=67 guifg=#519aba
    DevIconVagrantfile                     { fg="#1563ff", }, -- DevIconVagrantfile xxx ctermfg=27 guifg=#1563FF
    DevIconGraphQL                         { fg="#e535ab", }, -- DevIconGraphQL xxx ctermfg=199 guifg=#e535ab
    DevIconMjs                             { fg="#f1e05a", }, -- DevIconMjs     xxx ctermfg=221 guifg=#f1e05a
    DevIconCsh                             { fg="#4d5a5e", }, -- DevIconCsh     xxx ctermfg=59 guifg=#4d5a5e
    DevIconVimrc                           { fg="#019833", }, -- DevIconVimrc   xxx ctermfg=29 guifg=#019833
    DevIconD                               { fg="#427819", }, -- DevIconD       xxx ctermfg=64 guifg=#427819
    DevIconFish                            { fg="#4d5a5e", }, -- DevIconFish    xxx ctermfg=59 guifg=#4d5a5e
    DevIconR                               { fg="#358a5b", }, -- DevIconR       xxx ctermfg=65 guifg=#358a5b
    DevIconBat                             { fg="#c1f12e", }, -- DevIconBat     xxx ctermfg=154 guifg=#C1F12E
    DevIconPhp                             { fg="#a074c4", }, -- DevIconPhp     xxx ctermfg=140 guifg=#a074c4
    DevIconCxx                             { fg="#519aba", }, -- DevIconCxx     xxx ctermfg=67 guifg=#519aba
    DevIconSlim                            { fg="#e34c26", }, -- DevIconSlim    xxx ctermfg=166 guifg=#e34c26
    DevIconSvg                             { fg="#ffb13b", }, -- DevIconSvg     xxx ctermfg=215 guifg=#FFB13B
    DevIconSolidity                        { fg="#519aba", }, -- DevIconSolidity xxx ctermfg=67 guifg=#519aba
    DevIconDb                              { fg="#dad8d8", }, -- DevIconDb      xxx ctermfg=188 guifg=#dad8d8
    DevIconEx                              { fg="#a074c4", }, -- DevIconEx      xxx ctermfg=140 guifg=#a074c4
    DevIconNPMrc                           { fg="#e8274b", }, -- DevIconNPMrc   xxx ctermfg=161 guifg=#E8274B
    DevIconDesktopEntry                    { fg="#563d7c", }, -- DevIconDesktopEntry xxx ctermfg=60 guifg=#563d7c
    DevIconDrools                          { fg="#ffafaf", }, -- DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
    DevIconCss                             { fg="#42a5f5", }, -- DevIconCss     xxx ctermfg=39 guifg=#42a5f5
    DevIconCPlusPlus                       { fg="#f34b7d", }, -- DevIconCPlusPlus xxx ctermfg=204 guifg=#f34b7d
    DevIconScss                            { fg="#f55385", }, -- DevIconScss    xxx ctermfg=204 guifg=#f55385
    DevIconGitLogo                         { fg="#f14c28", }, -- DevIconGitLogo xxx ctermfg=202 guifg=#F14C28
    DevIconDropbox                         { fg="#0061fe", }, -- DevIconDropbox xxx ctermfg=27 guifg=#0061FE
    DevIconClojure                         { fg="#8dc149", }, -- DevIconClojure xxx ctermfg=107 guifg=#8dc149
    DevIconSettingsJson                    { fg="#854cc7", }, -- DevIconSettingsJson xxx ctermfg=98 guifg=#854CC7
    DevIconDsStore                         { fg="#41535b", }, -- DevIconDsStore xxx ctermfg=59 guifg=#41535b
    DevIconHbs                             { fg="#f0772b", }, -- DevIconHbs     xxx ctermfg=208 guifg=#f0772b
    DevIconTextResource                    { fg="#cbcb41", }, -- DevIconTextResource xxx ctermfg=185 guifg=#cbcb41
    DevIconVerilog                         { fg="#019833", }, -- DevIconVerilog xxx ctermfg=29 guifg=#019833
    DevIconLog                             { fg="#ffffff", }, -- DevIconLog     xxx ctermfg=15 guifg=#ffffff
    DevIconGulpfile                        { fg="#cc3e44", }, -- DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
    DevIconTs                              { fg="#519aba", }, -- DevIconTs      xxx ctermfg=67 guifg=#519aba
    DevIconEex                             { fg="#a074c4", }, -- DevIconEex     xxx ctermfg=140 guifg=#a074c4
    DevIconTextScene                       { fg="#a074c4", }, -- DevIconTextScene xxx ctermfg=140 guifg=#a074c4
    DevIconHeex                            { fg="#a074c4", }, -- DevIconHeex    xxx ctermfg=140 guifg=#a074c4
    DevIconCsv                             { fg="#89e051", }, -- DevIconCsv     xxx ctermfg=113 guifg=#89e051
    DevIconErl                             { fg="#b83998", }, -- DevIconErl     xxx ctermfg=132 guifg=#B83998
    DevIconJava                            { fg="#cc3e44", }, -- DevIconJava    xxx ctermfg=167 guifg=#cc3e44
    DevIconDump                            { fg="#dad8d8", }, -- DevIconDump    xxx ctermfg=188 guifg=#dad8d8
    DevIconErb                             { fg="#701516", }, -- DevIconErb     xxx ctermfg=52 guifg=#701516
    DevIconExs                             { fg="#a074c4", }, -- DevIconExs     xxx ctermfg=140 guifg=#a074c4
    DevIconLhs                             { fg="#a074c4", }, -- DevIconLhs     xxx ctermfg=140 guifg=#a074c4
    DevIconWebmanifest                     { fg="#f1e05a", }, -- DevIconWebmanifest xxx ctermfg=221 guifg=#f1e05a
    DevIconZsh                             { fg="#89e051", }, -- DevIconZsh     xxx ctermfg=113 guifg=#89e051
    DevIconFavicon                         { fg="#cbcb41", }, -- DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
    DevIconLock                            { fg="#bbbbbb", }, -- DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
    DevIconWebp                            { fg="#a074c4", }, -- DevIconWebp    xxx ctermfg=140 guifg=#a074c4
    DevIconFennel                          { fg="#fff3d7", }, -- DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
    DevIconSwift                           { fg="#e37933", }, -- DevIconSwift   xxx ctermfg=173 guifg=#e37933
    DevIconCson                            { fg="#cbcb41", }, -- DevIconCson    xxx ctermfg=185 guifg=#cbcb41
    DevIconDoc                             { fg="#185abd", }, -- DevIconDoc     xxx ctermfg=25 guifg=#185abd
    DevIconEjs                             { fg="#cbcb41", }, -- DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
    DevIconEpp                             { fg="#ffa61a", }, -- DevIconEpp     xxx guifg=#FFA61A
    DevIconBmp                             { fg="#a074c4", }, -- DevIconBmp     xxx ctermfg=140 guifg=#a074c4
    DevIconFsi                             { fg="#519aba", }, -- DevIconFsi     xxx ctermfg=67 guifg=#519aba
    DevIconXul                             { fg="#e37933", }, -- DevIconXul     xxx ctermfg=173 guifg=#e37933
    DevIconDiff                            { fg="#41535b", }, -- DevIconDiff    xxx ctermfg=59 guifg=#41535b
    DevIconFsx                             { fg="#519aba", }, -- DevIconFsx     xxx ctermfg=67 guifg=#519aba
    DevIconScala                           { fg="#cc3e44", }, -- DevIconScala   xxx ctermfg=167 guifg=#cc3e44
    DevIconYml                             { fg="#6d8086", }, -- DevIconYml     xxx ctermfg=66 guifg=#6d8086
    DevIconGemspec                         { fg="#701516", }, -- DevIconGemspec xxx ctermfg=52 guifg=#701516
    DevIconClojureJS                       { fg="#519aba", }, -- DevIconClojureJS xxx ctermfg=67 guifg=#519aba
    DevIconMli                             { fg="#e37933", }, -- DevIconMli     xxx ctermfg=173 guifg=#e37933
    DevIconEnv                             { fg="#faf743", }, -- DevIconEnv     xxx ctermfg=226 guifg=#faf743
    DevIconMotoko                          { fg="#9772fb", }, -- DevIconMotoko  xxx ctermfg=99 guifg=#9772FB
    DevIconPrisma                          { fg="#ffffff", }, -- DevIconPrisma  xxx ctermfg=15 guifg=#ffffff
    DevIconFs                              { fg="#519aba", }, -- DevIconFs      xxx ctermfg=67 guifg=#519aba
    DevIconTerminal                        { fg="#31b53e", }, -- DevIconTerminal xxx ctermfg=71 guifg=#31B53E
    DevIconGDScript                        { fg="#6d8086", }, -- DevIconGDScript xxx ctermfg=66 guifg=#6d8086
    DevIconConf                            { fg="#6d8086", }, -- DevIconConf    xxx ctermfg=66 guifg=#6d8086
    DevIconSystemVerilog                   { fg="#019833", }, -- DevIconSystemVerilog xxx ctermfg=29 guifg=#019833
    DevIconSass                            { fg="#f55385", }, -- DevIconSass    xxx ctermfg=204 guifg=#f55385
    DevIconLess                            { fg="#563d7c", }, -- DevIconLess    xxx ctermfg=60 guifg=#563d7c
    DevIconGodotProject                    { fg="#6d8086", }, -- DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
    DevIconJson                            { fg="#cbcb41", }, -- DevIconJson    xxx ctermfg=185 guifg=#cbcb41
    DevIconVim                             { fg="#019833", }, -- DevIconVim     xxx ctermfg=29 guifg=#019833
    DevIconMixLock                         { fg="#a074c4", }, -- DevIconMixLock xxx ctermfg=140 guifg=#a074c4
    DevIconGruntfile                       { fg="#e37933", }, -- DevIconGruntfile xxx ctermfg=173 guifg=#e37933
    DevIconOPUS                            { fg="#f88a02", }, -- DevIconOPUS    xxx ctermfg=208 guifg=#F88A02
    DevIconNim                             { fg="#f3d400", }, -- DevIconNim     xxx ctermfg=220 guifg=#f3d400
    DevIconOpenTypeFont                    { fg="#ececec", }, -- DevIconOpenTypeFont xxx ctermfg=231 guifg=#ECECEC
    DevIconCpp                             { fg="#519aba", }, -- DevIconCpp     xxx ctermfg=67 guifg=#519aba
    DevIconToml                            { fg="#6d8086", }, -- DevIconToml    xxx ctermfg=66 guifg=#6d8086
    DevIconGemfile                         { fg="#701516", }, -- DevIconGemfile xxx ctermfg=52 guifg=#701516
    DevIconHh                              { fg="#a074c4", }, -- DevIconHh      xxx ctermfg=140 guifg=#a074c4
    DevIconJsx                             { fg="#519aba", }, -- DevIconJsx     xxx ctermfg=67 guifg=#519aba
    DevIconTsx                             { fg="#519aba", }, -- DevIconTsx     xxx ctermfg=67 guifg=#519aba
    DevIconBash                            { fg="#89e051", }, -- DevIconBash    xxx ctermfg=113 guifg=#89e051
    DevIconPackedResource                  { fg="#6d8086", }, -- DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
    DevIconHtml                            { fg="#e44d26", }, -- DevIconHtml    xxx ctermfg=202 guifg=#e44d26
    DevIconPdf                             { fg="#b30b00", }, -- DevIconPdf     xxx ctermfg=124 guifg=#b30b00
    DevIconVue                             { fg="#8dc149", }, -- DevIconVue     xxx ctermfg=107 guifg=#8dc149
    DevIconBinaryGLTF                      { fg="#ffb13b", }, -- DevIconBinaryGLTF xxx ctermfg=215 guifg=#FFB13B
    DevIconPackageLockJson                 { fg="#7a0d21", }, -- DevIconPackageLockJson xxx guifg=#7a0d21
    DevIconFsharp                          { fg="#519aba", }, -- DevIconFsharp  xxx ctermfg=67 guifg=#519aba
    DevIconHpp                             { fg="#a074c4", }, -- DevIconHpp     xxx ctermfg=140 guifg=#a074c4
    DevIconPl                              { fg="#519aba", }, -- DevIconPl      xxx ctermfg=67 guifg=#519aba
    DevIconHrl                             { fg="#b83998", }, -- DevIconHrl     xxx ctermfg=132 guifg=#B83998
    DevIconElm                             { fg="#519aba", }, -- DevIconElm     xxx ctermfg=67 guifg=#519aba
    DevIconHs                              { fg="#a074c4", }, -- DevIconHs      xxx ctermfg=140 guifg=#a074c4
    DevIconPpt                             { fg="#cb4a32", }, -- DevIconPpt     xxx ctermfg=167 guifg=#cb4a32
    DevIconHtm                             { fg="#e34c26", }, -- DevIconHtm     xxx ctermfg=166 guifg=#e34c26
    DevIconMarkdown                        { fg="#519aba", }, -- DevIconMarkdown xxx ctermfg=67 guifg=#519aba
    DevIconProlog                          { fg="#e4b854", }, -- DevIconProlog  xxx ctermfg=179 guifg=#e4b854
    DevIconNix                             { fg="#7ebae4", }, -- DevIconNix     xxx ctermfg=110 guifg=#7ebae4
    DevIconHxx                             { fg="#a074c4", }, -- DevIconHxx     xxx ctermfg=140 guifg=#a074c4
    DevIconDart                            { fg="#03589c", }, -- DevIconDart    xxx ctermfg=25 guifg=#03589C
    DevIconMustache                        { fg="#e37933", }, -- DevIconMustache xxx ctermfg=173 guifg=#e37933
    DevIconProcfile                        { fg="#a074c4", }, -- DevIconProcfile xxx ctermfg=140 guifg=#a074c4
    DevIconRs                              { fg="#dea584", }, -- DevIconRs      xxx ctermfg=180 guifg=#dea584
    DevIconPromptPs1                       { fg="#4d5a5e", }, -- DevIconPromptPs1 xxx ctermfg=59 guifg=#4d5a5e
    DevIconPsb                             { fg="#519aba", }, -- DevIconPsb     xxx ctermfg=67 guifg=#519aba
    DevIconTwig                            { fg="#8dc149", }, -- DevIconTwig    xxx ctermfg=107 guifg=#8dc149
    DevIconPp                              { fg="#ffa61a", }, -- DevIconPp      xxx guifg=#FFA61A
    DevIconPm                              { fg="#519aba", }, -- DevIconPm      xxx ctermfg=67 guifg=#519aba
    DevIconPsd                             { fg="#519aba", }, -- DevIconPsd     xxx ctermfg=67 guifg=#519aba
    DevIconPy                              { fg="#ffbc03", }, -- DevIconPy      xxx ctermfg=61 guifg=#ffbc03
    DevIconPackageJson                     { fg="#e8274b", }, -- DevIconPackageJson xxx guifg=#e8274b
    DevIconMint                            { fg="#87c095", }, -- DevIconMint    xxx ctermfg=108 guifg=#87c095
    DevIconMaterial                        { fg="#b83998", }, -- DevIconMaterial xxx ctermfg=132 guifg=#B83998
    DevIconPyc                             { fg="#ffe291", }, -- DevIconPyc     xxx ctermfg=67 guifg=#ffe291
    DevIconNodeModules                     { fg="#e8274b", }, -- DevIconNodeModules xxx ctermfg=161 guifg=#E8274B
    DevIconFsscript                        { fg="#519aba", }, -- DevIconFsscript xxx ctermfg=67 guifg=#519aba
    DevIconPyd                             { fg="#ffe291", }, -- DevIconPyd     xxx ctermfg=67 guifg=#ffe291
    DevIconSh                              { fg="#4d5a5e", }, -- DevIconSh      xxx ctermfg=59 guifg=#4d5a5e
    DevIconPyo                             { fg="#ffe291", }, -- DevIconPyo     xxx ctermfg=67 guifg=#ffe291
    DevIconJs                              { fg="#cbcb41", }, -- DevIconJs      xxx ctermfg=185 guifg=#cbcb41
    DevIconRake                            { fg="#701516", }, -- DevIconRake    xxx ctermfg=52 guifg=#701516
    DevIconImportConfiguration             { fg="#ececec", }, -- DevIconImportConfiguration xxx ctermfg=231 guifg=#ECECEC
    DevIconRakefile                        { fg="#701516", }, -- DevIconRakefile xxx ctermfg=52 guifg=#701516
    DevIconRb                              { fg="#701516", }, -- DevIconRb      xxx ctermfg=52 guifg=#701516
    DevIconTex                             { fg="#3d6117", }, -- DevIconTex     xxx ctermfg=58 guifg=#3D6117
    DevIconRlib                            { fg="#dea584", }, -- DevIconRlib    xxx ctermfg=180 guifg=#dea584
    DevIconBabelrc                         { fg="#cbcb41", }, -- DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
    DevIconH                               { fg="#a074c4", }, -- DevIconH       xxx ctermfg=140 guifg=#a074c4
    DevIconZig                             { fg="#f69a1b", }, -- DevIconZig     xxx ctermfg=208 guifg=#f69a1b
    DevIconRproj                           { fg="#358a5b", }, -- DevIconRproj   xxx ctermfg=65 guifg=#358a5b
    DevIconYaml                            { fg="#6d8086", }, -- DevIconYaml    xxx ctermfg=66 guifg=#6d8086
    DevIconGo                              { fg="#519aba", }, -- DevIconGo      xxx ctermfg=67 guifg=#519aba
    DevIconXml                             { fg="#e37933", }, -- DevIconXml     xxx ctermfg=173 guifg=#e37933
    DevIconRss                             { fg="#fb9d3b", }, -- DevIconRss     xxx ctermfg=215 guifg=#FB9D3B
    DevIconXls                             { fg="#207245", }, -- DevIconXls     xxx ctermfg=23 guifg=#207245
    DevIconClojureC                        { fg="#8dc149", }, -- DevIconClojureC xxx ctermfg=107 guifg=#8dc149
    DevIconXcPlayground                    { fg="#e37933", }, -- DevIconXcPlayground xxx ctermfg=173 guifg=#e37933
    DevIconJpg                             { fg="#a074c4", }, -- DevIconJpg     xxx ctermfg=140 guifg=#a074c4
    DevIconJpeg                            { fg="#a074c4", }, -- DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
    DevIconPng                             { fg="#a074c4", }, -- DevIconPng     xxx ctermfg=140 guifg=#a074c4
    DevIconGif                             { fg="#a074c4", }, -- DevIconGif     xxx ctermfg=140 guifg=#a074c4
    DevIconScheme                          { fg="#000000", }, -- DevIconScheme  xxx ctermfg=16 guifg=#000000
    DevIconBashProfile                     { fg="#89e051", }, -- DevIconBashProfile xxx ctermfg=113 guifg=#89e051
    DevIconCs                              { fg="#596706", }, -- DevIconCs      xxx ctermfg=58 guifg=#596706
    DevIconTxt                             { fg="#89e051", }, -- DevIconTxt     xxx ctermfg=113 guifg=#89e051
    DevIconSig                             { fg="#e37933", }, -- DevIconSig     xxx ctermfg=173 guifg=#e37933
    DevIconConfigRu                        { fg="#701516", }, -- DevIconConfigRu xxx ctermfg=52 guifg=#701516
    DevIconBashrc                          { fg="#89e051", }, -- DevIconBashrc  xxx ctermfg=113 guifg=#89e051
    DevIconSln                             { fg="#854cc7", }, -- DevIconSln     xxx ctermfg=98 guifg=#854CC7
    DevIconSvelte                          { fg="#ff3e00", }, -- DevIconSvelte  xxx ctermfg=202 guifg=#ff3e00
    DevIconSml                             { fg="#e37933", }, -- DevIconSml     xxx ctermfg=173 guifg=#e37933
    lualine_a_normal                       { fg="#0b0b0b", bg="#78a9ff", }, -- lualine_a_normal xxx guifg=#0b0b0b guibg=#78a9ff
    lualine_c_normal                       { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_normal xxx guifg=#b6b7ba guibg=#0b0b0b
    lualine_b_normal                       { fg="#b6b7ba", bg="#2b3a54", }, -- lualine_b_normal xxx guifg=#b6b7ba guibg=#2b3a54
    lualine_a_terminal                     { fg="#0b0b0b", bg="#3ddbd9", }, -- lualine_a_terminal xxx guifg=#0b0b0b guibg=#3ddbd9
    lualine_c_terminal                     { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_terminal xxx guifg=#b6b7ba guibg=#0b0b0b
    lualine_b_terminal                     { fg="#b6b7ba", bg="#1a4948", }, -- lualine_b_terminal xxx guifg=#b6b7ba guibg=#1a4948
    lualine_a_inactive                     { fg="#0b0b0b", bg="#7a7b7d", }, -- lualine_a_inactive xxx guifg=#0b0b0b guibg=#7a7b7d
    lualine_c_inactive                     { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_inactive xxx guifg=#b6b7ba guibg=#0b0b0b
    lualine_b_inactive                     { fg="#b6b7ba", bg="#2c2c2d", }, -- lualine_b_inactive xxx guifg=#b6b7ba guibg=#2c2c2d
    lualine_a_command                      { fg="#0b0b0b", bg="#08bdba", }, -- lualine_a_command xxx guifg=#0b0b0b guibg=#08bdba
    lualine_c_command                      { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_command xxx guifg=#b6b7ba guibg=#0b0b0b
    lualine_b_command                      { fg="#b6b7ba", bg="#0a403f", }, -- lualine_b_command xxx guifg=#b6b7ba guibg=#0a403f
    lualine_a_insert                       { fg="#0b0b0b", bg="#25be6a", }, -- lualine_a_insert xxx guifg=#0b0b0b guibg=#25be6a
    lualine_c_insert                       { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_insert xxx guifg=#b6b7ba guibg=#0b0b0b
    lualine_b_insert                       { fg="#b6b7ba", bg="#124027", }, -- lualine_b_insert xxx guifg=#b6b7ba guibg=#124027
    lualine_a_replace                      { fg="#0b0b0b", bg="#ee5396", }, -- lualine_a_replace xxx guifg=#0b0b0b guibg=#ee5396
    lualine_c_replace                      { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_replace xxx guifg=#b6b7ba guibg=#0b0b0b
    lualine_b_replace                      { fg="#b6b7ba", bg="#4f2034", }, -- lualine_b_replace xxx guifg=#b6b7ba guibg=#4f2034
    lualine_a_visual                       { fg="#0b0b0b", bg="#be95ff", }, -- lualine_a_visual xxx guifg=#0b0b0b guibg=#be95ff
    lualine_c_visual                       { fg="#b6b7ba", bg="#0b0b0b", }, -- lualine_c_visual xxx guifg=#b6b7ba guibg=#0b0b0b
    lualine_b_visual                       { fg="#b6b7ba", bg="#403454", }, -- lualine_b_visual xxx guifg=#b6b7ba guibg=#403454
    BufferLineError                        { sp="#ee5396", fg="#6e6f70", bg="#101010", }, -- BufferLineError xxx cterm= gui= guifg=#6e6f70 guibg=#101010 guisp=#ee5396
    BufferLineHintSelected                 { sp="#3ddbd9", gui="bold,italic", fg="#3ddbd9", bg="#161616", }, -- BufferLineHintSelected xxx cterm=bold,italic gui=bold,italic guifg=#3ddbd9 guibg=#161616 guisp=#3ddbd9
    BufferLineBufferVisible                { fg="#b6b8bb", bg="#252525", }, -- BufferLineBufferVisible xxx cterm= gui= guifg=#b6b8bb guibg=#252525
    BufferLineModifiedVisible              { fg="#b6b8bb", bg="#252525", }, -- BufferLineModifiedVisible xxx cterm= gui= guifg=#b6b8bb guibg=#252525
    BufferLineGroupSeparator               { fg="#6e6f70", bg="#0c0c0c", }, -- BufferLineGroupSeparator xxx cterm= gui= guifg=#6e6f70 guibg=#0c0c0c
    BufferLineSeparator                    { fg="#252525", bg="#252525", }, -- BufferLineSeparator xxx cterm= gui= guifg=#252525 guibg=#252525
    BufferLineTabClose                     { fg="#161616", bg="#161616", }, -- BufferLineTabClose xxx cterm= gui= guifg=#161616 guibg=#161616
    BufferLineDuplicateVisible             { gui="underline,italic", fg="#b6b8bb", bg="#252525", }, -- BufferLineDuplicateVisible xxx cterm=underline,italic gui=underline,italic guifg=#b6b8bb guibg=#252525
    BufferLinePickVisible                  { gui="bold,italic", fg="#ee5396", bg="#141414", }, -- BufferLinePickVisible xxx cterm=bold,italic gui=bold,italic guifg=#ee5396 guibg=#141414
    BufferLineBackground                   { fg="#b6b8bb", bg="#252525", }, -- BufferLineBackground xxx cterm= gui= guifg=#b6b8bb guibg=#252525
    BufferLineDuplicate                    { gui="underline,italic", fg="#b6b8bb", bg="#252525", }, -- BufferLineDuplicate xxx cterm=underline,italic gui=underline,italic guifg=#b6b8bb guibg=#252525
    BufferLineModifiedSelected             { fg="#f2f4f8", bg="#161616", }, -- BufferLineModifiedSelected xxx cterm= gui= guifg=#f2f4f8 guibg=#161616
    BufferLineBuffer                       { fg="#6e6f70", bg="#101010", }, -- BufferLineBuffer xxx cterm= gui= guifg=#6e6f70 guibg=#101010
    BufferLineNumbers                      { fg="#6e6f70", bg="#101010", }, -- BufferLineNumbers xxx cterm= gui= guifg=#6e6f70 guibg=#101010
    BufferLineDiagnostic                   { fg="#525354", bg="#101010", }, -- BufferLineDiagnostic xxx cterm= gui= guifg=#525354 guibg=#101010
    BufferLineSeparatorSelected            { fg="#161616", bg="#161616", }, -- BufferLineSeparatorSelected xxx cterm= gui= guifg=#161616 guibg=#161616
    BufferLineInfoDiagnosticSelected       { sp="#5a7ebf", gui="bold,italic", fg="#5a7ebf", bg="#161616", }, -- BufferLineInfoDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#5a7ebf guibg=#161616 guisp=#5a7ebf
    BufferLineFill                         { bg="#252525", }, -- BufferLineFill xxx cterm= gui= guibg=#252525
    BufferLineCloseButton                  { fg="#b6b8bb", bg="#252525", }, -- BufferLineCloseButton xxx cterm= gui= guifg=#b6b8bb guibg=#252525
    BufferLineCloseButtonVisible           { fg="#b6b8bb", bg="#252525", }, -- BufferLineCloseButtonVisible xxx cterm= gui= guifg=#b6b8bb guibg=#252525
    BufferLineTabSelected                  { fg="#f2f4f8", bg="#161616", }, -- BufferLineTabSelected xxx cterm= gui= guifg=#f2f4f8 guibg=#161616
    BufferLineGroupLabel                   { fg="#0c0c0c", bg="#6e6f70", }, -- BufferLineGroupLabel xxx cterm= gui= guifg=#0c0c0c guibg=#6e6f70
    BufferLineCloseButtonSelected          { fg="#f2f4f8", bg="#161616", }, -- BufferLineCloseButtonSelected xxx cterm= gui= guifg=#f2f4f8 guibg=#161616
    BufferLineBufferSelected               { gui="bold,italic", fg="#f2f4f8", bg="#161616", }, -- BufferLineBufferSelected xxx cterm=bold,italic gui=bold,italic guifg=#f2f4f8 guibg=#161616
    BufferLineTab                          { fg="#b6b8bb", bg="#252525", }, -- BufferLineTab  xxx cterm= gui= guifg=#b6b8bb guibg=#252525
    BufferLineNumbersVisible               { fg="#6e6f70", bg="#141414", }, -- BufferLineNumbersVisible xxx cterm= gui= guifg=#6e6f70 guibg=#141414
    BufferLineDiagnosticVisible            { fg="#525354", bg="#141414", }, -- BufferLineDiagnosticVisible xxx cterm= gui= guifg=#525354 guibg=#141414
    BufferLineDiagnosticSelected           { gui="bold,italic", fg="#b5b7ba", bg="#161616", }, -- BufferLineDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#b5b7ba guibg=#161616
    BufferLineSeparatorVisible             { fg="#252525", bg="#252525", }, -- BufferLineSeparatorVisible xxx cterm= gui= guifg=#252525 guibg=#252525
    BufferLineIndicatorSelected            { bg="#161616", }, -- BufferLineIndicatorSelected xxx cterm= gui= guibg=#161616
    BufferLineHintDiagnostic               { sp="#2da4a2", fg="#525354", bg="#101010", }, -- BufferLineHintDiagnostic xxx cterm= gui= guifg=#525354 guibg=#101010 guisp=#2da4a2
    BufferLineHintDiagnosticVisible        { fg="#525354", bg="#141414", }, -- BufferLineHintDiagnosticVisible xxx cterm= gui= guifg=#525354 guibg=#141414
    BufferLineHintDiagnosticSelected       { sp="#2da4a2", gui="bold,italic", fg="#2da4a2", bg="#161616", }, -- BufferLineHintDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#2da4a2 guibg=#161616 guisp=#2da4a2
    BufferLineInfoVisible                  { fg="#6e6f70", bg="#141414", }, -- BufferLineInfoVisible xxx cterm= gui= guifg=#6e6f70 guibg=#141414
    BufferLineInfoSelected                 { sp="#78a9ff", gui="bold,italic", fg="#78a9ff", bg="#161616", }, -- BufferLineInfoSelected xxx cterm=bold,italic gui=bold,italic guifg=#78a9ff guibg=#161616 guisp=#78a9ff
    BufferLineInfoDiagnostic               { sp="#5a7ebf", fg="#525354", bg="#101010", }, -- BufferLineInfoDiagnostic xxx cterm= gui= guifg=#525354 guibg=#101010 guisp=#5a7ebf
    BufferLineInfoDiagnosticVisible        { fg="#525354", bg="#141414", }, -- BufferLineInfoDiagnosticVisible xxx cterm= gui= guifg=#525354 guibg=#141414
    BufferLineModified                     { fg="#b6b8bb", bg="#252525", }, -- BufferLineModified xxx cterm= gui= guifg=#b6b8bb guibg=#252525
    BufferLineWarningVisible               { fg="#6e6f70", bg="#141414", }, -- BufferLineWarningVisible xxx cterm= gui= guifg=#6e6f70 guibg=#141414
    BufferLineWarningSelected              { sp="#be95ff", gui="bold,italic", fg="#be95ff", bg="#161616", }, -- BufferLineWarningSelected xxx cterm=bold,italic gui=bold,italic guifg=#be95ff guibg=#161616 guisp=#be95ff
    BufferLineWarningDiagnostic            { sp="#8e6fbf", fg="#525354", bg="#101010", }, -- BufferLineWarningDiagnostic xxx cterm= gui= guifg=#525354 guibg=#101010 guisp=#8e6fbf
    BufferLineWarningDiagnosticVisible     { fg="#525354", bg="#141414", }, -- BufferLineWarningDiagnosticVisible xxx cterm= gui= guifg=#525354 guibg=#141414
    BufferLineWarningDiagnosticSelected    { sp="#8e6fbf", gui="bold,italic", fg="#8e6fbf", bg="#161616", }, -- BufferLineWarningDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#8e6fbf guibg=#161616 guisp=#8e6fbf
    BufferLineErrorVisible                 { fg="#6e6f70", bg="#141414", }, -- BufferLineErrorVisible xxx cterm= gui= guifg=#6e6f70 guibg=#141414
    BufferLineErrorSelected                { sp="#ee5396", gui="bold,italic", fg="#ee5396", bg="#161616", }, -- BufferLineErrorSelected xxx cterm=bold,italic gui=bold,italic guifg=#ee5396 guibg=#161616 guisp=#ee5396
    BufferLineErrorDiagnostic              { sp="#b23e70", fg="#525354", bg="#101010", }, -- BufferLineErrorDiagnostic xxx cterm= gui= guifg=#525354 guibg=#101010 guisp=#b23e70
    BufferLineErrorDiagnosticVisible       { fg="#525354", bg="#141414", }, -- BufferLineErrorDiagnosticVisible xxx cterm= gui= guifg=#525354 guibg=#141414
    BufferLineErrorDiagnosticSelected      { sp="#b23e70", gui="bold,italic", fg="#b23e70", bg="#161616", }, -- BufferLineErrorDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#b23e70 guibg=#161616 guisp=#b23e70
    BufferLineTabSeparator                 { fg="#0c0c0c", bg="#101010", }, -- BufferLineTabSeparator xxx cterm= gui= guifg=#0c0c0c guibg=#101010
    BufferLineTabSeparatorSelected         { fg="#0c0c0c", bg="#161616", }, -- BufferLineTabSeparatorSelected xxx cterm= gui= guifg=#0c0c0c guibg=#161616
    BufferLineIndicatorVisible             { fg="#141414", bg="#141414", }, -- BufferLineIndicatorVisible xxx cterm= gui= guifg=#141414 guibg=#141414
    BufferLinePickSelected                 { gui="bold,italic", fg="#ee5396", bg="#161616", }, -- BufferLinePickSelected xxx cterm=bold,italic gui=bold,italic guifg=#ee5396 guibg=#161616
    BufferLinePick                         { gui="bold,italic", fg="#ee5396", bg="#101010", }, -- BufferLinePick xxx cterm=bold,italic gui=bold,italic guifg=#ee5396 guibg=#101010
    BufferLineOffsetSeparator              { fg="#0c0c0c", bg="#0c0c0c", }, -- BufferLineOffsetSeparator xxx cterm= gui= guifg=#0c0c0c guibg=#0c0c0c
    BufferLineDuplicateSelected            { gui="underline,italic", fg="#161616", bg="#7b7c7e", }, -- BufferLineDuplicateSelected xxx cterm=underline,italic gui=underline,italic guifg=#161616 guibg=#7b7c7e
    BufferLineInfo                         { sp="#78a9ff", fg="#6e6f70", bg="#101010", }, -- BufferLineInfo xxx cterm= gui= guifg=#6e6f70 guibg=#101010 guisp=#78a9ff
    BufferLineNumbersSelected              { gui="bold,italic", fg="#f2f4f8", bg="#161616", }, -- BufferLineNumbersSelected xxx cterm=bold,italic gui=bold,italic guifg=#f2f4f8 guibg=#161616
    BufferLineWarning                      { sp="#be95ff", fg="#6e6f70", bg="#101010", }, -- BufferLineWarning xxx cterm= gui= guifg=#6e6f70 guibg=#101010 guisp=#be95ff
    BufferLineHintVisible                  { fg="#6e6f70", bg="#141414", }, -- BufferLineHintVisible xxx cterm= gui= guifg=#6e6f70 guibg=#141414
    BufferLineHint                         { sp="#3ddbd9", fg="#6e6f70", bg="#101010", }, -- BufferLineHint xxx cterm= gui= guifg=#6e6f70 guibg=#101010 guisp=#3ddbd9
    GitSignsChange                         { fg="#08bdba", }, -- GitSignsChange xxx guifg=#08bdba
    GitSignsChangeNr                       { GitSignsChange }, -- GitSignsChangeNr xxx links to GitSignsChange
    GitSignsAdd                            { fg="#25be6a", }, -- GitSignsAdd    xxx guifg=#25be6a
    GitSignsAddNr                          { GitSignsAdd }, -- GitSignsAddNr  xxx links to GitSignsAdd
    GitSignsDelete                         { fg="#ee5396", }, -- GitSignsDelete xxx guifg=#ee5396
    GitSignsDeleteNr                       { GitSignsDelete }, -- GitSignsDeleteNr xxx links to GitSignsDelete
    DiffviewDiffAddAsDelete                { bg="#311d26", }, -- DiffviewDiffAddAsDelete xxx guibg=#311d26
    DiffviewPrimary                        { fg="#8cb6ff", }, -- DiffviewPrimary xxx cterm= gui= guifg=#8cb6ff
    DiffviewSecondary                      { fg="#25be6a", }, -- DiffviewSecondary xxx cterm= gui= guifg=#25be6a
    DiffviewFilePanelTitle                 { gui="bold", fg="#c8a5ff", }, -- DiffviewFilePanelTitle xxx cterm=bold gui=bold guifg=#c8a5ff
    DiffviewFilePanelRootPath              { DiffviewFilePanelTitle }, -- DiffviewFilePanelRootPath xxx links to DiffviewFilePanelTitle
    DiffviewFilePanelCounter               { gui="bold", fg="#33b1ff", }, -- DiffviewFilePanelCounter xxx cterm=bold gui=bold guifg=#33b1ff
    DiffviewFilePanelFileName              { fg="#f2f4f8", }, -- DiffviewFilePanelFileName xxx cterm= gui= guifg=#f2f4f8
    DiffviewDim1                           { fg="#6e6f70", }, -- DiffviewDim1   xxx cterm= gui= guifg=#6e6f70
    diffRemoved                            { fg="#ee5396", }, -- diffRemoved    xxx guifg=#ee5396
    DiffviewFilePanelDeletions             { diffRemoved }, -- DiffviewFilePanelDeletions xxx links to diffRemoved
    DiffviewStatusUnknown                  { diffRemoved }, -- DiffviewStatusUnknown xxx links to diffRemoved
    DiffviewStatusDeleted                  { diffRemoved }, -- DiffviewStatusDeleted xxx links to diffRemoved
    DiffviewStatusBroken                   { diffRemoved }, -- DiffviewStatusBroken xxx links to diffRemoved
    diffChanged                            { fg="#08bdba", }, -- diffChanged    xxx guifg=#08bdba
    DiffviewStatusModified                 { diffChanged }, -- DiffviewStatusModified xxx links to diffChanged
    DiffviewStatusRenamed                  { diffChanged }, -- DiffviewStatusRenamed xxx links to diffChanged
    DiffviewStatusCopied                   { diffChanged }, -- DiffviewStatusCopied xxx links to diffChanged
    DiffviewStatusTypeChange               { diffChanged }, -- DiffviewStatusTypeChange xxx links to diffChanged
    DiffviewStatusUnmerged                 { diffChanged }, -- DiffviewStatusUnmerged xxx links to diffChanged
    DapUIVariable                          { fg="#dfdfe0", }, -- DapUIVariable  xxx guifg=#dfdfe0
    DapUIScope                             { fg="#52bdff", }, -- DapUIScope     xxx guifg=#52bdff
    DapUIValue                             { fg="#dfdfe0", }, -- DapUIValue     xxx guifg=#dfdfe0
    DapUIModifiedValue                     { gui="bold", fg="#dfdfe0", }, -- DapUIModifiedValue xxx cterm=bold gui=bold guifg=#dfdfe0
    DapUIDecoration                        { fg="#7b7c7e", }, -- DapUIDecoration xxx guifg=#7b7c7e
    DapUIStoppedThread                     { fg="#52bdff", }, -- DapUIStoppedThread xxx guifg=#52bdff
    DapUIWatchesEmpty                      { fg="#ee5396", }, -- DapUIWatchesEmpty xxx guifg=#ee5396
    DapUIWatchesValue                      { fg="#be95ff", }, -- DapUIWatchesValue xxx guifg=#be95ff
    DapUIWatchesError                      { fg="#ee5396", }, -- DapUIWatchesError xxx guifg=#ee5396
    DapUIBreakpointsPath                   { fg="#52bdff", }, -- DapUIBreakpointsPath xxx guifg=#52bdff
    DapUIBreakpointsInfo                   { fg="#78a9ff", }, -- DapUIBreakpointsInfo xxx guifg=#78a9ff
    DapUIBreakpointsCurrentLine            { gui="bold", fg="#3ddbd9", }, -- DapUIBreakpointsCurrentLine xxx cterm=bold gui=bold guifg=#3ddbd9
    DapUICurrentFrameName                  { DapUIBreakpointsCurrentLine }, -- DapUICurrentFrameName xxx links to DapUIBreakpointsCurrentLine
    DapUIBreakpointsDisabledLine           { fg="#6e6f70", }, -- DapUIBreakpointsDisabledLine xxx guifg=#6e6f70
    DapUIStepOver                          { fg="#00f1f5", }, -- DapUIStepOver  xxx guifg=#00f1f5
    DapUIStepInto                          { fg="#00f1f5", }, -- DapUIStepInto  xxx guifg=#00f1f5
    DapUIStepBack                          { fg="#00f1f5", }, -- DapUIStepBack  xxx guifg=#00f1f5
    DapUIStepOut                           { fg="#00f1f5", }, -- DapUIStepOut   xxx guifg=#00f1f5
    DapUIStop                              { fg="#f70067", }, -- DapUIStop      xxx guifg=#F70067
    DapUIPlayPause                         { fg="#a9ff68", }, -- DapUIPlayPause xxx guifg=#A9FF68
    DapUIRestart                           { fg="#a9ff68", }, -- DapUIRestart   xxx guifg=#A9FF68
    DapUIUnavailable                       { fg="#424242", }, -- DapUIUnavailable xxx guifg=#424242
    UfoFoldedBg                            { bg="#252525", }, -- UfoFoldedBg    xxx guibg=#252525
    UfoPreviewWinBar                       { UfoFoldedBg }, -- UfoPreviewWinBar xxx links to UfoFoldedBg
    UfoFoldedFg                            { fg="#f2f4f8", }, -- UfoFoldedFg    xxx guifg=#f2f4f8
    IndentBlanklineChar                    { gui="nocombine", fg="#353535", }, -- IndentBlanklineChar xxx cterm=nocombine gui=nocombine guifg=#353535
    IndentBlanklineSpaceChar               { gui="nocombine", fg="#353535", }, -- IndentBlanklineSpaceChar xxx cterm=nocombine gui=nocombine guifg=#353535
    IndentBlanklineSpaceCharBlankline      { gui="nocombine", fg="#353535", }, -- IndentBlanklineSpaceCharBlankline xxx cterm=nocombine gui=nocombine guifg=#353535
    IndentBlanklineContextChar             { gui="nocombine", fg="#c8a5ff", }, -- IndentBlanklineContextChar xxx cterm=nocombine gui=nocombine guifg=#c8a5ff
    IndentBlanklineContextStart            { sp="#c8a5ff", gui="underline", }, -- IndentBlanklineContextStart xxx cterm=underline gui=underline guisp=#c8a5ff
    CmpItemAbbr                            { fg="#f2f4f8", }, -- CmpItemAbbr    xxx guifg=#f2f4f8
    CmpItemAbbrDefault                     { fg="#f2f4f8", }, -- CmpItemAbbrDefault xxx guifg=#f2f4f8
    CmpItemAbbrDeprecated                  { gui="strikethrough", fg="#7b7c7e", }, -- CmpItemAbbrDeprecated xxx cterm=strikethrough gui=strikethrough guifg=#7b7c7e
    CmpItemAbbrDeprecatedDefault           { fg="#6e6f70", }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#6e6f70
    CmpItemAbbrMatch                       { fg="#8cb6ff", }, -- CmpItemAbbrMatch xxx guifg=#8cb6ff
    CmpItemAbbrMatchDefault                { fg="#f2f4f8", }, -- CmpItemAbbrMatchDefault xxx guifg=#f2f4f8
    CmpItemAbbrMatchFuzzy                  { fg="#8cb6ff", }, -- CmpItemAbbrMatchFuzzy xxx guifg=#8cb6ff
    CmpItemAbbrMatchFuzzyDefault           { fg="#f2f4f8", }, -- CmpItemAbbrMatchFuzzyDefault xxx guifg=#f2f4f8
    CmpItemKindDefault                     { fg="#8cb6ff", }, -- CmpItemKindDefault xxx guifg=#8cb6ff
    CmpItemKind                            { CmpItemKindDefault }, -- CmpItemKind    xxx links to CmpItemKindDefault
    CmpItemMenuDefault                     { fg="#f2f4f8", }, -- CmpItemMenuDefault xxx guifg=#f2f4f8
    CmpItemKindSnippet                     { fg="#b6b8bb", }, -- CmpItemKindSnippet xxx guifg=#b6b8bb
    TSNone                                 { }, -- TSNone         xxx cterm= gui=
    TSText                                 { TSNone }, -- TSText         xxx links to TSNone
    TSStrong                               { gui="bold", }, -- TSStrong       xxx cterm=bold gui=bold
    TSEmphasis                             { gui="italic", }, -- TSEmphasis     xxx cterm=italic gui=italic
    TSUnderline                            { gui="underline", }, -- TSUnderline    xxx cterm=underline gui=underline
    TSStrike                               { gui="strikethrough", }, -- TSStrike       xxx cterm=strikethrough gui=strikethrough
    TSURI                                  { gui="bold", fg="#33b1ff", }, -- TSURI          xxx cterm=bold gui=bold guifg=#33b1ff
    TSTextReference                        { fg="#be95ff", }, -- TSTextReference xxx guifg=#be95ff
    TSNote                                 { fg="#78a9ff", }, -- TSNote         xxx guifg=#78a9ff
    commentTSNote                          { TSNote }, -- commentTSNote  xxx links to TSNote
    TSWarning                              { fg="#be95ff", }, -- TSWarning      xxx guifg=#be95ff
    commentTSWarning                       { TSWarning }, -- commentTSWarning xxx links to TSWarning
    TSDanger                               { fg="#ee5396", }, -- TSDanger       xxx guifg=#ee5396
    commentTSDanger                        { TSDanger }, -- commentTSDanger xxx links to TSDanger
    TSTypeBuiltin                          { fg="#52bdff", Italic }, -- TSTypeBuiltin  xxx guifg=#52bdff
    TSField                                { fg="#78a9ff", }, -- TSField        xxx guifg=#78a9ff
    CmpItemKindEnumMember                  { TSField }, -- CmpItemKindEnumMember xxx links to TSField
    CmpItemKindTypeParameter               { TSField }, -- CmpItemKindTypeParameter xxx links to TSField
    CmpItemKindField                       { TSField }, -- CmpItemKindField xxx links to TSField
    TSProperty                             { TSField }, -- TSProperty     xxx links to TSField
    luaTSField                             { TSField }, -- luaTSField     xxx links to TSField
    TSConstBuiltin                         { fg="#5ae0df", }, -- TSConstBuiltin xxx guifg=#5ae0df
    luaTSConstBuiltin                      { TSConstBuiltin }, -- luaTSConstBuiltin xxx links to TSConstBuiltin
    TSConstructor                          { fg="#be95ff", }, -- TSConstructor  xxx guifg=#be95ff
    luaTSConstructor                       { TSConstructor }, -- luaTSConstructor xxx links to TSConstructor
    TSFuncBuiltin                          { fg="#99f3ff", Italic }, -- TSFuncBuiltin  xxx guifg=#ee5396
    luaTSFuncBuiltin                       { TSFuncBuiltin }, -- luaTSFuncBuiltin xxx links to TSFuncBuiltin
    TSFuncMacro                            { fg="#ee5396", }, -- TSFuncMacro    xxx guifg=#ee5396
    TSKeywordFunction                      { fg="#ff7039", Bold }, -- TSKeywordFunction xxx guifg=#ee5396
    luaTSKeywordFunction                   { TSKeywordFunction }, -- luaTSKeywordFunction xxx links to TSKeywordFunction
    TSKeywordOperator                      { gui="bold", fg="#b6b8bb", }, -- TSKeywordOperator xxx cterm=bold gui=bold guifg=#b6b8bb
    TSOperator                             { fg="#b6b8bb", }, -- TSOperator     xxx guifg=#b6b8bb
    luaTSOperator                          { TSOperator }, -- luaTSOperator  xxx links to TSOperator
    TSNamespace                            { fg="#52bdff", }, -- TSNamespace    xxx guifg=#52bdff
    CmpItemKindModule                      { TSNamespace }, -- CmpItemKindModule xxx links to TSNamespace
    TSPunctDelimiter                       { fg="#b6b8bb", }, -- TSPunctDelimiter xxx guifg=#b6b8bb
    luaTSPunctDelimiter                    { TSPunctDelimiter }, -- luaTSPunctDelimiter xxx links to TSPunctDelimiter
    commentTSPunctDelimiter                { TSPunctDelimiter }, -- commentTSPunctDelimiter xxx links to TSPunctDelimiter
    TSPunctBracket                         { fg="#b6b8bb", }, -- TSPunctBracket xxx guifg=#b6b8bb
    luaTSPunctBracket                      { TSPunctBracket }, -- luaTSPunctBracket xxx links to TSPunctBracket
    TSPunctSpecial                         { fg="#b6b8bb", }, -- TSPunctSpecial xxx guifg=#b6b8bb
    markdownTSPunctSpecial                 { TSPunctSpecial }, -- markdownTSPunctSpecial xxx links to TSPunctSpecial
    TSStringRegex                          { fg="#2dc7c4", }, -- TSStringRegex  xxx guifg=#2dc7c4
    TSStringEscape                         { gui="bold", fg="#2dc7c4", }, -- TSStringEscape xxx cterm=bold gui=bold guifg=#2dc7c4
    TSVariableBuiltin                      { fg="#ee5396", }, -- TSVariableBuiltin xxx guifg=#ee5396
    TelescopeBorder                        { fg="#535353", }, -- TelescopeBorder xxx guifg=#535353
    TelescopePreviewBorder                 { TelescopeBorder }, -- TelescopePreviewBorder xxx links to TelescopeBorder
    TelescopeTitle                         { TelescopeBorder }, -- TelescopeTitle xxx links to TelescopeBorder
    TelescopePromptBorder                  { TelescopeBorder }, -- TelescopePromptBorder xxx links to TelescopeBorder
    TelescopeResultsBorder                 { TelescopeBorder }, -- TelescopeResultsBorder xxx links to TelescopeBorder
    TelescopeSelectionCaret                { fg="#3ddbd9", }, -- TelescopeSelectionCaret xxx guifg=#3ddbd9
    BufferLineDevIconLuaSelected           { fg="#51a0cf", bg="#161616", }, -- BufferLineDevIconLuaSelected xxx cterm= gui= guifg=#51a0cf guibg=#161616
    TSVariable                             { fg="#ffb966", }, -- TSVariable     xxx guifg=#dfdfe0
    CmpItemKindVariable                    { TSVariable }, -- CmpItemKindVariable xxx links to TSVariable
    luaTSVariable                          { TSVariable }, -- luaTSVariable  xxx links to TSVariable
    BufferLineDevIconLua                   { fg="#51a0cf", bg="#252525", }, -- BufferLineDevIconLua xxx cterm= gui= guifg=#51a0cf guibg=#252525
    BufferLineDevIconLicense               { fg="#cbcb41", bg="#252525", }, -- BufferLineDevIconLicense xxx cterm= gui= guifg=#cbcb41 guibg=#252525
    LspReferenceText                       { bg="#2a2a2a", }, -- LspReferenceText xxx guibg=#2a2a2a
    MiniCursorword                         { LspReferenceText }, -- MiniCursorword xxx links to LspReferenceText
    MiniCursorwordCurrent                  { LspReferenceText }, -- MiniCursorwordCurrent xxx links to LspReferenceText
    illuminatedCurWord                     { LspReferenceText }, -- illuminatedCurWord xxx links to LspReferenceText
    illuminatedWord                        { LspReferenceText }, -- illuminatedWord xxx links to LspReferenceText
    LspReferenceRead                       { bg="#2a2a2a", }, -- LspReferenceRead xxx guibg=#2a2a2a
    LspReferenceWrite                      { bg="#2a2a2a", }, -- LspReferenceWrite xxx guibg=#2a2a2a
    LspCodeLens                            { fg="#6e6f70", }, -- LspCodeLens    xxx guifg=#6e6f70
    LspCodeLensSeparator                   { fg="#7b7c7e", }, -- LspCodeLensSeparator xxx guifg=#7b7c7e
    LspSignatureActiveParameter            { fg="#525253", }, -- LspSignatureActiveParameter xxx guifg=#525253
    TSError                                { fg="#ee5396", }, -- TSError        xxx guifg=#ee5396
    luaTSError                             { TSError }, -- luaTSError     xxx links to TSError
    AerialGuide                            { fg="#535353", }, -- AerialGuide    xxx guifg=#535353
    BufferCurrent                          { fg="#f2f4f8", bg="#7b7c7e", }, -- BufferCurrent  xxx guifg=#f2f4f8 guibg=#7b7c7e
    BufferCurrentIndex                     { fg="#78a9ff", bg="#7b7c7e", }, -- BufferCurrentIndex xxx guifg=#78a9ff guibg=#7b7c7e
    BufferCurrentMod                       { fg="#be95ff", bg="#7b7c7e", }, -- BufferCurrentMod xxx guifg=#be95ff guibg=#7b7c7e
    BufferCurrentSign                      { fg="#78a9ff", bg="#7b7c7e", }, -- BufferCurrentSign xxx guifg=#78a9ff guibg=#7b7c7e
    BufferCurrentTarget                    { fg="#ee5396", bg="#7b7c7e", }, -- BufferCurrentTarget xxx guifg=#ee5396 guibg=#7b7c7e
    BufferInactive                         { fg="#6e6f70", bg="#0c0c0c", }, -- BufferInactive xxx guifg=#6e6f70 guibg=#0c0c0c
    BufferInactiveIndex                    { fg="#6e6f70", bg="#0c0c0c", }, -- BufferInactiveIndex xxx guifg=#6e6f70 guibg=#0c0c0c
    BufferInactiveMod                      { fg="#2f2939", bg="#0c0c0c", }, -- BufferInactiveMod xxx guifg=#2f2939 guibg=#0c0c0c
    BufferInactiveSign                     { fg="#353535", bg="#0c0c0c", }, -- BufferInactiveSign xxx guifg=#353535 guibg=#0c0c0c
    BufferInactiveTarget                   { fg="#ee5396", bg="#0c0c0c", }, -- BufferInactiveTarget xxx guifg=#ee5396 guibg=#0c0c0c
    BufferTabpage                          { fg="#353535", bg="#0c0c0c", }, -- BufferTabpage  xxx guifg=#353535 guibg=#0c0c0c
    BufferTabpages                         { bg="#0c0c0c", }, -- BufferTabpages xxx guibg=#0c0c0c
    BufferVisible                          { fg="#f2f4f8", bg="#0c0c0c", }, -- BufferVisible  xxx guifg=#f2f4f8 guibg=#0c0c0c
    BufferVisibleIndex                     { fg="#78a9ff", bg="#0c0c0c", }, -- BufferVisibleIndex xxx guifg=#78a9ff guibg=#0c0c0c
    BufferVisibleMod                       { fg="#be95ff", bg="#0c0c0c", }, -- BufferVisibleMod xxx guifg=#be95ff guibg=#0c0c0c
    BufferVisibleSign                      { fg="#78a9ff", bg="#0c0c0c", }, -- BufferVisibleSign xxx guifg=#78a9ff guibg=#0c0c0c
    BufferVisibleTarget                    { fg="#ee5396", bg="#0c0c0c", }, -- BufferVisibleTarget xxx guifg=#ee5396 guibg=#0c0c0c
    CmpDocumentation                       { fg="#f2f4f8", bg="#0c0c0c", }, -- CmpDocumentation xxx guifg=#f2f4f8 guibg=#0c0c0c
    CmpDocumentationBorder                 { fg="#2a2a2a", bg="#0c0c0c", }, -- CmpDocumentationBorder xxx guifg=#2a2a2a guibg=#0c0c0c
    CocInlayHint                           { fg="#6e6f70", bg="#252525", }, -- CocInlayHint   xxx guifg=#6e6f70 guibg=#252525
    DashboardFooter                        { gui="italic", fg="#5ae0df", }, -- DashboardFooter xxx cterm=italic gui=italic guifg=#5ae0df
    FernBranchText                         { fg="#78a9ff", }, -- FernBranchText xxx guifg=#78a9ff
    GitGutterAdd                           { fg="#25be6a", }, -- GitGutterAdd   xxx guifg=#25be6a
    GitGutterChange                        { fg="#08bdba", }, -- GitGutterChange xxx guifg=#08bdba
    GitGutterDelete                        { fg="#ee5396", }, -- GitGutterDelete xxx guifg=#ee5396
    GlyphPalette0                          { fg="#282828", }, -- GlyphPalette0  xxx guifg=#282828
    GlyphPalette1                          { fg="#ee5396", }, -- GlyphPalette1  xxx guifg=#ee5396
    GlyphPalette10                         { fg="#46c880", }, -- GlyphPalette10 xxx guifg=#46c880
    GlyphPalette11                         { fg="#2dc7c4", }, -- GlyphPalette11 xxx guifg=#2dc7c4
    GlyphPalette12                         { fg="#8cb6ff", }, -- GlyphPalette12 xxx guifg=#8cb6ff
    GlyphPalette13                         { fg="#c8a5ff", }, -- GlyphPalette13 xxx guifg=#c8a5ff
    GlyphPalette14                         { fg="#52bdff", }, -- GlyphPalette14 xxx guifg=#52bdff
    GlyphPalette15                         { fg="#e4e4e5", }, -- GlyphPalette15 xxx guifg=#e4e4e5
    GlyphPalette2                          { fg="#25be6a", }, -- GlyphPalette2  xxx guifg=#25be6a
    GlyphPalette3                          { fg="#08bdba", }, -- GlyphPalette3  xxx guifg=#08bdba
    GlyphPalette4                          { fg="#78a9ff", }, -- GlyphPalette4  xxx guifg=#78a9ff
    GlyphPalette5                          { fg="#be95ff", }, -- GlyphPalette5  xxx guifg=#be95ff
    GlyphPalette6                          { fg="#33b1ff", }, -- GlyphPalette6  xxx guifg=#33b1ff
    GlyphPalette7                          { fg="#e4e4e5", }, -- GlyphPalette7  xxx guifg=#e4e4e5
    GlyphPalette8                          { fg="#484848", }, -- GlyphPalette8  xxx guifg=#484848
    GlyphPalette9                          { fg="#f16da6", }, -- GlyphPalette9  xxx guifg=#f16da6
    HopNextKey                             { gui="bold", fg="#33b1ff", }, -- HopNextKey     xxx cterm=bold gui=bold guifg=#33b1ff
    HopNextKey1                            { gui="bold", fg="#78a9ff", }, -- HopNextKey1    xxx cterm=bold gui=bold guifg=#78a9ff
    HopNextKey2                            { fg="#6690d9", }, -- HopNextKey2    xxx guifg=#6690d9
    HopUnmatched                           { fg="#6e6f70", }, -- HopUnmatched   xxx guifg=#6e6f70
    LightspeedGreyWash                     { fg="#6e6f70", }, -- LightspeedGreyWash xxx guifg=#6e6f70
    LspFloatWinBorder                      { fg="#7b7c7e", }, -- LspFloatWinBorder xxx guifg=#7b7c7e
    LspFloatWinNormal                      { bg="#0c0c0c", }, -- LspFloatWinNormal xxx guibg=#0c0c0c
    LspInlayHint                           { fg="#6e6f70", bg="#252525", }, -- LspInlayHint   xxx guifg=#6e6f70 guibg=#252525
    LspSagaCodeActionBorder                { fg="#7b7c7e", }, -- LspSagaCodeActionBorder xxx guifg=#7b7c7e
    LspSagaDefPreviewBorder                { fg="#7b7c7e", }, -- LspSagaDefPreviewBorder xxx guifg=#7b7c7e
    LspSagaFinderSelection                 { fg="#2a2a2a", }, -- LspSagaFinderSelection xxx guifg=#2a2a2a
    LspSagaHoverBorder                     { fg="#7b7c7e", }, -- LspSagaHoverBorder xxx guifg=#7b7c7e
    LspSagaRenameBorder                    { fg="#7b7c7e", }, -- LspSagaRenameBorder xxx guifg=#7b7c7e
    LspSagaSignatureHelpBorder             { fg="#ee5396", }, -- LspSagaSignatureHelpBorder xxx guifg=#ee5396
    LspTroubleCount                        { fg="#be95ff", bg="#7b7c7e", }, -- LspTroubleCount xxx guifg=#be95ff guibg=#7b7c7e
    LspTroubleNormal                       { fg="#7b7c7e", bg="#0c0c0c", }, -- LspTroubleNormal xxx guifg=#7b7c7e guibg=#0c0c0c
    LspTroubleText                         { fg="#b6b8bb", }, -- LspTroubleText xxx guifg=#b6b8bb
    MiniCompletionActiveParameter          { gui="underline", }, -- MiniCompletionActiveParameter xxx cterm=underline gui=underline
    MiniIndentscopePrefix                  { gui="nocombine", }, -- MiniIndentscopePrefix xxx cterm=nocombine gui=nocombine
    MiniJump                               { fg="#0c0c0c", bg="#be95ff", }, -- MiniJump       xxx guifg=#0c0c0c guibg=#be95ff
    MiniJump2dSpot                         { gui="bold", fg="#33b1ff", }, -- MiniJump2dSpot xxx cterm=bold gui=bold guifg=#33b1ff
    MiniStarterCurrent                     { gui="nocombine", }, -- MiniStarterCurrent xxx cterm=nocombine gui=nocombine
    MiniStarterFooter                      { gui="italic", fg="#5ae0df", }, -- MiniStarterFooter xxx cterm=italic gui=italic guifg=#5ae0df
    MiniStarterItemBullet                  { fg="#7b7c7e", }, -- MiniStarterItemBullet xxx guifg=#7b7c7e
    MiniStarterItemPrefix                  { fg="#ff7eb6", }, -- MiniStarterItemPrefix xxx guifg=#ff7eb6
    MiniStarterQuery                       { fg="#25be6a", }, -- MiniStarterQuery xxx guifg=#25be6a
    MiniStarterSection                     { fg="#ee5396", }, -- MiniStarterSection xxx guifg=#ee5396
    MiniStatuslineDevinfo                  { fg="#b6b8bb", bg="#252525", }, -- MiniStatuslineDevinfo xxx guifg=#b6b8bb guibg=#252525
    MiniStatuslineFileinfo                 { fg="#b6b8bb", bg="#252525", }, -- MiniStatuslineFileinfo xxx guifg=#b6b8bb guibg=#252525
    MiniStatuslineModeCommand              { gui="bold", fg="#0c0c0c", bg="#08bdba", }, -- MiniStatuslineModeCommand xxx cterm=bold gui=bold guifg=#0c0c0c guibg=#08bdba
    MiniStatuslineModeInsert               { gui="bold", fg="#0c0c0c", bg="#25be6a", }, -- MiniStatuslineModeInsert xxx cterm=bold gui=bold guifg=#0c0c0c guibg=#25be6a
    MiniStatuslineModeNormal               { gui="bold", fg="#0c0c0c", bg="#33b1ff", }, -- MiniStatuslineModeNormal xxx cterm=bold gui=bold guifg=#0c0c0c guibg=#33b1ff
    MiniStatuslineModeOther                { gui="bold", fg="#0c0c0c", bg="#78a9ff", }, -- MiniStatuslineModeOther xxx cterm=bold gui=bold guifg=#0c0c0c guibg=#78a9ff
    MiniStatuslineModeReplace              { gui="bold", fg="#0c0c0c", bg="#ee5396", }, -- MiniStatuslineModeReplace xxx cterm=bold gui=bold guifg=#0c0c0c guibg=#ee5396
    MiniStatuslineModeVisual               { gui="bold", fg="#0c0c0c", bg="#be95ff", }, -- MiniStatuslineModeVisual xxx cterm=bold gui=bold guifg=#0c0c0c guibg=#be95ff
    MiniTablineCurrent                     { gui="bold", fg="#b6b8bb", bg="#535353", }, -- MiniTablineCurrent xxx cterm=bold gui=bold guifg=#b6b8bb guibg=#535353
    MiniTablineHidden                      { fg="#7b7c7e", bg="#252525", }, -- MiniTablineHidden xxx guifg=#7b7c7e guibg=#252525
    MiniTablineModifiedCurrent             { gui="bold", fg="#535353", bg="#b6b8bb", }, -- MiniTablineModifiedCurrent xxx cterm=bold gui=bold guifg=#535353 guibg=#b6b8bb
    MiniTablineModifiedHidden              { fg="#252525", bg="#7b7c7e", }, -- MiniTablineModifiedHidden xxx guifg=#252525 guibg=#7b7c7e
    MiniTablineModifiedVisible             { fg="#252525", bg="#b6b8bb", }, -- MiniTablineModifiedVisible xxx guifg=#252525 guibg=#b6b8bb
    MiniTablineTabpagesection              { gui="bold", fg="#f2f4f8", bg="#161616", }, -- MiniTablineTabpagesection xxx cterm=bold gui=bold guifg=#f2f4f8 guibg=#161616
    MiniTablineVisible                     { fg="#b6b8bb", bg="#252525", }, -- MiniTablineVisible xxx guifg=#b6b8bb guibg=#252525
    MiniTestEmphasis                       { gui="bold", }, -- MiniTestEmphasis xxx cterm=bold gui=bold
    MiniTestFail                           { gui="bold", fg="#ee5396", }, -- MiniTestFail   xxx cterm=bold gui=bold guifg=#ee5396
    MiniTestPass                           { gui="bold", fg="#25be6a", }, -- MiniTestPass   xxx cterm=bold gui=bold guifg=#25be6a
    MiniTrailspace                         { bg="#ee5396", }, -- MiniTrailspace xxx guibg=#ee5396
    ModesCopy                              { bg="#08bdba", }, -- ModesCopy      xxx guibg=#08bdba
    ModesDelete                            { bg="#ee5396", }, -- ModesDelete    xxx guibg=#ee5396
    ModesInsert                            { bg="#33b1ff", }, -- ModesInsert    xxx guibg=#33b1ff
    ModesVisual                            { bg="#be95ff", }, -- ModesVisual    xxx guibg=#be95ff
    NeoTreeDirectoryIcon                   { fg="#78a9ff", }, -- NeoTreeDirectoryIcon xxx guifg=#78a9ff
    NeoTreeDirectoryName                   { fg="#78a9ff", }, -- NeoTreeDirectoryName xxx guifg=#78a9ff
    NeoTreeDotfile                         { fg="#6690d9", }, -- NeoTreeDotfile xxx guifg=#6690d9
    NeoTreeFileName                        { fg="#b6b8bb", }, -- NeoTreeFileName xxx guifg=#b6b8bb
    NeoTreeFileNameOpened                  { fg="#f2f4f8", }, -- NeoTreeFileNameOpened xxx guifg=#f2f4f8
    NeoTreeGitAdded                        { fg="#25be6a", }, -- NeoTreeGitAdded xxx guifg=#25be6a
    NeoTreeGitConflict                     { gui="italic", fg="#3ddbd9", }, -- NeoTreeGitConflict xxx cterm=italic gui=italic guifg=#3ddbd9
    NeoTreeGitDeleted                      { fg="#ee5396", }, -- NeoTreeGitDeleted xxx guifg=#ee5396
    NeoTreeGitIgnored                      { fg="#6e6f70", }, -- NeoTreeGitIgnored xxx guifg=#6e6f70
    NeoTreeGitModified                     { fg="#08bdba", }, -- NeoTreeGitModified xxx guifg=#08bdba
    NeoTreeGitUntracked                    { fg="#a27fd9", }, -- NeoTreeGitUntracked xxx guifg=#a27fd9
    NeoTreeIndentMarker                    { fg="#535353", }, -- NeoTreeIndentMarker xxx guifg=#535353
    NeoTreeNormal                          { fg="#f2f4f8", bg="#0c0c0c", }, -- NeoTreeNormal  xxx guifg=#f2f4f8 guibg=#0c0c0c
    NeoTreeNormalNC                        { NeoTreeNormal }, -- NeoTreeNormalNC xxx links to NeoTreeNormal
    NeoTreeRootName                        { gui="bold", fg="#3ddbd9", }, -- NeoTreeRootName xxx cterm=bold gui=bold guifg=#3ddbd9
    NeoTreeSymbolicLinkTarget              { fg="#d96b9b", }, -- NeoTreeSymbolicLinkTarget xxx guifg=#d96b9b
    NeogitBranch                           { fg="#be95ff", }, -- NeogitBranch   xxx guifg=#be95ff
    NeogitDiffAdd                          { fg="#25be6a", }, -- NeogitDiffAdd  xxx guifg=#25be6a
    NeogitDiffAddHighlight                 { bg="#172b20", }, -- NeogitDiffAddHighlight xxx guibg=#172b20
    NeogitDiffContextHighlight             { bg="#252525", }, -- NeogitDiffContextHighlight xxx guibg=#252525
    NeogitDiffDelete                       { fg="#ee5396", }, -- NeogitDiffDelete xxx guifg=#ee5396
    NeogitDiffDeleteHighlight              { bg="#311d26", }, -- NeogitDiffDeleteHighlight xxx guibg=#311d26
    NeogitHunkHeader                       { fg="#78a9ff", bg="#353535", }, -- NeogitHunkHeader xxx guifg=#78a9ff guibg=#353535
    NeogitHunkHeaderHighlight              { fg="#78a9ff", bg="#2a2a2a", }, -- NeogitHunkHeaderHighlight xxx guifg=#78a9ff guibg=#2a2a2a
    NeogitNotificationError                { fg="#ee5396", }, -- NeogitNotificationError xxx guifg=#ee5396
    NeogitNotificationInfo                 { fg="#78a9ff", }, -- NeogitNotificationInfo xxx guifg=#78a9ff
    NeogitNotificationWarning              { fg="#be95ff", }, -- NeogitNotificationWarning xxx guifg=#be95ff
    NeogitRemote                           { fg="#3ddbd9", }, -- NeogitRemote   xxx guifg=#3ddbd9
    NotifyDEBUGBorder                      { fg="#2a7878", }, -- NotifyDEBUGBorder xxx guifg=#2a7878
    NotifyDEBUGTitle                       { fg="#3ddbd9", }, -- NotifyDEBUGTitle xxx guifg=#3ddbd9
    NotifyDEBUGIcon                        { NotifyDEBUGTitle }, -- NotifyDEBUGIcon xxx links to NotifyDEBUGTitle
    NotifyERRORBorder                      { fg="#823456", }, -- NotifyERRORBorder xxx guifg=#823456
    NotifyERRORTitle                       { fg="#ee5396", }, -- NotifyERRORTitle xxx guifg=#ee5396
    NotifyERRORIcon                        { NotifyERRORTitle }, -- NotifyERRORIcon xxx links to NotifyERRORTitle
    NotifyINFOBorder                       { fg="#47608a", }, -- NotifyINFOBorder xxx guifg=#47608a
    NotifyINFOTitle                        { fg="#78a9ff", }, -- NotifyINFOTitle xxx guifg=#78a9ff
    NotifyINFOIcon                         { NotifyINFOTitle }, -- NotifyINFOIcon xxx links to NotifyINFOTitle
    NotifyTRACEBorder                      { fg="#535353", }, -- NotifyTRACEBorder xxx guifg=#535353
    NotifyTRACETitle                       { fg="#6e6f70", }, -- NotifyTRACETitle xxx guifg=#6e6f70
    NotifyTRACEIcon                        { NotifyTRACETitle }, -- NotifyTRACEIcon xxx links to NotifyTRACETitle
    NotifyWARNBorder                       { fg="#6a568a", }, -- NotifyWARNBorder xxx guifg=#6a568a
    NotifyWARNTitle                        { fg="#be95ff", }, -- NotifyWARNTitle xxx guifg=#be95ff
    NotifyWARNIcon                         { NotifyWARNTitle }, -- NotifyWARNIcon xxx links to NotifyWARNTitle
    PounceAccept                           { fg="#161616", bg="#5ae0df", }, -- PounceAccept   xxx guifg=#161616 guibg=#5ae0df
    PounceAcceptBest                       { fg="#161616", bg="#52bdff", }, -- PounceAcceptBest xxx guifg=#161616 guibg=#52bdff
    PounceGap                              { fg="#f2f4f8", bg="#2a2a2a", }, -- PounceGap      xxx guifg=#f2f4f8 guibg=#2a2a2a
    PounceMatch                            { fg="#f2f4f8", bg="#525253", }, -- PounceMatch    xxx guifg=#f2f4f8 guibg=#525253
    Sneak                                  { fg="#0c0c0c", bg="#be95ff", }, -- Sneak          xxx guifg=#0c0c0c guibg=#be95ff
    SneakScope                             { bg="#2a2a2a", }, -- SneakScope     xxx guibg=#2a2a2a
    WhichKeyFloat                          { bg="#0c0c0c", }, -- WhichKeyFloat  xxx guibg=#0c0c0c
    WinBar                                 { gui="bold", fg="#7b7c7e", bg="#161616", }, -- WinBar         xxx cterm=bold gui=bold guifg=#7b7c7e guibg=#161616
    WinBarNC                               { gui="bold", fg="#7b7c7e", bg="#161616", }, -- WinBarNC       xxx cterm=bold gui=bold guifg=#7b7c7e guibg=#161616
    diffFile                               { fg="#78a9ff", }, -- diffFile       xxx guifg=#78a9ff
    diffIndexLine                          { fg="#ff91c1", }, -- diffIndexLine  xxx guifg=#ff91c1
    diffNewFile                            { fg="#3ddbd9", }, -- diffNewFile    xxx guifg=#3ddbd9
    diffOldFile                            { fg="#be95ff", }, -- diffOldFile    xxx guifg=#be95ff
    rainbowcol1                            { fg="#ee5396", }, -- rainbowcol1    xxx guifg=#ee5396
    rainbowcol2                            { fg="#08bdba", }, -- rainbowcol2    xxx guifg=#08bdba
    rainbowcol3                            { fg="#25be6a", }, -- rainbowcol3    xxx guifg=#25be6a
    rainbowcol4                            { fg="#78a9ff", }, -- rainbowcol4    xxx guifg=#78a9ff
    rainbowcol5                            { fg="#33b1ff", }, -- rainbowcol5    xxx guifg=#33b1ff
    rainbowcol6                            { fg="#be95ff", }, -- rainbowcol6    xxx guifg=#be95ff
    rainbowcol7                            { fg="#ff7eb6", }, -- rainbowcol7    xxx guifg=#ff7eb6
    rustTSField                            { fg="#b6b8bb", }, -- rustTSField    xxx guifg=#b6b8bb
    BufferLineDevIconMarkdown              { fg="#519aba", bg="#252525", }, -- BufferLineDevIconMarkdown xxx cterm= gui= guifg=#519aba guibg=#252525
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
