#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'


require_relative "ast.rb"

class SyntacticError < RuntimeError

	def initialize(token)
		@token = token
	end

	def to_s
		"ERROR: unexpected token '#{@token.type}' at line #{@token.locationinfo[:line]}, column #{@token.locationinfo[:column]}"
	end

end

class Parser < Racc::Parser

module_eval(<<'...end parser.y/module_eval...', 'parser.y', 205)

def initialize(lexer)
    @lexer = lexer
end

def on_error(id, token, stack)
    raise SyntacticError::new(token)
end

def next_token
    if @lexer.has_next_token then
        token = @lexer.next_token;
        return [token.type,token]
    else
        return nil
    end
end

def parse
    do_parse
end
...end parser.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    63,   138,    45,    46,    43,    44,    39,    45,    46,    43,
    44,    47,    45,    46,    43,    44,    47,    45,    46,    43,
    44,    47,     3,    68,    68,    62,    47,   137,   150,    50,
    49,    38,   155,   156,    50,    49,   151,     4,    31,    50,
    49,    69,    70,    71,    50,    49,    67,    93,    51,    52,
    53,    61,    48,    51,    52,    53,    37,    48,    51,    52,
    53,    40,    48,    51,    52,    53,    55,    48,    45,    46,
    43,    44,    56,    45,    46,    43,    44,    47,    45,    46,
    43,    44,    47,    45,    46,    43,    44,    47,    69,    70,
    71,    59,    47,    66,    92,    50,    49,    22,    97,   125,
    50,    49,   126,   130,   134,    50,    49,   136,   140,   nil,
    50,    49,   nil,   nil,    51,    52,    53,   nil,    48,    51,
    52,    53,   nil,    48,    51,    52,    53,   nil,    48,    51,
    52,    53,   nil,    48,    45,    46,    43,    44,   nil,    45,
    46,    43,    44,    47,    45,    46,    43,    44,    47,    45,
    46,    43,    44,    47,   nil,   nil,   nil,   nil,    47,   nil,
   nil,    50,    49,   nil,   nil,   nil,    50,    49,   nil,   nil,
   nil,    50,    49,   nil,   nil,   nil,    50,    49,   nil,   nil,
    51,    52,    53,   nil,    48,    51,    52,    53,   nil,    48,
    51,    52,    53,   nil,    48,    51,    52,    53,   nil,    48,
    45,    46,    43,    44,   nil,    45,    46,    43,    44,    47,
    45,    46,    43,    44,    47,    45,    46,    43,    44,    47,
   nil,   nil,   nil,   nil,    47,   nil,   nil,    50,    49,   nil,
   nil,   nil,    50,    49,   nil,   nil,   nil,    50,    49,   nil,
   nil,   nil,    50,    49,   nil,   nil,    51,    52,    53,   nil,
    48,    51,    52,    53,   nil,    48,    51,    52,    53,   nil,
    48,    51,    52,    53,   nil,    48,    45,    46,    43,    44,
   nil,    45,    46,    43,    44,    47,    45,    46,    43,    44,
    47,    45,    46,    43,    44,    47,   nil,   nil,   nil,   nil,
    47,   nil,   nil,    50,    49,   nil,   nil,   nil,    50,    49,
   nil,   nil,   nil,    50,    49,   nil,   nil,   nil,    50,    49,
   nil,   nil,    51,    52,    53,   nil,    48,    51,    52,    53,
   nil,    48,    51,    52,    53,   nil,    48,    51,    52,    53,
   nil,    48,    45,    46,    43,    44,   nil,    45,    46,    43,
    44,    47,    45,    46,    43,    44,    47,    45,    46,    43,
    44,    47,   nil,   nil,   nil,   nil,    47,   nil,   nil,    50,
    49,   nil,   nil,   nil,    50,    49,   nil,   nil,   nil,    50,
    49,   nil,   nil,   nil,    50,    49,   nil,   nil,    51,    52,
    53,   nil,    48,    51,    52,    53,   nil,    48,    51,    52,
    53,   nil,    48,    51,    52,    53,   nil,    48,    45,    46,
    43,    44,   nil,    45,    46,    43,    44,    47,    45,    46,
    43,    44,    47,    45,    46,    43,    44,    47,   nil,   nil,
   nil,   nil,    47,   nil,   nil,    50,    49,   nil,   nil,   nil,
    50,    49,   nil,   nil,   nil,    50,    49,   nil,   nil,   nil,
    50,    49,   nil,   nil,    51,    52,    53,   nil,    48,    51,
    52,    53,   nil,    48,    51,    52,    53,   nil,    48,    51,
    52,    53,   nil,    48,    45,    46,    43,    44,   nil,    45,
    46,    43,    44,    47,    45,    46,    43,    44,    47,    45,
    46,    43,    44,    47,   nil,   nil,   nil,   nil,    47,   nil,
   nil,    50,    49,   nil,   nil,   nil,    50,    49,   nil,   nil,
   nil,    50,    49,   nil,   nil,   nil,    50,    49,   nil,   nil,
    51,    52,    53,   nil,    48,    51,    52,    53,   nil,    48,
    51,    52,    53,   nil,    48,    51,    52,    53,   nil,    48,
    45,    46,    43,    44,   nil,    45,    46,    43,    44,    47,
    45,    46,    43,    44,    47,    45,    46,    43,    44,    47,
   nil,   nil,   nil,   nil,    47,   nil,   nil,    50,    49,   nil,
   nil,   nil,    50,    49,   nil,   nil,   nil,    50,    49,   nil,
   nil,   nil,    50,    49,   nil,   nil,    51,    52,    53,   nil,
    48,    51,    52,    53,   nil,    48,    51,    52,    53,   nil,
    48,    51,    52,    53,   nil,    48,    45,    46,    43,    44,
   nil,    45,    46,    43,    44,    47,    45,    46,    43,    44,
    47,    45,    46,    43,    44,    47,   nil,   nil,   nil,   nil,
    47,   nil,   nil,    50,    49,   nil,   nil,   nil,    50,    49,
   nil,   nil,   nil,    50,    49,   nil,   nil,   nil,    50,    49,
   nil,   nil,    51,    52,    53,   nil,    48,    51,    52,    53,
   nil,    48,    51,    52,    53,   nil,    48,    51,    52,    53,
   nil,    48,    69,    70,    71,    72,    73,    74,    75,    76,
    77,    78,    79,    80,    81,    82,    83,    84,    85,    86,
    69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
    79,    80,    81,    82,    83,    84,    85,    86,     3,     7,
    26,   nil,    27,    28,   nil,   nil,   101,   nil,   nil,    30,
   nil,    29,    23,    24,    25,   nil,   nil,   nil,   nil,    22,
    11,    10,    12,   nil,   128,    69,    70,    71,    72,    73,
    74,    75,    76,    77,    78,    79,    80,    81,    82,    83,
    84,    85,    86,    69,    70,    71,    72,    73,    74,    75,
    76,    77,    78,    79,    80,    81,    82,    83,    84,    85,
    86,     3,    33,    26,   nil,    27,    28,   nil,   nil,   133,
   nil,   nil,    30,   nil,    29,    23,    24,    25,   nil,   nil,
   nil,   nil,    22,    11,    10,    12,   nil,   146,    69,    70,
    71,    72,    73,    74,    75,    76,    77,    78,    79,    80,
    81,    82,    83,    84,    85,    86,    69,    70,    71,    72,
    73,    74,    75,    76,    77,    78,    79,    80,    81,    82,
    83,    84,    85,    86,    69,    70,    71,    72,    73,   nil,
   nil,   nil,   152,    69,    70,    71,    72,    73,   149,    69,
    70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
    80,    81,    82,    83,    84,    85,    86,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   102,   nil,   nil,   nil,   nil,    96,
    69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
    79,    80,    81,    82,    83,    84,    85,    86,   129,   nil,
   nil,   nil,   nil,   nil,    69,    70,    71,    72,    73,    74,
    75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
    85,    86,   131,   nil,   nil,   nil,   nil,   nil,    69,    70,
    71,    72,    73,    74,    75,    76,    77,    78,    79,    80,
    81,    82,    83,    84,    85,    86,     3,    35,    26,   nil,
    27,    28,   nil,   nil,   nil,   nil,   nil,    30,   nil,    29,
    23,    24,    25,   nil,     3,   nil,    26,    22,    27,    28,
   nil,   nil,   nil,   nil,   nil,    30,   nil,    29,    23,    24,
    25,   nil,     3,    60,    26,    22,    27,    28,   nil,   nil,
   nil,   nil,   nil,    30,   nil,    29,    23,    24,    25,   nil,
     3,   nil,    26,    22,    27,    28,   nil,   nil,   nil,   nil,
   nil,    30,   nil,    29,    23,    24,    25,   nil,     3,   nil,
    26,    22,    27,    28,   nil,   nil,   nil,   nil,   nil,    30,
   nil,    29,    23,    24,    25,   nil,     3,   nil,    26,    22,
    27,    28,   nil,   nil,   nil,   nil,   nil,    30,   nil,    29,
    23,    24,    25,   nil,     3,   nil,    26,    22,    27,    28,
   nil,   nil,   nil,   nil,   nil,    30,   nil,    29,    23,    24,
    25,   nil,     3,   nil,    26,    22,    27,    28,   nil,   nil,
   nil,   nil,   nil,    30,   nil,    29,    23,    24,    25,   nil,
     3,   nil,    26,    22,    27,    28,   nil,   nil,   nil,   nil,
   nil,    30,   nil,    29,    23,    24,    25,   nil,   nil,   nil,
   nil,    22,    69,    70,    71,    72,    73,    74,    75,    76,
    77,    78,    79,    80,    81,    82,    83,    84,    85,    86,
   nil,   nil,   123,    69,    70,    71,    72,    73,    74,    75,
    76,    77,    78,    79,    80,    81,    82,    83,    84,    85,
    86,   nil,   nil,   127,    69,    70,    71,    72,    73,    74,
    75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
    85,    86,   nil,   nil,   143,    69,    70,    71,    72,    73,
    74,    75,    76,    77,    78,    79,    80,    81,    82,    83,
    84,    85,    86,   nil,   nil,   148,    69,    70,    71,    72,
    73,    74,    75,    76,    77,    78,    79,    80,    81,    82,
    83,    84,    85,    86,    69,    70,    71,    72,    73,    74,
    75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
    85,    86,    69,    70,    71,    72,    73,    74,    75,    76,
    77,    78,    79,    80,    81,    82,    83,    84,    85,    69,
    70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
    80,    81,    82,    83,    84,    69,    70,    71,    72,    73,
    74,    75,    76,    77,    78,    79,    80,    81,    82,    83,
    69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
    79,    80,    81,    82,    69,    70,    71,    72,    73,    74,
    75,    76,    77,    78,    79,    80,    81,    69,    70,    71,
    72,    73,    74,    75,   -71,   -71,   -71,   -71,    69,    70,
    71,    72,    73,    74,    75,   -71,   -71,   -71,   -71,    69,
    70,    71,    72,    73,    74,    75,   -71,   -71,   -71,   -71,
    69,    70,    71,    72,    73,    74,    75,   -71,   -71,   -71,
   -71,    69,    70,    71,    72,    73,    74,    75,    76,    77,
    78,    79,    69,    70,    71,    72,    73,    74,    75,    76,
    77,    78,    79 ]

racc_action_check = [
    37,   129,    24,    24,    24,    24,    22,    25,    25,    25,
    25,    24,    28,    28,    28,    28,    25,    38,    38,    38,
    38,    28,     0,    41,    54,    37,    38,   129,   143,    24,
    24,    22,   149,   149,    25,    25,   143,     1,     4,    28,
    28,   107,   107,   107,    38,    38,    41,    54,    24,    24,
    24,    37,    24,    25,    25,    25,     9,    25,    28,    28,
    28,    23,    28,    38,    38,    38,    26,    38,    39,    39,
    39,    39,    27,    43,    43,    43,    43,    39,    44,    44,
    44,    44,    43,    45,    45,    45,    45,    44,   108,   108,
   108,    30,    45,    40,    48,    39,    39,    56,    58,    96,
    43,    43,    97,   102,   125,    44,    44,   127,   132,   nil,
    45,    45,   nil,   nil,    39,    39,    39,   nil,    39,    43,
    43,    43,   nil,    43,    44,    44,    44,   nil,    44,    45,
    45,    45,   nil,    45,    46,    46,    46,    46,   nil,    47,
    47,    47,    47,    46,    55,    55,    55,    55,    47,    59,
    59,    59,    59,    55,   nil,   nil,   nil,   nil,    59,   nil,
   nil,    46,    46,   nil,   nil,   nil,    47,    47,   nil,   nil,
   nil,    55,    55,   nil,   nil,   nil,    59,    59,   nil,   nil,
    46,    46,    46,   nil,    46,    47,    47,    47,   nil,    47,
    55,    55,    55,   nil,    55,    59,    59,    59,   nil,    59,
    62,    62,    62,    62,   nil,    63,    63,    63,    63,    62,
    68,    68,    68,    68,    63,    69,    69,    69,    69,    68,
   nil,   nil,   nil,   nil,    69,   nil,   nil,    62,    62,   nil,
   nil,   nil,    63,    63,   nil,   nil,   nil,    68,    68,   nil,
   nil,   nil,    69,    69,   nil,   nil,    62,    62,    62,   nil,
    62,    63,    63,    63,   nil,    63,    68,    68,    68,   nil,
    68,    69,    69,    69,   nil,    69,    70,    70,    70,    70,
   nil,    71,    71,    71,    71,    70,    72,    72,    72,    72,
    71,    73,    73,    73,    73,    72,   nil,   nil,   nil,   nil,
    73,   nil,   nil,    70,    70,   nil,   nil,   nil,    71,    71,
   nil,   nil,   nil,    72,    72,   nil,   nil,   nil,    73,    73,
   nil,   nil,    70,    70,    70,   nil,    70,    71,    71,    71,
   nil,    71,    72,    72,    72,   nil,    72,    73,    73,    73,
   nil,    73,    74,    74,    74,    74,   nil,    75,    75,    75,
    75,    74,    76,    76,    76,    76,    75,    77,    77,    77,
    77,    76,   nil,   nil,   nil,   nil,    77,   nil,   nil,    74,
    74,   nil,   nil,   nil,    75,    75,   nil,   nil,   nil,    76,
    76,   nil,   nil,   nil,    77,    77,   nil,   nil,    74,    74,
    74,   nil,    74,    75,    75,    75,   nil,    75,    76,    76,
    76,   nil,    76,    77,    77,    77,   nil,    77,    78,    78,
    78,    78,   nil,    79,    79,    79,    79,    78,    80,    80,
    80,    80,    79,    81,    81,    81,    81,    80,   nil,   nil,
   nil,   nil,    81,   nil,   nil,    78,    78,   nil,   nil,   nil,
    79,    79,   nil,   nil,   nil,    80,    80,   nil,   nil,   nil,
    81,    81,   nil,   nil,    78,    78,    78,   nil,    78,    79,
    79,    79,   nil,    79,    80,    80,    80,   nil,    80,    81,
    81,    81,   nil,    81,    82,    82,    82,    82,   nil,    83,
    83,    83,    83,    82,    84,    84,    84,    84,    83,    85,
    85,    85,    85,    84,   nil,   nil,   nil,   nil,    85,   nil,
   nil,    82,    82,   nil,   nil,   nil,    83,    83,   nil,   nil,
   nil,    84,    84,   nil,   nil,   nil,    85,    85,   nil,   nil,
    82,    82,    82,   nil,    82,    83,    83,    83,   nil,    83,
    84,    84,    84,   nil,    84,    85,    85,    85,   nil,    85,
    86,    86,    86,    86,   nil,    92,    92,    92,    92,    86,
    95,    95,    95,    95,    92,   126,   126,   126,   126,    95,
   nil,   nil,   nil,   nil,   126,   nil,   nil,    86,    86,   nil,
   nil,   nil,    92,    92,   nil,   nil,   nil,    95,    95,   nil,
   nil,   nil,   126,   126,   nil,   nil,    86,    86,    86,   nil,
    86,    92,    92,    92,   nil,    92,    95,    95,    95,   nil,
    95,   126,   126,   126,   nil,   126,   130,   130,   130,   130,
   nil,   133,   133,   133,   133,   130,   134,   134,   134,   134,
   133,   138,   138,   138,   138,   134,   nil,   nil,   nil,   nil,
   138,   nil,   nil,   130,   130,   nil,   nil,   nil,   133,   133,
   nil,   nil,   nil,   134,   134,   nil,   nil,   nil,   138,   138,
   nil,   nil,   130,   130,   130,   nil,   130,   133,   133,   133,
   nil,   133,   134,   134,   134,   nil,   134,   138,   138,   138,
   nil,   138,    64,    64,    64,    64,    64,    64,    64,    64,
    64,    64,    64,    64,    64,    64,    64,    64,    64,    64,
    99,    99,    99,    99,    99,    99,    99,    99,    99,    99,
    99,    99,    99,    99,    99,    99,    99,    99,     3,     3,
     3,   nil,     3,     3,   nil,   nil,    64,   nil,   nil,     3,
   nil,     3,     3,     3,     3,   nil,   nil,   nil,   nil,     3,
     3,     3,     3,   nil,    99,   124,   124,   124,   124,   124,
   124,   124,   124,   124,   124,   124,   124,   124,   124,   124,
   124,   124,   124,   139,   139,   139,   139,   139,   139,   139,
   139,   139,   139,   139,   139,   139,   139,   139,   139,   139,
   139,     5,     5,     5,   nil,     5,     5,   nil,   nil,   124,
   nil,   nil,     5,   nil,     5,     5,     5,     5,   nil,   nil,
   nil,   nil,     5,     5,     5,     5,   nil,   139,   145,   145,
   145,   145,   145,   145,   145,   145,   145,   145,   145,   145,
   145,   145,   145,   145,   145,   145,   142,   142,   142,   142,
   142,   142,   142,   142,   142,   142,   142,   142,   142,   142,
   142,   142,   142,   142,   109,   109,   109,   109,   109,   nil,
   nil,   nil,   145,   110,   110,   110,   110,   110,   142,    57,
    57,    57,    57,    57,    57,    57,    57,    57,    57,    57,
    57,    57,    57,    57,    57,    57,    57,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    65,   nil,   nil,   nil,   nil,    57,
    65,    65,    65,    65,    65,    65,    65,    65,    65,    65,
    65,    65,    65,    65,    65,    65,    65,    65,   100,   nil,
   nil,   nil,   nil,   nil,   100,   100,   100,   100,   100,   100,
   100,   100,   100,   100,   100,   100,   100,   100,   100,   100,
   100,   100,   122,   nil,   nil,   nil,   nil,   nil,   122,   122,
   122,   122,   122,   122,   122,   122,   122,   122,   122,   122,
   122,   122,   122,   122,   122,   122,     6,     6,     6,   nil,
     6,     6,   nil,   nil,   nil,   nil,   nil,     6,   nil,     6,
     6,     6,     6,   nil,    29,   nil,    29,     6,    29,    29,
   nil,   nil,   nil,   nil,   nil,    29,   nil,    29,    29,    29,
    29,   nil,    32,    32,    32,    29,    32,    32,   nil,   nil,
   nil,   nil,   nil,    32,   nil,    32,    32,    32,    32,   nil,
   123,   nil,   123,    32,   123,   123,   nil,   nil,   nil,   nil,
   nil,   123,   nil,   123,   123,   123,   123,   nil,   136,   nil,
   136,   123,   136,   136,   nil,   nil,   nil,   nil,   nil,   136,
   nil,   136,   136,   136,   136,   nil,   140,   nil,   140,   136,
   140,   140,   nil,   nil,   nil,   nil,   nil,   140,   nil,   140,
   140,   140,   140,   nil,   148,   nil,   148,   140,   148,   148,
   nil,   nil,   nil,   nil,   nil,   148,   nil,   148,   148,   148,
   148,   nil,   150,   nil,   150,   148,   150,   150,   nil,   nil,
   nil,   nil,   nil,   150,   nil,   150,   150,   150,   150,   nil,
   154,   nil,   154,   150,   154,   154,   nil,   nil,   nil,   nil,
   nil,   154,   nil,   154,   154,   154,   154,   nil,   nil,   nil,
   nil,   154,    94,    94,    94,    94,    94,    94,    94,    94,
    94,    94,    94,    94,    94,    94,    94,    94,    94,    94,
   nil,   nil,    94,    98,    98,    98,    98,    98,    98,    98,
    98,    98,    98,    98,    98,    98,    98,    98,    98,    98,
    98,   nil,   nil,    98,   135,   135,   135,   135,   135,   135,
   135,   135,   135,   135,   135,   135,   135,   135,   135,   135,
   135,   135,   nil,   nil,   135,   141,   141,   141,   141,   141,
   141,   141,   141,   141,   141,   141,   141,   141,   141,   141,
   141,   141,   141,   nil,   nil,   141,    42,    42,    42,    42,
    42,    42,    42,    42,    42,    42,    42,    42,    42,    42,
    42,    42,    42,    42,   103,   103,   103,   103,   103,   103,
   103,   103,   103,   103,   103,   103,   103,   103,   103,   103,
   103,   103,   121,   121,   121,   121,   121,   121,   121,   121,
   121,   121,   121,   121,   121,   121,   121,   121,   121,   120,
   120,   120,   120,   120,   120,   120,   120,   120,   120,   120,
   120,   120,   120,   120,   120,   119,   119,   119,   119,   119,
   119,   119,   119,   119,   119,   119,   119,   119,   119,   119,
   118,   118,   118,   118,   118,   118,   118,   118,   118,   118,
   118,   118,   118,   118,   117,   117,   117,   117,   117,   117,
   117,   117,   117,   117,   117,   117,   117,   111,   111,   111,
   111,   111,   111,   111,   111,   111,   111,   111,   112,   112,
   112,   112,   112,   112,   112,   112,   112,   112,   112,   113,
   113,   113,   113,   113,   113,   113,   113,   113,   113,   113,
   114,   114,   114,   114,   114,   114,   114,   114,   114,   114,
   114,   115,   115,   115,   115,   115,   115,   115,   115,   115,
   115,   115,   116,   116,   116,   116,   116,   116,   116,   116,
   116,   116,   116 ]

racc_action_pointer = [
   -11,    37,   nil,   665,    38,   728,   903,   nil,   nil,     2,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,     4,     7,    -2,     3,    38,    44,     8,   921,
    63,   nil,   939,   nil,   nil,   nil,   nil,    -2,    13,    64,
    40,    -7,  1177,    69,    74,    79,   130,   135,    92,   nil,
   nil,   nil,   nil,   nil,    -6,   140,    43,   830,    54,   145,
   nil,   nil,   196,   201,   653,   861,   nil,   nil,   206,   211,
   262,   267,   272,   277,   328,   333,   338,   343,   394,   399,
   404,   409,   460,   465,   470,   475,   526,   nil,   nil,   nil,
   nil,   nil,   531,   nil,  1093,   536,    45,    74,  1114,   671,
   885,   nil,    76,  1195,   nil,   nil,   nil,    32,    79,   815,
   824,  1288,  1299,  1310,  1321,  1332,  1343,  1275,  1261,  1246,
  1230,  1213,   909,   957,   716,    64,   541,    62,   nil,   -26,
   592,   nil,    72,   597,   602,  1135,   975,   nil,   607,   734,
   993,  1156,   797,   -17,   nil,   779,   nil,   nil,  1011,   -10,
  1029,   nil,   nil,   nil,  1047,   nil,   nil,   nil,   nil ]

racc_action_default = [
   -71,   -71,    -1,   -71,   -71,   -71,   -71,    -5,    -7,   -71,
   -12,   -13,   -14,   -16,   -17,   -18,   -19,   -20,   -21,   -22,
   -23,   -24,   -71,   -71,   -71,   -71,   -71,   -71,   -71,   -71,
   -71,   159,   -71,    -3,    -6,    -4,   -15,   -71,   -71,   -71,
   -71,   -71,   -31,   -71,   -71,   -71,   -71,   -71,   -64,   -65,
   -66,   -67,   -68,   -69,   -71,   -71,   -71,   -71,   -71,   -71,
    -2,    -8,   -71,   -71,   -71,   -71,   -27,   -28,   -71,   -71,
   -71,   -71,   -71,   -71,   -71,   -71,   -71,   -71,   -71,   -71,
   -71,   -71,   -71,   -71,   -71,   -71,   -71,   -59,   -60,   -61,
   -62,   -63,   -71,   -29,   -71,   -71,   -71,   -71,   -71,   -71,
   -71,   -25,   -71,   -30,   -41,   -42,   -43,   -44,   -45,   -46,
   -47,   -48,   -49,   -50,   -51,   -52,   -53,   -54,   -55,   -56,
   -57,   -58,   -71,   -71,   -71,   -71,   -71,   -71,    -9,   -71,
   -71,   -70,   -32,   -71,   -71,   -71,   -71,   -10,   -71,   -71,
   -71,   -71,   -71,   -71,   -39,   -71,   -26,   -33,   -71,   -71,
   -71,   -40,   -11,   -34,   -71,   -36,   -37,   -38,   -35 ]

racc_goto_table = [
    36,    57,     6,     8,    32,    34,    41,    54,     1,     2,
     5,    64,    65,    95,   154,   nil,    87,    88,    89,    90,
    91,   nil,   nil,    58,   nil,   nil,    36,   nil,    94,   nil,
   nil,   nil,    98,   nil,   nil,    99,   100,   nil,   nil,   nil,
   nil,   103,   104,   105,   106,   107,   108,   109,   110,   111,
   112,   113,   114,   115,   116,   117,   118,   119,   120,   121,
   nil,   nil,   nil,   nil,   nil,   122,   nil,   nil,   124,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   135,
   nil,   nil,   nil,   139,   nil,   nil,   141,   142,   nil,   nil,
   nil,   145,   nil,   nil,   nil,   nil,   nil,   132,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   144,   nil,   nil,   nil,   147,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   153,   nil,   157,   nil,   nil,   nil,   158 ]

racc_goto_check = [
     8,     7,     4,     5,     4,     5,    16,    16,     1,     2,
     3,     7,     7,     9,    17,   nil,     7,     7,     7,     7,
     7,   nil,   nil,     8,   nil,   nil,     8,   nil,     7,   nil,
   nil,   nil,     7,   nil,   nil,     7,     7,   nil,   nil,   nil,
   nil,     7,     7,     7,     7,     7,     7,     7,     7,     7,
     7,     7,     7,     7,     7,     7,     7,     7,     7,     7,
   nil,   nil,   nil,   nil,   nil,     7,   nil,   nil,     7,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     7,
   nil,   nil,   nil,     7,   nil,   nil,     7,     7,   nil,   nil,
   nil,     7,   nil,   nil,   nil,   nil,   nil,     8,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
     8,   nil,   nil,   nil,     8,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,     8,   nil,     8,   nil,   nil,   nil,     8 ]

racc_goto_pointer = [
   nil,     8,     9,     7,    -1,     0,   nil,   -27,    -6,   -43,
   nil,   nil,   nil,   nil,   nil,   nil,   -18,  -135 ]

racc_goto_default = [
   nil,   nil,    14,   nil,   nil,   nil,     9,    42,    13,    15,
    16,    17,    18,    19,    20,    21,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 59, :_reduce_1,
  4, 60, :_reduce_2,
  3, 60, :_reduce_3,
  3, 60, :_reduce_4,
  2, 60, :_reduce_5,
  2, 61, :_reduce_6,
  1, 61, :_reduce_7,
  3, 63, :_reduce_8,
  5, 63, :_reduce_9,
  6, 63, :_reduce_10,
  8, 63, :_reduce_11,
  1, 64, :_reduce_12,
  1, 64, :_reduce_13,
  1, 64, :_reduce_14,
  2, 62, :_reduce_15,
  1, 62, :_reduce_16,
  1, 66, :_reduce_17,
  1, 66, :_reduce_18,
  1, 66, :_reduce_19,
  1, 66, :_reduce_20,
  1, 66, :_reduce_21,
  1, 66, :_reduce_22,
  1, 66, :_reduce_23,
  1, 66, :_reduce_24,
  4, 67, :_reduce_25,
  7, 67, :_reduce_26,
  3, 68, :_reduce_27,
  3, 69, :_reduce_28,
  3, 69, :_reduce_29,
  3, 74, :_reduce_30,
  1, 74, :_reduce_31,
  5, 70, :_reduce_32,
  7, 70, :_reduce_33,
  8, 71, :_reduce_34,
  9, 72, :_reduce_35,
  1, 75, :_reduce_36,
  1, 75, :_reduce_37,
  8, 73, :_reduce_38,
  6, 73, :_reduce_39,
  7, 73, :_reduce_40,
  3, 65, :_reduce_41,
  3, 65, :_reduce_42,
  3, 65, :_reduce_43,
  3, 65, :_reduce_44,
  3, 65, :_reduce_45,
  3, 65, :_reduce_46,
  3, 65, :_reduce_47,
  3, 65, :_reduce_48,
  3, 65, :_reduce_49,
  3, 65, :_reduce_50,
  3, 65, :_reduce_51,
  3, 65, :_reduce_52,
  3, 65, :_reduce_53,
  3, 65, :_reduce_54,
  3, 65, :_reduce_55,
  3, 65, :_reduce_56,
  3, 65, :_reduce_57,
  3, 65, :_reduce_58,
  2, 65, :_reduce_59,
  2, 65, :_reduce_60,
  2, 65, :_reduce_61,
  2, 65, :_reduce_62,
  2, 65, :_reduce_63,
  1, 65, :_reduce_64,
  1, 65, :_reduce_65,
  1, 65, :_reduce_66,
  1, 65, :_reduce_67,
  1, 65, :_reduce_68,
  1, 65, :_reduce_69,
  4, 65, :_reduce_70 ]

racc_reduce_n = 71

racc_shift_n = 159

racc_token_table = {
  false => 0,
  :error => 1,
  "[" => 2,
  "]" => 3,
  "$" => 4,
  "@" => 5,
  "!" => 6,
  "~" => 7,
  :UMINUS => 8,
  "*" => 9,
  "/" => 10,
  "%" => 11,
  "+" => 12,
  "-" => 13,
  "<<" => 14,
  ">>" => 15,
  "<" => 16,
  "<=" => 17,
  ">" => 18,
  ">=" => 19,
  "==" => 20,
  "!=" => 21,
  "&" => 22,
  "^" => 23,
  "|" => 24,
  "&&" => 25,
  "||" => 26,
  "=" => 27,
  "(" => 28,
  ")" => 29,
  "," => 30,
  "bitexpr" => 31,
  "integer" => 32,
  "begin" => 33,
  "end" => 34,
  "if" => 35,
  "else" => 36,
  "for" => 37,
  "forbits" => 38,
  "as" => 39,
  "from" => 40,
  "going" => 41,
  "higher" => 42,
  "lower" => 43,
  "while" => 44,
  "do" => 45,
  "repeat" => 46,
  "input" => 47,
  "output" => 48,
  "outputln" => 49,
  "true" => 50,
  "false" => 51,
  "string" => 52,
  ";" => 53,
  "identifier" => 54,
  "bool" => 55,
  "int" => 56,
  "bits" => 57 }

racc_nt_base = 58

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "\"[\"",
  "\"]\"",
  "\"$\"",
  "\"@\"",
  "\"!\"",
  "\"~\"",
  "UMINUS",
  "\"*\"",
  "\"/\"",
  "\"%\"",
  "\"+\"",
  "\"-\"",
  "\"<<\"",
  "\">>\"",
  "\"<\"",
  "\"<=\"",
  "\">\"",
  "\">=\"",
  "\"==\"",
  "\"!=\"",
  "\"&\"",
  "\"^\"",
  "\"|\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\"(\"",
  "\")\"",
  "\",\"",
  "\"bitexpr\"",
  "\"integer\"",
  "\"begin\"",
  "\"end\"",
  "\"if\"",
  "\"else\"",
  "\"for\"",
  "\"forbits\"",
  "\"as\"",
  "\"from\"",
  "\"going\"",
  "\"higher\"",
  "\"lower\"",
  "\"while\"",
  "\"do\"",
  "\"repeat\"",
  "\"input\"",
  "\"output\"",
  "\"outputln\"",
  "\"true\"",
  "\"false\"",
  "\"string\"",
  "\";\"",
  "\"identifier\"",
  "\"bool\"",
  "\"int\"",
  "\"bits\"",
  "$start",
  "S",
  "BLOCK",
  "STATEMENTS",
  "INSTRUCTIONS",
  "STATEMENT",
  "TYPE",
  "EXPRESSION",
  "INSTRUCTION",
  "ASSIGNATION",
  "INPUT",
  "OUT",
  "CONDITIONAL",
  "FOR",
  "FORBITS",
  "WHILE",
  "EXPRESSIONS",
  "DIRECTION" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.y', 47)
  def _reduce_1(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 52)
  def _reduce_2(val, _values, result)
    result = BlockNode.new(val[1], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 53)
  def _reduce_3(val, _values, result)
    result = BlockNode.new(val[1], nil)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 54)
  def _reduce_4(val, _values, result)
    result = BlockNode.new(nil, val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 55)
  def _reduce_5(val, _values, result)
    result = BlockNode.new(nil, nil)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 60)
  def _reduce_6(val, _values, result)
    result = StatementsNode.new(val[0], val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 61)
  def _reduce_7(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 66)
  def _reduce_8(val, _values, result)
    result = StatementNode.new(val[0], val[1], nil, nil)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 67)
  def _reduce_9(val, _values, result)
    result = StatementNode.new(val[0], val[1], nil, val[3])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 68)
  def _reduce_10(val, _values, result)
    result = StatementNode.new(val[0], val[1], val[3], nil)
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 69)
  def _reduce_11(val, _values, result)
    result = StatementNode.new(val[0], val[1], val[3], val[6])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 74)
  def _reduce_12(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 75)
  def _reduce_13(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 76)
  def _reduce_14(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 81)
  def _reduce_15(val, _values, result)
    result = InstructionsNode.new(val[0], val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 82)
  def _reduce_16(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 87)
  def _reduce_17(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 88)
  def _reduce_18(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 89)
  def _reduce_19(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 90)
  def _reduce_20(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 91)
  def _reduce_21(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 92)
  def _reduce_22(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 93)
  def _reduce_23(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 94)
  def _reduce_24(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 99)
  def _reduce_25(val, _values, result)
    result = AssignationNode.new(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 100)
  def _reduce_26(val, _values, result)
    result = AssignationNode.new(val[0], val[2], val[5])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 105)
  def _reduce_27(val, _values, result)
    result = InputNode.new(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 110)
  def _reduce_28(val, _values, result)
    result = OutputNode.new('OUTPUT', val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 111)
  def _reduce_29(val, _values, result)
    result = OutputNode.new('OUTPUTLN', val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 116)
  def _reduce_30(val, _values, result)
    result = ExpressionsNode.new(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 117)
  def _reduce_31(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 123)
  def _reduce_32(val, _values, result)
    result = ConditionalNode.new(val[2], val[4])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 124)
  def _reduce_33(val, _values, result)
    result = ConditionalNode.new(val[2], val[4], val[6])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 129)
  def _reduce_34(val, _values, result)
    result = ForLoopNode.new(val[2], val[3], val[5], val[7])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 134)
  def _reduce_35(val, _values, result)
    result = ForbitsLoopNode.new(val[1], val[3], val[5], val[7], val[8])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 139)
  def _reduce_36(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 140)
  def _reduce_37(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 145)
  def _reduce_38(val, _values, result)
    result = RepeatWhileLoopNode.new(val[1], val[4], val[7])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 146)
  def _reduce_39(val, _values, result)
    result = WhileLoopNode.new(val[2], val[5])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 147)
  def _reduce_40(val, _values, result)
    result = RepeatWhileLoopNode.new(val[1], val[4])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 153)
  def _reduce_41(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'MULTIPLICATION')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 154)
  def _reduce_42(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'DIVISION')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 155)
  def _reduce_43(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'MODULUS')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 156)
  def _reduce_44(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'PLUS')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 157)
  def _reduce_45(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'MINUS')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 158)
  def _reduce_46(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'LEFTSHIFT')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 159)
  def _reduce_47(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'RIGHTSHIFT')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 160)
  def _reduce_48(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'LESSTHAN')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 161)
  def _reduce_49(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'LESSTHANEQUAL')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 162)
  def _reduce_50(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'GREATERTHAN')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 163)
  def _reduce_51(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'GREATERTHANEQUAL')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 164)
  def _reduce_52(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'ISEQUAL')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 165)
  def _reduce_53(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'ISNOTEQUAL')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 166)
  def _reduce_54(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'ANDBITS')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 167)
  def _reduce_55(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'EXCLUSIVE')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 168)
  def _reduce_56(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'ORBITS')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 169)
  def _reduce_57(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'ANDBOOL')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 170)
  def _reduce_58(val, _values, result)
    result = BinExpressionNode.new(val[0], val[2], 'ORBOOL')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 171)
  def _reduce_59(val, _values, result)
    result = UnaryExpressionNode.new(val[1], 'NOT')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 172)
  def _reduce_60(val, _values, result)
    result = UnaryExpressionNode.new(val[1], 'NOTBITS')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 173)
  def _reduce_61(val, _values, result)
    result = UnaryExpressionNode.new(val[1], 'BITREPRESENTATION')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 174)
  def _reduce_62(val, _values, result)
    result = UnaryExpressionNode.new(val[1], 'TRANSFORM')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 175)
  def _reduce_63(val, _values, result)
    result = UnaryExpressionNode.new(val[1], 'UMINUS')
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 176)
  def _reduce_64(val, _values, result)
    result = ConstExpressionNode.new(val[0], "variable")
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 177)
  def _reduce_65(val, _values, result)
    result = ConstExpressionNode.new(val[0], "int")
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 178)
  def _reduce_66(val, _values, result)
    result = ConstExpressionNode.new(val[0], "bits")
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 179)
  def _reduce_67(val, _values, result)
    result = ConstExpressionNode.new(val[0], "const")
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 180)
  def _reduce_68(val, _values, result)
    result = ConstExpressionNode.new(val[0], "const")
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 181)
  def _reduce_69(val, _values, result)
    result = ConstExpressionNode.new(val[0], "string")
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 182)
  def _reduce_70(val, _values, result)
    result = AccessNode.new(val[0], val[2])
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
