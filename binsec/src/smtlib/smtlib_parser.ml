
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | UNDERSCORE
    | SYMBOL of (
# 140 "smtlib/smtlib_parser.mly"
       (string)
# 12 "smtlib/smtlib_parser.ml"
  )
    | STRING of (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 17 "smtlib/smtlib_parser.ml"
  )
    | SETOPTION
    | SETLOGIC
    | SETINFO
    | RPAREN
    | RESETASSERTIONS
    | RESET
    | QUOTEDSYMBOL of (
# 141 "smtlib/smtlib_parser.mly"
       (string)
# 28 "smtlib/smtlib_parser.ml"
  )
    | PUSH
    | POP
    | PAR
    | NUMERAL of (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 36 "smtlib/smtlib_parser.ml"
  )
    | MODEL
    | METAINFO
    | LPAREN
    | LET
    | KEYWORD of (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 45 "smtlib/smtlib_parser.ml"
  )
    | HEXADECIMAL of (
# 134 "smtlib/smtlib_parser.mly"
       (string)
# 50 "smtlib/smtlib_parser.ml"
  )
    | GETVALUE
    | GETUNSATCORE
    | GETUNSATASSUMPTIONS
    | GETPROOF
    | GETOPTION
    | GETMODEL
    | GETINFO
    | GETASSIGNMENT
    | GETASSERTIONS
    | FORALL
    | EXIT
    | EXISTS
    | EOF
    | ECHO
    | DEFINESORT
    | DEFINEFUNREC
    | DEFINEFUN
    | DECLARESORT
    | DECLAREFUN
    | DECLARECONST
    | DECIMAL of (
# 133 "smtlib/smtlib_parser.mly"
       (string)
# 75 "smtlib/smtlib_parser.ml"
  )
    | CHECKSAT
    | BV_NUMERAL of (
# 135 "smtlib/smtlib_parser.mly"
       (string)
# 81 "smtlib/smtlib_parser.ml"
  )
    | BOOL of (
# 138 "smtlib/smtlib_parser.mly"
       (bool)
# 86 "smtlib/smtlib_parser.ml"
  )
    | BINARY of (
# 136 "smtlib/smtlib_parser.mly"
       (string)
# 91 "smtlib/smtlib_parser.ml"
  )
    | BANG
    | ASSERT
    | AS
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState251
  | MenhirState250
  | MenhirState249
  | MenhirState243
  | MenhirState237
  | MenhirState235
  | MenhirState233
  | MenhirState230
  | MenhirState228
  | MenhirState227
  | MenhirState225
  | MenhirState223
  | MenhirState220
  | MenhirState219
  | MenhirState217
  | MenhirState216
  | MenhirState214
  | MenhirState211
  | MenhirState208
  | MenhirState206
  | MenhirState204
  | MenhirState202
  | MenhirState196
  | MenhirState195
  | MenhirState192
  | MenhirState191
  | MenhirState186
  | MenhirState184
  | MenhirState183
  | MenhirState182
  | MenhirState179
  | MenhirState177
  | MenhirState174
  | MenhirState173
  | MenhirState171
  | MenhirState169
  | MenhirState165
  | MenhirState162
  | MenhirState159
  | MenhirState156
  | MenhirState151
  | MenhirState148
  | MenhirState144
  | MenhirState141
  | MenhirState138
  | MenhirState135
  | MenhirState129
  | MenhirState128
  | MenhirState126
  | MenhirState123
  | MenhirState122
  | MenhirState119
  | MenhirState117
  | MenhirState113
  | MenhirState110
  | MenhirState107
  | MenhirState106
  | MenhirState105
  | MenhirState101
  | MenhirState98
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState72
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState64
  | MenhirState61
  | MenhirState59
  | MenhirState57
  | MenhirState55
  | MenhirState53
  | MenhirState50
  | MenhirState48
  | MenhirState45
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState33
  | MenhirState23
  | MenhirState15
  | MenhirState11
  | MenhirState10
  | MenhirState5
  | MenhirState4
  | MenhirState2

# 22 "smtlib/smtlib_parser.mly"
  
    open Smtlib
    open Locations ;;

    (* Helper construction functions.
       File locations is handled in production rules.
       *)
    let mk_sexpr sexpr_desc sexpr_loc = { sexpr_desc; sexpr_loc; } ;;
    let mk_identifier id_desc id_loc = { id_desc; id_loc; } ;;

    let mk_sort sort_desc sort_loc = { sort_desc; sort_loc; } ;;

    let mk_command command_desc command_loc =
      { command_desc; command_loc; }
    ;;

    let mk_fun_def fun_def_desc fun_def_loc =
      { fun_def_desc; fun_def_loc; }
    ;;

    let mk_fun_rec_def fun_rec_def_desc fun_rec_def_loc =
      { fun_rec_def_desc; fun_rec_def_loc; }
    ;;

    let mk_sorted_var sorted_var_desc sorted_var_loc =
      { sorted_var_desc; sorted_var_loc; }
    ;;

    let mk_qual_identifier qual_identifier_desc qual_identifier_loc =
      { qual_identifier_desc; qual_identifier_loc; }
    ;;

    let mk_var_binding var_binding_desc var_binding_loc =
      { var_binding_desc; var_binding_loc; }
    ;;

    let mk_term term_desc term_loc = { term_desc; term_loc; } ;;

    let mk_smt_option smt_option_desc smt_option_loc = {
        smt_option_desc; smt_option_loc ;
      }
    ;;

    let mk_script script_commands script_loc =
      { script_commands; script_loc; }
    ;;

    let mk_model model_commands model_loc = { model_commands; model_loc; }
    let mk_attribute attribute_desc attribute_loc =
      { attribute_desc; attribute_loc; }
    ;;

    let mk_attr_value attr_value_desc attr_value_loc =
      { attr_value_desc; attr_value_loc; }
    ;;

    let mk_info_flag info_flag_desc info_flag_loc =
      { info_flag_desc; info_flag_loc; }
    ;;

    let mk_symbol symbol_desc symbol_loc = { symbol_desc; symbol_loc; } ;;

    let mk_loc _ _ = dummy_loc

# 274 "smtlib/smtlib_parser.ml"

let rec _menhir_goto_list_sort_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_sort_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1009 * Lexing.position * _menhir_state * 'tv_sort) * _menhir_state * 'tv_list_sort_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1007 * Lexing.position * _menhir_state * 'tv_sort) * _menhir_state * 'tv_list_sort_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_sort)), _, (xs : 'tv_list_sort_)) = _menhir_stack in
        let _v : 'tv_list_sort_ = 
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 289 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_sort_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1008)) : 'freshtv1010)
    | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1015 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1011 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState223 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState223 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState223) : 'freshtv1012)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1013 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1014)) : 'freshtv1016)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_sorted_var_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_sorted_var_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv999 * _menhir_state * 'tv_sorted_var) * _menhir_state * 'tv_list_sorted_var_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv997 * _menhir_state * 'tv_sorted_var) * _menhir_state * 'tv_list_sorted_var_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_sorted_var)), _, (xs : 'tv_list_sorted_var_)) = _menhir_stack in
        let _v : 'tv_list_sorted_var_ = 
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 339 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_sorted_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv998)) : 'freshtv1000)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1005 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sorted_var_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1001 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sorted_var_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState195 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState195 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState195) : 'freshtv1002)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1003 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sorted_var_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1004)) : 'freshtv1006)
    | _ ->
        _menhir_fail ()

and _menhir_reduce46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_sort_ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 381 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_list_sort_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_sorted_var_ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 390 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_list_sorted_var_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nonempty_list_sorted_var_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_sorted_var_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv983 * _menhir_state * 'tv_sorted_var) * _menhir_state * 'tv_nonempty_list_sorted_var_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv981 * _menhir_state * 'tv_sorted_var) * _menhir_state * 'tv_nonempty_list_sorted_var_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_sorted_var)), _, (xs : 'tv_nonempty_list_sorted_var_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_sorted_var_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 407 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_nonempty_list_sorted_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv982)) : 'freshtv984)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv989 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv985 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BINARY _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BOOL _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DECIMAL _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXADECIMAL _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUMERAL _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState113 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv986)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv987 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv988)) : 'freshtv990)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv995 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv991 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BINARY _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BOOL _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DECIMAL _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXADECIMAL _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUMERAL _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv992)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv993 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv994)) : 'freshtv996)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_sort_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_sort_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv957 * Lexing.position * _menhir_state * 'tv_sort) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv955 * Lexing.position * _menhir_state * 'tv_sort) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_sort)), _, (xs : 'tv_nonempty_list_sort_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_sort_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 512 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_nonempty_list_sort_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv956)) : 'freshtv958)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv965 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv961 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv959 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
            let (_endpos__4_ : Lexing.position) = _endpos in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_id_, _, (id : 'tv_identifier), _startpos_id_), _, (sorts : 'tv_nonempty_list_sort_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _endpos = _endpos__4_ in
            let _v : 'tv_sort = let _endpos = _endpos__4_ in
            let _startpos = _startpos__1_ in
            
# 291 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_sort (SortFun (id, sorts)) loc )
# 538 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_sort _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv960)) : 'freshtv962)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv963 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv964)) : 'freshtv966)
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv979 * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv975 * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv973 * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
            let (_endpos__4_ : Lexing.position) = _endpos in
            ((let (((_menhir_stack, _menhir_s), _startpos__2_), _, (sorts : 'tv_nonempty_list_sort_)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_poly_parameters = 
# 278 "smtlib/smtlib_parser.mly"
                                 ( sorts )
# 569 "smtlib/smtlib_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv971) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_poly_parameters) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv969) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_poly_parameters) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv967) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((x : 'tv_poly_parameters) : 'tv_poly_parameters) = _v in
            ((let _v : 'tv_option_poly_parameters_ = 
# 102 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 586 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_option_poly_parameters_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv968)) : 'freshtv970)) : 'freshtv972)) : 'freshtv974)) : 'freshtv976)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv977 * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sort_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv978)) : 'freshtv980)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_index_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_index_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv949 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_nonempty_list_index_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv945 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_nonempty_list_index_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv943 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_nonempty_list_index_) = Obj.magic _menhir_stack in
            let (_endpos__5_ : Lexing.position) = _endpos in
            ((let ((((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos_symb_, _, (symb : 'tv_symbol), _startpos_symb_), _, (indexes : 'tv_nonempty_list_index_)) = _menhir_stack in
            let _5 = () in
            let _2 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__5_ in
            let _v : 'tv_identifier = let _endpos = _endpos__5_ in
            let _startpos = _startpos__1_ in
            
# 305 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_identifier (IdUnderscore (symb, indexes)) loc )
# 629 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_identifier _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv944)) : 'freshtv946)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv947 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_nonempty_list_index_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv948)) : 'freshtv950)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv953 * _menhir_state * 'tv_index) * _menhir_state * 'tv_nonempty_list_index_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv951 * _menhir_state * 'tv_index) * _menhir_state * 'tv_nonempty_list_index_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_index)), _, (xs : 'tv_nonempty_list_index_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_index_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 648 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_nonempty_list_index_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv952)) : 'freshtv954)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_attribute_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_attribute_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv937 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term) * _menhir_state * 'tv_nonempty_list_attribute_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv933 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term) * _menhir_state * 'tv_nonempty_list_attribute_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv931 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term) * _menhir_state * 'tv_nonempty_list_attribute_) = Obj.magic _menhir_stack in
            let (_endpos__5_ : Lexing.position) = _endpos in
            ((let ((((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos_t_, _, (t : 'tv_term)), _, (attrs : 'tv_nonempty_list_attribute_)) = _menhir_stack in
            let _5 = () in
            let _2 = () in
            let _1 = () in
            let _endpos = _endpos__5_ in
            let _v : 'tv_term = let _endpos = _endpos__5_ in
            let _startpos = _startpos__1_ in
            
# 336 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermAnnotatedTerm(t, attrs)) loc )
# 683 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv932)) : 'freshtv934)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv935 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term) * _menhir_state * 'tv_nonempty_list_attribute_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv936)) : 'freshtv938)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv941 * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) * _menhir_state * 'tv_nonempty_list_attribute_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv939 * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) * _menhir_state * 'tv_nonempty_list_attribute_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_attribute), _startpos_x_), _, (xs : 'tv_nonempty_list_attribute_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_attribute_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 702 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_nonempty_list_attribute_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv940)) : 'freshtv942)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_sexpr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_sexpr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv913 * _menhir_state * 'tv_sexpr) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv911 * _menhir_state * 'tv_sexpr) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_sexpr)), _, (xs : 'tv_list_sexpr_)) = _menhir_stack in
        let _v : 'tv_list_sexpr_ = 
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 721 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_sexpr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv912)) : 'freshtv914)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv921 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv917 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv915 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
            let (_endpos__3_ : Lexing.position) = _endpos in
            ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (sexprs : 'tv_list_sexpr_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_sexpr = let _endpos = _endpos__3_ in
            let _startpos = _startpos__1_ in
            
# 390 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_sexpr (SexprParens sexprs) loc )
# 747 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_sexpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv916)) : 'freshtv918)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv919 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv920)) : 'freshtv922)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv929 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv925 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv923 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
            let (_endpos__3_ : Lexing.position) = _endpos in
            ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (sexprs : 'tv_list_sexpr_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _endpos = _endpos__3_ in
            let _v : 'tv_attribute_value = let _endpos = _endpos__3_ in
            let _startpos = _startpos__1_ in
            
# 375 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_attr_value (AttrValSexpr sexprs) loc )
# 781 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_attribute_value _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv924)) : 'freshtv926)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv927 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_sexpr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv928)) : 'freshtv930)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_poly_parameters_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_poly_parameters_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv903 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv899 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191) : 'freshtv900)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv901 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv902)) : 'freshtv904)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv909 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv905 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState219 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState219 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack) MenhirState219
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState219) : 'freshtv906)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv907 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv908)) : 'freshtv910)
    | _ ->
        _menhir_fail ()

and _menhir_goto_qual_identifier : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_qual_identifier -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState249 | MenhirState235 | MenhirState196 | MenhirState64 | MenhirState128 | MenhirState129 | MenhirState122 | MenhirState119 | MenhirState113 | MenhirState101 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv895 * Lexing.position * _menhir_state * 'tv_qual_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv893 * Lexing.position * _menhir_state * 'tv_qual_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : 'tv_qual_identifier), _startpos__1_) = _menhir_stack in
        let _endpos = _endpos__1_ in
        let _v : 'tv_term = let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 321 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermQualIdentifier _1) loc )
# 880 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv894)) : 'freshtv896)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv897 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_qual_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BINARY _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BOOL _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DECIMAL _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXADECIMAL _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUMERAL _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv898)
    | _ ->
        _menhir_fail ()

and _menhir_goto_sort : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_sort -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState186 | MenhirState82 | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv845 * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState82 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState82 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv843 * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_sort)) = _menhir_stack in
            let _v : 'tv_nonempty_list_sort_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 937 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_nonempty_list_sort_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv844)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv846)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv853 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv849 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv847 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            let (_endpos__5_ : Lexing.position) = _endpos in
            ((let ((((_menhir_stack, _menhir_s, _startpos__1_), _), _endpos_id_, _, (id : 'tv_identifier), _startpos_id_), _endpos_so_, _, (so : 'tv_sort)) = _menhir_stack in
            let _5 = () in
            let _2 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__5_ in
            let _v : 'tv_qual_identifier = let _endpos = _endpos__5_ in
            let _startpos = _startpos__1_ in
            
# 345 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_qual_identifier (QualIdentifierAs (id, so)) loc )
# 970 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_qual_identifier _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv848)) : 'freshtv850)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv851 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv852)) : 'freshtv854)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv869 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv865 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv863 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            let (_endpos__4_ : Lexing.position) = _endpos in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_symb_, _, (symb : 'tv_symbol), _startpos_symb_), _endpos_so_, _, (so : 'tv_sort)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_sorted_var = let _endpos = _endpos__4_ in
            let _startpos = _startpos__1_ in
            
# 283 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_sorted_var (SortedVar (symb, so)) loc )
# 1003 "smtlib/smtlib_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv861) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_sorted_var) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState117 | MenhirState110 | MenhirState105 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv857 * _menhir_state * 'tv_sorted_var) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv855 * _menhir_state * 'tv_sorted_var) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, (x : 'tv_sorted_var)) = _menhir_stack in
                    let _v : 'tv_nonempty_list_sorted_var_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 1026 "smtlib/smtlib_parser.ml"
                     in
                    _menhir_goto_nonempty_list_sorted_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv856)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv858)
            | MenhirState192 | MenhirState191 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv859 * _menhir_state * 'tv_sorted_var) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RPAREN ->
                    _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack) MenhirState192
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState192) : 'freshtv860)
            | _ ->
                _menhir_fail ()) : 'freshtv862)) : 'freshtv864)) : 'freshtv866)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv867 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv868)) : 'freshtv870)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv875 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv871 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179) : 'freshtv872)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv873 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv874)) : 'freshtv876)
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv877 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BINARY _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState196 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BOOL _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState196 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DECIMAL _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState196 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXADECIMAL _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState196 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUMERAL _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState196 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState196 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState196 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState196 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196) : 'freshtv878)
    | MenhirState220 | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv879 * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState220 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState220 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack) MenhirState220
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220) : 'freshtv880)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv885 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv881 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState225) : 'freshtv882)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv883 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv884)) : 'freshtv886)
    | MenhirState228 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv891 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv887 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState230
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState230) : 'freshtv888)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv889 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv890)) : 'freshtv892)
    | _ ->
        _menhir_fail ()

and _menhir_goto_index : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_index -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv841 * _menhir_state * 'tv_index) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NUMERAL _v ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv839 * _menhir_state * 'tv_index) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_index)) = _menhir_stack in
        let _v : 'tv_nonempty_list_index_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 1211 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_nonempty_list_index_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv840)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv842)

and _menhir_goto_nonempty_list_fun_rec_def_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_fun_rec_def_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState182 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv833 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv829 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv825 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EOF | RPAREN ->
                    _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState202
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState202) : 'freshtv826)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv827 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv828)) : 'freshtv830)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv831 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv832)) : 'freshtv834)
    | MenhirState204 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv837 * _menhir_state * 'tv_fun_rec_def) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv835 * _menhir_state * 'tv_fun_rec_def) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_fun_rec_def)), _, (xs : 'tv_nonempty_list_fun_rec_def_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_fun_rec_def_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 1276 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_nonempty_list_fun_rec_def_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv836)) : 'freshtv838)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv805 * Lexing.position * _menhir_state * 'tv_term) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv803 * Lexing.position * _menhir_state * 'tv_term) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_term)), _, (xs : 'tv_nonempty_list_term_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_term_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 1295 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_nonempty_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv804)) : 'freshtv806)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv813 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_qual_identifier * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv809 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_qual_identifier * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv807 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_qual_identifier * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
            let (_endpos__4_ : Lexing.position) = _endpos in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_qualid_, _, (qualid : 'tv_qual_identifier), _startpos_qualid_), _, (ts : 'tv_nonempty_list_term_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _endpos = _endpos__4_ in
            let _v : 'tv_term = let _endpos = _endpos__4_ in
            let _startpos = _startpos__1_ in
            
# 324 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermQualIdentifierTerms(qualid, ts)) loc )
# 1322 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv808)) : 'freshtv810)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv811 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_qual_identifier * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv812)) : 'freshtv814)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv823 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv819 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv815 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EOF | RPAREN ->
                    _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState135
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv816)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv817 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv818)) : 'freshtv820)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv821 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv822)) : 'freshtv824)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_var_binding_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_var_binding_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv795 * _menhir_state * 'tv_var_binding) * _menhir_state * 'tv_nonempty_list_var_binding_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv793 * _menhir_state * 'tv_var_binding) * _menhir_state * 'tv_nonempty_list_var_binding_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_var_binding)), _, (xs : 'tv_nonempty_list_var_binding_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_var_binding_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 1392 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_nonempty_list_var_binding_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv794)) : 'freshtv796)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv801 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_var_binding_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv797 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_var_binding_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BINARY _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BOOL _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DECIMAL _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXADECIMAL _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUMERAL _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv798)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv799 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_var_binding_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv800)) : 'freshtv802)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_NUMERAL_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_option_NUMERAL_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv785 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv781 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv782)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv783 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv784)) : 'freshtv786)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv791 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv787 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv788)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv789 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv790)) : 'freshtv792)
    | _ ->
        _menhir_fail ()

and _menhir_goto_attribute : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_attribute -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv763 * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv761 * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_attr_, _menhir_s, (attr : 'tv_attribute), _startpos_attr_) = _menhir_stack in
        let _endpos = _endpos_attr_ in
        let _v : 'tv_smt_option = let _endpos = _endpos_attr_ in
        let _startpos = _startpos_attr_ in
        
# 405 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_smt_option (OptionAttribute attr) loc )
# 1523 "smtlib/smtlib_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv759) = _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_smt_option) = _v in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv757 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_smt_option) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv753 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_smt_option) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv754)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv755 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_smt_option) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv756)) : 'freshtv758)) : 'freshtv760)) : 'freshtv762)) : 'freshtv764)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv769 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv765 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv766)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv767 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv768)) : 'freshtv770)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv775 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv771 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv772)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv773 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv774)) : 'freshtv776)
    | MenhirState126 | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv779 * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | KEYWORD _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv777 * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_attribute), _startpos_x_) = _menhir_stack in
            let _v : 'tv_nonempty_list_attribute_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 1632 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_nonempty_list_attribute_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv778)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv780)
    | _ ->
        _menhir_fail ()

and _menhir_reduce44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_sexpr_ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 1647 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_list_sexpr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BV_NUMERAL _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINARY _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BOOL _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DECIMAL _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | HEXADECIMAL _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | KEYWORD _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUMERAL _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNDERSCORE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | RPAREN ->
        _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run16 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 1702 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv751) = Obj.magic _menhir_stack in
    let (_endpos_kwd_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((kwd : (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 1713 "smtlib/smtlib_parser.ml"
    )) : (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 1717 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos_kwd_ : Lexing.position) = _startpos in
    ((let _v : 'tv_sexpr = let _endpos = _endpos_kwd_ in
    let _startpos = _startpos_kwd_ in
    
# 387 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_sexpr (SexprKeyword kwd) loc )
# 1726 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_sexpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv752)

and _menhir_reduce69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_option_poly_parameters_ = 
# 100 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 1735 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_option_poly_parameters_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run185 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv747 * _menhir_state) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState186 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState186 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState186) : 'freshtv748)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv749 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv750)

and _menhir_goto_nonempty_list_symbol_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_symbol_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv739 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv737 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_symbol), _startpos_x_), _, (xs : 'tv_nonempty_list_symbol_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_symbol_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 1784 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_nonempty_list_symbol_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv738)) : 'freshtv740)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv745 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv741 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState177 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState177 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177) : 'freshtv742)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv743 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv744)) : 'freshtv746)
    | _ ->
        _menhir_fail ()

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNDERSCORE ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_goto_identifier : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_identifier -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv725 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv726)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv727 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv728)
    | MenhirState228 | MenhirState219 | MenhirState223 | MenhirState220 | MenhirState195 | MenhirState186 | MenhirState177 | MenhirState107 | MenhirState79 | MenhirState81 | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv731 * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv729 * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_id_, _menhir_s, (id : 'tv_identifier), _startpos_id_) = _menhir_stack in
        let _endpos = _endpos_id_ in
        let _v : 'tv_sort = let _endpos = _endpos_id_ in
        let _startpos = _startpos_id_ in
        
# 289 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_sort (SortIdentifier id) loc )
# 1888 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_sort _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv730)) : 'freshtv732)
    | MenhirState249 | MenhirState235 | MenhirState196 | MenhirState64 | MenhirState65 | MenhirState128 | MenhirState129 | MenhirState122 | MenhirState119 | MenhirState113 | MenhirState101 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv735 * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv733 * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_id_, _menhir_s, (id : 'tv_identifier), _startpos_id_) = _menhir_stack in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_id_ in
        let _v : 'tv_qual_identifier = let _endpos = _endpos_id_ in
        let _startpos = _startpos_id_ in
        
# 342 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_qual_identifier (QualIdentifierIdentifier id) loc )
# 1905 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_qual_identifier _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv734)) : 'freshtv736)
    | _ ->
        _menhir_fail ()

and _menhir_run68 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 140 "smtlib/smtlib_parser.mly"
       (string)
# 1914 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv723) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 140 "smtlib/smtlib_parser.mly"
       (string)
# 1925 "smtlib/smtlib_parser.ml"
    )) : (
# 140 "smtlib/smtlib_parser.mly"
       (string)
# 1929 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _v : 'tv_index = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    
# 297 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    IdxSymbol (mk_symbol (SimpleSymbol _1) loc) )
# 1938 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_index _menhir_env _menhir_stack _menhir_s _v) : 'freshtv724)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 1945 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv721) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 1956 "smtlib/smtlib_parser.ml"
    )) : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 1960 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _v : 'tv_index = 
# 295 "smtlib/smtlib_parser.mly"
          ( IdxNum _1 )
# 1966 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_index _menhir_env _menhir_stack _menhir_s _v) : 'freshtv722)

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | UNDERSCORE ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_term : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_term -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv647 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv643 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv641 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_endpos__4_ : Lexing.position) = _endpos in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_symb_, _, (symb : 'tv_symbol), _startpos_symb_), _endpos_t_, _, (t : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_var_binding = let _endpos = _endpos__4_ in
            let _startpos = _startpos__1_ in
            
# 351 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_var_binding (VarBinding (symb, t)) loc )
# 2015 "smtlib/smtlib_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv639) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_var_binding) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv637 * _menhir_state * 'tv_var_binding) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv635 * _menhir_state * 'tv_var_binding) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_var_binding)) = _menhir_stack in
                let _v : 'tv_nonempty_list_var_binding_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 2036 "smtlib/smtlib_parser.ml"
                 in
                _menhir_goto_nonempty_list_var_binding_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv636)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv638)) : 'freshtv640)) : 'freshtv642)) : 'freshtv644)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv645 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv646)) : 'freshtv648)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv655 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_var_binding_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv651 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_var_binding_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv649 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_var_binding_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_endpos__7_ : Lexing.position) = _endpos in
            ((let ((((((_menhir_stack, _menhir_s, _startpos__1_), _), _startpos__3_), _, (vbindings : 'tv_nonempty_list_var_binding_)), _endpos__5_), _endpos_t_, _, (t : 'tv_term)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _endpos = _endpos__7_ in
            let _v : 'tv_term = let _endpos = _endpos__7_ in
            let _startpos = _startpos__1_ in
            
# 327 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermLetTerm (vbindings, t)) loc )
# 2077 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv650)) : 'freshtv652)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv653 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_var_binding_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv654)) : 'freshtv656)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv663 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv659 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv657 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_endpos__7_ : Lexing.position) = _endpos in
            ((let ((((((_menhir_stack, _menhir_s, _startpos__1_), _), _startpos__3_), _, (svars : 'tv_nonempty_list_sorted_var_)), _endpos__5_), _endpos_t_, _, (t : 'tv_term)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _endpos = _endpos__7_ in
            let _v : 'tv_term = let _endpos = _endpos__7_ in
            let _startpos = _startpos__1_ in
            
# 330 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermForallTerm (svars, t)) loc)
# 2114 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv658)) : 'freshtv660)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv661 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv662)) : 'freshtv664)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv671 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv667 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv665 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_endpos__7_ : Lexing.position) = _endpos in
            ((let ((((((_menhir_stack, _menhir_s, _startpos__1_), _), _startpos__3_), _, (svars : 'tv_nonempty_list_sorted_var_)), _endpos__5_), _endpos_t_, _, (t : 'tv_term)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _endpos = _endpos__7_ in
            let _v : 'tv_term = let _endpos = _endpos__7_ in
            let _startpos = _startpos__1_ in
            
# 333 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermExistsTerm (svars, t)) loc )
# 2151 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv666)) : 'freshtv668)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv669 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv670)) : 'freshtv672)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv673 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | KEYWORD _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv674)
    | MenhirState64 | MenhirState129 | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv677 * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BINARY _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BOOL _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DECIMAL _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXADECIMAL _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUMERAL _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv675 * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_term)) = _menhir_stack in
            let _v : 'tv_nonempty_list_term_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 2204 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_nonempty_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv676)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv678)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv709 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv707 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (((((((_menhir_stack, _endpos_symb_, _menhir_s, (symb : 'tv_symbol), _startpos_symb_), _, (polys : 'tv_option_poly_parameters_)), _startpos__3_), _, (svars : 'tv_list_sorted_var_)), _endpos__5_), _endpos_so_, _, (so : 'tv_sort)), _endpos_t_, _, (t : 'tv_term)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _startpos = _startpos_symb_ in
        let _endpos = _endpos_t_ in
        let _v : 'tv_fun_def = 
# 260 "smtlib/smtlib_parser.mly"
  ( (symb, polys, svars, so, t) )
# 2224 "smtlib/smtlib_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv705) = _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_fun_def) = _v in
        let (_startpos : Lexing.position) = _startpos in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
        match _menhir_s with
        | MenhirState183 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv691 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_def * Lexing.position) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv687 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_def * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv685 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_def * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos__3_ : Lexing.position) = _endpos in
                ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_fd_, _, (fd : 'tv_fun_def), _startpos_fd_) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_fun_rec_def = let _endpos = _endpos__3_ in
                let _startpos = _startpos__1_ in
                
# 272 "smtlib/smtlib_parser.mly"
 ( let s, ps, svs, so, t = fd in
   let loc = mk_loc _startpos _endpos in
   mk_fun_rec_def (FunRecDef (s, ps, svs, so, t)) loc )
# 2258 "smtlib/smtlib_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv683) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_fun_rec_def) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv681 * _menhir_state * 'tv_fun_rec_def) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run183 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv679 * _menhir_state * 'tv_fun_rec_def) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, (x : 'tv_fun_rec_def)) = _menhir_stack in
                    let _v : 'tv_nonempty_list_fun_rec_def_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 2279 "smtlib/smtlib_parser.ml"
                     in
                    _menhir_goto_nonempty_list_fun_rec_def_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv680)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState204) : 'freshtv682)) : 'freshtv684)) : 'freshtv686)) : 'freshtv688)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv689 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_def * Lexing.position) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv690)) : 'freshtv692)
        | MenhirState206 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv703 * Lexing.position * _menhir_state * 'tv_fun_def * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv701 * Lexing.position * _menhir_state * 'tv_fun_def * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _endpos_fd_, _menhir_s, (fd : 'tv_fun_def), _startpos_fd_) = _menhir_stack in
            let _endpos = _endpos_fd_ in
            let _v : 'tv_fun_nonrec_def = let _endpos = _endpos_fd_ in
            let _startpos = _startpos_fd_ in
            
# 265 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    let s, ps, svs, so, t = fd in
    mk_fun_def (FunDef (s, ps, svs, so, t)) loc )
# 2307 "smtlib/smtlib_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv699) = _menhir_stack in
            let (_endpos : Lexing.position) = _endpos in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fun_nonrec_def) = _v in
            ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv697 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_nonrec_def) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv693 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_nonrec_def) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EOF | RPAREN ->
                    _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState208
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208) : 'freshtv694)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv695 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_nonrec_def) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv696)) : 'freshtv698)) : 'freshtv700)) : 'freshtv702)) : 'freshtv704)
        | _ ->
            _menhir_fail ()) : 'freshtv706)) : 'freshtv708)) : 'freshtv710)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv715 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv711 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState237
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237) : 'freshtv712)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv713 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv714)) : 'freshtv716)
    | MenhirState249 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv719 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BINARY _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState250 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BOOL _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState250 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DECIMAL _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState250 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXADECIMAL _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState250 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv717) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState250 in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | UNDERSCORE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState251
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState251) : 'freshtv718)
        | NUMERAL _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState250 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState250 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState250) : 'freshtv720)
    | _ ->
        _menhir_fail ()

and _menhir_goto_attribute_value : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_attribute_value -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv633 * Lexing.position * _menhir_state * (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 2420 "smtlib/smtlib_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_attribute_value) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv631 * Lexing.position * _menhir_state * (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 2429 "smtlib/smtlib_parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos_attrval_ : Lexing.position) = _endpos in
    let (_ : _menhir_state) = _menhir_s in
    let ((attrval : 'tv_attribute_value) : 'tv_attribute_value) = _v in
    ((let (_menhir_stack, _endpos_kwd_, _menhir_s, (kwd : (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 2437 "smtlib/smtlib_parser.ml"
    )), _startpos_kwd_) = _menhir_stack in
    let _startpos = _startpos_kwd_ in
    let _endpos = _endpos_attrval_ in
    let _v : 'tv_attribute = let _endpos = _endpos_attrval_ in
    let _startpos = _startpos_kwd_ in
    
# 399 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_attribute (AttrKeywordValue (kwd, attrval)) loc )
# 2447 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_attribute _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv632)) : 'freshtv634)

and _menhir_goto_sexpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_sexpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv629 * _menhir_state * 'tv_sexpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINARY _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BOOL _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DECIMAL _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | HEXADECIMAL _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | KEYWORD _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUMERAL _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv630)

and _menhir_goto_list_delimited_LPAREN_command_RPAREN__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_delimited_LPAREN_command_RPAREN__ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv491 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_smt_option) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv489 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_smt_option) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_sopt00_, _, (sopt00 : 'tv_smt_option)), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_sopt0_ = _endpos_sopt00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let sopt0 = sopt00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_sopt_ = _endpos_sopt0_ in
            let _startpos__1_ = _startpos__10_ in
            let sopt = sopt0 in
            let _1 = _10 in
            let _endpos = _endpos_sopt_ in
            let _startpos = _startpos__1_ in
            
# 253 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdSetOption sopt) loc )
# 2518 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2524 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2530 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv490)) : 'freshtv492)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv495 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv493 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_symb00_, _, (symb00 : 'tv_symbol), _startpos_symb00_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_symb0_ = _endpos_symb00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let symb0 = symb00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_symb_ = _endpos_symb0_ in
            let _startpos__1_ = _startpos__10_ in
            let symb = symb0 in
            let _1 = _10 in
            let _endpos = _endpos_symb_ in
            let _startpos = _startpos__1_ in
            
# 250 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdSetLogic symb) loc )
# 2561 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2567 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2573 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv494)) : 'freshtv496)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv499 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv497 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_attr00_, _, (attr00 : 'tv_attribute), _startpos_attr00_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_attr0_ = _endpos_attr00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let attr0 = attr00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_attr_ = _endpos_attr0_ in
            let _startpos__1_ = _startpos__10_ in
            let attr = attr0 in
            let _1 = _10 in
            let _endpos = _endpos_attr_ in
            let _startpos = _startpos__1_ in
            
# 247 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdSetInfo attr) loc )
# 2604 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2610 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2616 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv498)) : 'freshtv500)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv503 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv501 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 223 "smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdResetAssertions loc )
# 2645 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2651 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2657 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv502)) : 'freshtv504)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv507 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv505 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 220 "smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdReset loc )
# 2686 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2692 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2698 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv506)) : 'freshtv508)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv511 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv509 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos_num00_, _, (num00 : 'tv_option_NUMERAL_)), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_num0_ = _endpos_num00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let num0 = num00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_num_ = _endpos_num0_ in
            let _startpos__1_ = _startpos__10_ in
            let num = num0 in
            let _1 = _10 in
            let _endpos = _endpos_num_ in
            let _startpos = _startpos__1_ in
            
# 244 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdPush num) loc )
# 2729 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2735 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2741 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv510)) : 'freshtv512)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv515 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv513 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos_num00_, _, (num00 : 'tv_option_NUMERAL_)), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_num0_ = _endpos_num00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let num0 = num00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_num_ = _endpos_num0_ in
            let _startpos__1_ = _startpos__10_ in
            let num = num0 in
            let _1 = _10 in
            let _endpos = _endpos_num_ in
            let _startpos = _startpos__1_ in
            
# 241 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdPop num) loc )
# 2772 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2778 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2784 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv514)) : 'freshtv516)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv519 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv517 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_attr00_, _, (attr00 : 'tv_attribute), _startpos_attr00_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_attr0_ = _endpos_attr00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let attr0 = attr00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_attr_ = _endpos_attr0_ in
            let _startpos__1_ = _startpos__10_ in
            let attr = attr0 in
            let _1 = _10 in
            let _endpos = _endpos_attr_ in
            let _startpos = _startpos__1_ in
            
# 238 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdMetaInfo attr) loc )
# 2815 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2821 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2827 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv518)) : 'freshtv520)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv523 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv521 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _startpos__200_), _, (ts00 : 'tv_nonempty_list_term_)), _endpos__400_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _400 = () in
        let _200 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__40_ = _endpos__400_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _40 = _400 in
          let ts0 = ts00 in
          let _20 = _200 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__4_ = _endpos__40_ in
            let _startpos__1_ = _startpos__10_ in
            let _4 = _40 in
            let ts = ts0 in
            let _2 = _20 in
            let _1 = _10 in
            let _endpos = _endpos__4_ in
            let _startpos = _startpos__1_ in
            
# 235 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdGetValue ts) loc )
# 2864 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2870 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2876 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv522)) : 'freshtv524)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv527 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv525 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 229 "smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetUnsatCore loc )
# 2905 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2911 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2917 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv526)) : 'freshtv528)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv531 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv529 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 232 "smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetUnsatAssumptions loc )
# 2946 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2952 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2958 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv530)) : 'freshtv532)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv535 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv533 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 226 "smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetProof loc )
# 2987 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 2993 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2999 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv534)) : 'freshtv536)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv539 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 3007 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv537 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 3013 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_kwd00_, (kwd00 : (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 3018 "smtlib/smtlib_parser.ml"
        )), _startpos_kwd00_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_kwd0_ = _endpos_kwd00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let kwd0 = kwd00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_kwd_ = _endpos_kwd0_ in
            let _startpos__1_ = _startpos__10_ in
            let kwd = kwd0 in
            let _1 = _10 in
            let _endpos = _endpos_kwd_ in
            let _startpos = _startpos__1_ in
            
# 217 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdGetOption kwd) loc )
# 3042 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3048 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3054 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv538)) : 'freshtv540)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv543 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv541 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 214 "smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetModel loc )
# 3083 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3089 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3095 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv542)) : 'freshtv544)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv547 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * 'tv_info_flag) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv545 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * 'tv_info_flag) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_iflag00_, (iflag00 : 'tv_info_flag)), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_iflag0_ = _endpos_iflag00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let iflag0 = iflag00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_iflag_ = _endpos_iflag0_ in
            let _startpos__1_ = _startpos__10_ in
            let iflag = iflag0 in
            let _1 = _10 in
            let _endpos = _endpos_iflag_ in
            let _startpos = _startpos__1_ in
            
# 211 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdGetInfo iflag) loc )
# 3126 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3132 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3138 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv546)) : 'freshtv548)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv551 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv549 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 208 "smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetAssignment loc )
# 3167 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3173 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3179 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv550)) : 'freshtv552)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv555 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv553 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 205 "smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetAssertions loc )
# 3208 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3214 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3220 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv554)) : 'freshtv556)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv559 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv557 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 202 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command CmdExit loc )
# 3249 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3255 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3261 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv558)) : 'freshtv560)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv563 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 3269 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv561 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 3275 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_s00_, (s00 : (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 3280 "smtlib/smtlib_parser.ml"
        )), _startpos_s00_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_s0_ = _endpos_s00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let s0 = s00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_s_ = _endpos_s0_ in
            let _startpos__1_ = _startpos__10_ in
            let s = s0 in
            let _1 = _10 in
            let _endpos = _endpos_s_ in
            let _startpos = _startpos__1_ in
            
# 199 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdEcho s) loc )
# 3304 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3310 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3316 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv562)) : 'freshtv564)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv567 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv565 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_symb00_, _, (symb00 : 'tv_symbol), _startpos_symb00_), _startpos__300_), _, (symbs00 : 'tv_nonempty_list_symbol_)), _endpos__500_), _endpos_so00_, _, (so00 : 'tv_sort)), _endpos__31_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _31 = () in
        let _500 = () in
        let _300 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_so0_ = _endpos_so00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _31 in
          let so0 = so00 in
          let _50 = _500 in
          let symbs0 = symbs00 in
          let _30 = _300 in
          let symb0 = symb00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_so_ = _endpos_so0_ in
            let _startpos__1_ = _startpos__10_ in
            let so = so0 in
            let _5 = _50 in
            let symbs = symbs0 in
            let _3 = _30 in
            let symb = symb0 in
            let _1 = _10 in
            let _endpos = _endpos_so_ in
            let _startpos = _startpos__1_ in
            
# 196 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdDefineSort (symb, symbs, so)) loc )
# 3357 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3363 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3369 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv566)) : 'freshtv568)
    | MenhirState202 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv571 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv569 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _startpos__200_), _, (frdefs00 : 'tv_nonempty_list_fun_rec_def_)), _endpos__400_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _400 = () in
        let _200 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__40_ = _endpos__400_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _40 = _400 in
          let frdefs0 = frdefs00 in
          let _20 = _200 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__4_ = _endpos__40_ in
            let _startpos__1_ = _startpos__10_ in
            let _4 = _40 in
            let frdefs = frdefs0 in
            let _2 = _20 in
            let _1 = _10 in
            let _endpos = _endpos__4_ in
            let _startpos = _startpos__1_ in
            
# 193 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_command (CmdDefineFunRec frdefs) loc )
# 3406 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3412 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3418 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv570)) : 'freshtv572)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv575 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_nonrec_def) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv573 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_nonrec_def) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_fdef00_, _, (fdef00 : 'tv_fun_nonrec_def)), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_fdef0_ = _endpos_fdef00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let fdef0 = fdef00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_fdef_ = _endpos_fdef0_ in
            let _startpos__1_ = _startpos__10_ in
            let fdef = fdef0 in
            let _1 = _10 in
            let _endpos = _endpos_fdef_ in
            let _startpos = _startpos__1_ in
            
# 190 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_command (CmdDefineFun fdef) loc )
# 3449 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3455 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3461 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv574)) : 'freshtv576)
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv579 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 3469 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv577 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 3475 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_symb00_, _, (symb00 : 'tv_symbol), _startpos_symb00_), _endpos_num00_, (num00 : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 3480 "smtlib/smtlib_parser.ml"
        )), _startpos_num00_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_num0_ = _endpos_num00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let num0 = num00 in
          let symb0 = symb00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_num_ = _endpos_num0_ in
            let _startpos__1_ = _startpos__10_ in
            let num = num0 in
            let symb = symb0 in
            let _1 = _10 in
            let _endpos = _endpos_num_ in
            let _startpos = _startpos__1_ in
            
# 187 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdDeclareSort(symb, num)) loc )
# 3506 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3512 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3518 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv578)) : 'freshtv580)
    | MenhirState225 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv583 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv581 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((((((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_symb00_, _, (symb00 : 'tv_symbol), _startpos_symb00_), _, (polys00 : 'tv_option_poly_parameters_)), _startpos__400_), _, (sorts00 : 'tv_list_sort_)), _endpos__600_), _endpos_so00_, _, (so00 : 'tv_sort)), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _600 = () in
        let _400 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_so0_ = _endpos_so00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let so0 = so00 in
          let _60 = _600 in
          let sorts0 = sorts00 in
          let _40 = _400 in
          let polys0 = polys00 in
          let symb0 = symb00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_so_ = _endpos_so0_ in
            let _startpos__1_ = _startpos__10_ in
            let so = so0 in
            let _6 = _60 in
            let sorts = sorts0 in
            let _4 = _40 in
            let polys = polys0 in
            let symb = symb0 in
            let _1 = _10 in
            let _endpos = _endpos_so_ in
            let _startpos = _startpos__1_ in
            
# 184 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdDeclareFun (symb, polys, sorts, so)) loc )
# 3561 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3567 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3573 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv582)) : 'freshtv584)
    | MenhirState230 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv587 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv585 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_symb00_, _, (symb00 : 'tv_symbol), _startpos_symb00_), _endpos_so00_, _, (so00 : 'tv_sort)), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_so0_ = _endpos_so00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let so0 = so00 in
          let symb0 = symb00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_so_ = _endpos_so0_ in
            let _startpos__1_ = _startpos__10_ in
            let so = so0 in
            let symb = symb0 in
            let _1 = _10 in
            let _endpos = _endpos_so_ in
            let _startpos = _startpos__1_ in
            
# 180 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdDeclareConst(symb, so)) loc )
# 3606 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3612 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3618 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv586)) : 'freshtv588)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv591 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv589 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__11_), _endpos__100_, _startpos__100_), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos__10_ = _endpos__100_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos__1_ = _endpos__10_ in
            let _startpos__1_ = _startpos__10_ in
            let _1 = _10 in
            let _endpos = _endpos__1_ in
            let _startpos = _startpos__1_ in
            
# 178 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_command CmdCheckSat loc )
# 3646 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3652 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3658 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv590)) : 'freshtv592)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv595 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv593 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__11_), _startpos__100_), _endpos_t00_, _, (t00 : 'tv_term)), _endpos__30_), _, (xs : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_xs_) = _menhir_stack in
        let _30 = () in
        let _100 = () in
        let _11 = () in
        let _startpos = _startpos__11_ in
        let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = let x =
          let _endpos_t0_ = _endpos_t00_ in
          let _startpos__10_ = _startpos__100_ in
          let _3 = _30 in
          let t0 = t00 in
          let _10 = _100 in
          let _1 = _11 in
          let x =
            let _endpos_t_ = _endpos_t0_ in
            let _startpos__1_ = _startpos__10_ in
            let t = t0 in
            let _1 = _10 in
            let _endpos = _endpos_t_ in
            let _startpos = _startpos__1_ in
            
# 176 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_command (CmdAssert t) loc )
# 3688 "smtlib/smtlib_parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3694 "smtlib/smtlib_parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3700 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv594)) : 'freshtv596)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv613 * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv609 * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv605 * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv603 * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos__2_ : Lexing.position) = _endpos in
                ((let ((((_menhir_stack, _startpos__11_), _endpos__100_), _, (x00 : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_x00_), _endpos__30_) = _menhir_stack in
                let _2 = () in
                let _30 = () in
                let _100 = () in
                let _11 = () in
                let _v : (
# 145 "smtlib/smtlib_parser.mly"
       (Smtlib.model)
# 3732 "smtlib/smtlib_parser.ml"
                ) = let commands =
                  let _3 = _30 in
                  let x0 = x00 in
                  let _10 = _100 in
                  let _1 = _11 in
                  let x =
                    let x = x0 in
                    let _1 = _10 in
                    
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3744 "smtlib/smtlib_parser.ml"
                    
                  in
                  
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3750 "smtlib/smtlib_parser.ml"
                  
                in
                let _startpos_commands_ = _startpos__11_ in
                let _endpos = _endpos__2_ in
                let _startpos = _startpos_commands_ in
                
# 164 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_model commands loc
   )
# 3761 "smtlib/smtlib_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv601) = _menhir_stack in
                let (_v : (
# 145 "smtlib/smtlib_parser.mly"
       (Smtlib.model)
# 3768 "smtlib/smtlib_parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv599) = Obj.magic _menhir_stack in
                let (_v : (
# 145 "smtlib/smtlib_parser.mly"
       (Smtlib.model)
# 3775 "smtlib/smtlib_parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv597) = Obj.magic _menhir_stack in
                let ((_1 : (
# 145 "smtlib/smtlib_parser.mly"
       (Smtlib.model)
# 3782 "smtlib/smtlib_parser.ml"
                )) : (
# 145 "smtlib/smtlib_parser.mly"
       (Smtlib.model)
# 3786 "smtlib/smtlib_parser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv598)) : 'freshtv600)) : 'freshtv602)) : 'freshtv604)) : 'freshtv606)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv607 * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv608)) : 'freshtv610)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv611 * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv627 * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv623 * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv621 * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos__2_ : Lexing.position) = _endpos in
            ((let (_menhir_stack, _menhir_s, (commands : 'tv_list_delimited_LPAREN_command_RPAREN__), _startpos_commands_) = _menhir_stack in
            let _2 = () in
            let _v : (
# 143 "smtlib/smtlib_parser.mly"
       (Smtlib.script)
# 3821 "smtlib/smtlib_parser.ml"
            ) = let _endpos = _endpos__2_ in
            let _startpos = _startpos_commands_ in
            
# 156 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_script commands loc )
# 3828 "smtlib/smtlib_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv619) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 143 "smtlib/smtlib_parser.mly"
       (Smtlib.script)
# 3836 "smtlib/smtlib_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv617) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 143 "smtlib/smtlib_parser.mly"
       (Smtlib.script)
# 3844 "smtlib/smtlib_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv615) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 143 "smtlib/smtlib_parser.mly"
       (Smtlib.script)
# 3852 "smtlib/smtlib_parser.ml"
            )) : (
# 143 "smtlib/smtlib_parser.mly"
       (Smtlib.script)
# 3856 "smtlib/smtlib_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv616)) : 'freshtv618)) : 'freshtv620)) : 'freshtv622)) : 'freshtv624)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv625 * _menhir_state * 'tv_list_delimited_LPAREN_command_RPAREN__ * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv626)) : 'freshtv628)
    | _ ->
        _menhir_fail ()

and _menhir_reduce67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_, _endpos) = Obj.magic _menhir_stack in
    let _v : 'tv_option_NUMERAL_ = 
# 100 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 3875 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_option_NUMERAL_ _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_run51 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 3882 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv487) = Obj.magic _menhir_stack in
    let (_endpos_x_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 3893 "smtlib/smtlib_parser.ml"
    )) : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 3897 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos_x_ : Lexing.position) = _startpos in
    ((let _endpos = _endpos_x_ in
    let _v : 'tv_option_NUMERAL_ = 
# 102 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 3904 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_option_NUMERAL_ _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv488)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 3911 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINARY _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BOOL _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DECIMAL _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | HEXADECIMAL _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState5 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BINARY _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BOOL _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DECIMAL _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXADECIMAL _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | KEYWORD _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUMERAL _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UNDERSCORE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | RPAREN ->
            _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv484)
    | NUMERAL _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | KEYWORD _ | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * Lexing.position * _menhir_state * (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 3976 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_kwd_, _menhir_s, (kwd : (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 3981 "smtlib/smtlib_parser.ml"
        )), _startpos_kwd_) = _menhir_stack in
        let _startpos = _startpos_kwd_ in
        let _endpos = _endpos_kwd_ in
        let _v : 'tv_attribute = let _endpos = _endpos_kwd_ in
        let _startpos = _startpos_kwd_ in
        
# 396 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_attribute (AttrKeyword kwd) loc )
# 3991 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_attribute _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv486)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run183 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState183 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState183 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183

and _menhir_goto_symbol : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_symbol -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState10 | MenhirState23 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_symb_, _menhir_s, (symb : 'tv_symbol), _startpos_symb_) = _menhir_stack in
        let _v : 'tv_sexpr = let _endpos = _endpos_symb_ in
        let _startpos = _startpos_symb_ in
        
# 384 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_sexpr (SexprSymbol symb) loc )
# 4030 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_sexpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_symb_, _menhir_s, (symb : 'tv_symbol), _startpos_symb_) = _menhir_stack in
        let _endpos = _endpos_symb_ in
        let _v : 'tv_attribute_value = let _endpos = _endpos_symb_ in
        let _startpos = _startpos_symb_ in
        
# 372 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_attr_value (AttrValSymbol symb) loc )
# 4046 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_attribute_value _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv438)) : 'freshtv440)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv445 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv443 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)) : 'freshtv446)
    | MenhirState75 | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv447 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NUMERAL _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv448)
    | MenhirState249 | MenhirState235 | MenhirState228 | MenhirState223 | MenhirState220 | MenhirState219 | MenhirState196 | MenhirState195 | MenhirState186 | MenhirState177 | MenhirState64 | MenhirState128 | MenhirState129 | MenhirState65 | MenhirState122 | MenhirState119 | MenhirState113 | MenhirState107 | MenhirState101 | MenhirState92 | MenhirState79 | MenhirState82 | MenhirState81 | MenhirState80 | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_symb_, _menhir_s, (symb : 'tv_symbol), _startpos_symb_) = _menhir_stack in
        let _startpos = _startpos_symb_ in
        let _endpos = _endpos_symb_ in
        let _v : 'tv_identifier = let _endpos = _endpos_symb_ in
        let _startpos = _startpos_symb_ in
        
# 303 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_identifier (IdSymbol symb) loc )
# 4105 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_identifier _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv450)) : 'freshtv452)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BINARY _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BOOL _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DECIMAL _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXADECIMAL _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUMERAL _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv454)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv455 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState107 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState107 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv456)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv461 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv457 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState173 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState173 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState173) : 'freshtv458)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv459 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)) : 'freshtv462)
    | MenhirState174 | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState174 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState174 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv463 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_symbol), _startpos_x_) = _menhir_stack in
            let _v : 'tv_nonempty_list_symbol_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 4198 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_nonempty_list_symbol_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174) : 'freshtv466)
    | MenhirState206 | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PAR ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | LPAREN ->
            _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv468)
    | MenhirState211 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv477 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NUMERAL _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv473 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_v : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 4232 "smtlib/smtlib_parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv469 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 4244 "smtlib/smtlib_parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EOF | RPAREN ->
                    _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState214
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState214) : 'freshtv470)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv471 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 4266 "smtlib/smtlib_parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _, _menhir_s, _, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv475 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)) : 'freshtv478)
    | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv479 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PAR ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState217
        | LPAREN ->
            _menhir_reduce69 _menhir_env (Obj.magic _menhir_stack) MenhirState217
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState217) : 'freshtv480)
    | MenhirState227 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv481 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState228 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState228 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState228) : 'freshtv482)
    | _ ->
        _menhir_fail ()

and _menhir_run12 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * _menhir_state -> _menhir_state -> (
# 135 "smtlib/smtlib_parser.mly"
       (string)
# 4313 "smtlib/smtlib_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NUMERAL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv429 * _menhir_state * Lexing.position) * _menhir_state) * _menhir_state * (
# 135 "smtlib/smtlib_parser.mly"
       (string)
# 4325 "smtlib/smtlib_parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_v : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 4331 "smtlib/smtlib_parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv425 * _menhir_state * Lexing.position) * _menhir_state) * _menhir_state * (
# 135 "smtlib/smtlib_parser.mly"
       (string)
# 4343 "smtlib/smtlib_parser.ml"
            )) * Lexing.position * (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 4347 "smtlib/smtlib_parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv423 * _menhir_state * Lexing.position) * _menhir_state) * _menhir_state * (
# 135 "smtlib/smtlib_parser.mly"
       (string)
# 4355 "smtlib/smtlib_parser.ml"
            )) * Lexing.position * (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 4359 "smtlib/smtlib_parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos__5_ : Lexing.position) = _endpos in
            ((let ((((_menhir_stack, _menhir_s, _startpos__1_), _), _, (value : (
# 135 "smtlib/smtlib_parser.mly"
       (string)
# 4365 "smtlib/smtlib_parser.ml"
            ))), _endpos_size_, (size : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 4369 "smtlib/smtlib_parser.ml"
            )), _startpos_size_) = _menhir_stack in
            let _5 = () in
            let _2 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__5_ in
            let _v : 'tv_spec_constant = 
# 364 "smtlib/smtlib_parser.mly"
  ( CstDecimalSize(value, size) )
# 4379 "smtlib/smtlib_parser.ml"
             in
            _menhir_goto_spec_constant _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv424)) : 'freshtv426)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv427 * _menhir_state * Lexing.position) * _menhir_state) * _menhir_state * (
# 135 "smtlib/smtlib_parser.mly"
       (string)
# 4389 "smtlib/smtlib_parser.ml"
            )) * Lexing.position * (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 4393 "smtlib/smtlib_parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv431 * _menhir_state * Lexing.position) * _menhir_state) * _menhir_state * (
# 135 "smtlib/smtlib_parser.mly"
       (string)
# 4404 "smtlib/smtlib_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState75 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState75 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState91 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState91 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91

and _menhir_run106 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState76 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState76 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_goto_spec_constant : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_spec_constant -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState10 | MenhirState23 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389 * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_sc_, _menhir_s, (sc : 'tv_spec_constant), _startpos_sc_) = _menhir_stack in
        let _v : 'tv_sexpr = let _endpos = _endpos_sc_ in
        let _startpos = _startpos_sc_ in
        
# 381 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_sexpr (SexprConstant sc) loc )
# 4487 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_sexpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)) : 'freshtv392)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_sc_, _menhir_s, (sc : 'tv_spec_constant), _startpos_sc_) = _menhir_stack in
        let _endpos = _endpos_sc_ in
        let _v : 'tv_attribute_value = let _endpos = _endpos_sc_ in
        let _startpos = _startpos_sc_ in
        
# 369 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_attr_value (AttrValSpecConstant sc) loc )
# 4503 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_attribute_value _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv394)) : 'freshtv396)
    | MenhirState249 | MenhirState235 | MenhirState196 | MenhirState64 | MenhirState128 | MenhirState129 | MenhirState122 | MenhirState119 | MenhirState113 | MenhirState101 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399 * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : 'tv_spec_constant), _startpos__1_) = _menhir_stack in
        let _endpos = _endpos__1_ in
        let _v : 'tv_term = let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 318 "smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermSpecConstant _1) loc )
# 4519 "smtlib/smtlib_parser.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv398)) : 'freshtv400)
    | MenhirState250 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv421 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv417 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv413 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EOF ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv409 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv407 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                    let (_endpos__7_ : Lexing.position) = _endpos in
                    ((let ((((((_menhir_stack, _startpos__1_), _startpos__2_), _endpos_t_, _, (t : 'tv_term)), _endpos_v_, _, (v : 'tv_spec_constant), _startpos_v_), _endpos__5_), _endpos__6_) = _menhir_stack in
                    let _7 = () in
                    let _6 = () in
                    let _5 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : (
# 147 "smtlib/smtlib_parser.mly"
       (Smtlib.term * Smtlib.constant)
# 4560 "smtlib/smtlib_parser.ml"
                    ) = 
# 171 "smtlib/smtlib_parser.mly"
  ( t, v )
# 4564 "smtlib/smtlib_parser.ml"
                     in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv405) = _menhir_stack in
                    let (_v : (
# 147 "smtlib/smtlib_parser.mly"
       (Smtlib.term * Smtlib.constant)
# 4571 "smtlib/smtlib_parser.ml"
                    )) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
                    let (_v : (
# 147 "smtlib/smtlib_parser.mly"
       (Smtlib.term * Smtlib.constant)
# 4578 "smtlib/smtlib_parser.ml"
                    )) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
                    let ((_1 : (
# 147 "smtlib/smtlib_parser.mly"
       (Smtlib.term * Smtlib.constant)
# 4585 "smtlib/smtlib_parser.ml"
                    )) : (
# 147 "smtlib/smtlib_parser.mly"
       (Smtlib.term * Smtlib.constant)
# 4589 "smtlib/smtlib_parser.ml"
                    )) = _v in
                    (Obj.magic _1 : 'freshtv402)) : 'freshtv404)) : 'freshtv406)) : 'freshtv408)) : 'freshtv410)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv411 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _, _menhir_s, _, _), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv415 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)) : 'freshtv418)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv419 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position * _menhir_state * 'tv_spec_constant * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)) : 'freshtv422)
    | _ ->
        _menhir_fail ()

and _menhir_reduce16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_, _startpos) = Obj.magic _menhir_stack in
    let _v : 'tv_list_delimited_LPAREN_command_RPAREN__ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 4622 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BINARY _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BOOL _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DECIMAL _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXADECIMAL _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUMERAL _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235) : 'freshtv256)
    | CHECKSAT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv257 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState233
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv259 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | DECLARECONST ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState227 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState227 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState227) : 'freshtv264)
    | DECLAREFUN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState216 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState216 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState216) : 'freshtv266)
    | DECLARESORT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState211 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState211 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211) : 'freshtv268)
    | DEFINEFUN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState206 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState206 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206) : 'freshtv270)
    | DEFINEFUNREC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv271 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run183 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState182) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv273 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | DEFINESORT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171) : 'freshtv278)
    | ECHO ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STRING _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv283 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_v : (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 4818 "smtlib/smtlib_parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv279 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 4830 "smtlib/smtlib_parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EOF | RPAREN ->
                    _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169) : 'freshtv280)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv281 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 4852 "smtlib/smtlib_parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s, _), _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv285 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
    | EXIT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv289 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv291 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | GETASSERTIONS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv296)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv297 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)) : 'freshtv300)
    | GETASSIGNMENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv301 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | GETINFO ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | KEYWORD _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv317) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_v : (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 4974 "smtlib/smtlib_parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv315) = Obj.magic _menhir_stack in
            let (_endpos_kwd_ : Lexing.position) = _endpos in
            let ((kwd : (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 4984 "smtlib/smtlib_parser.ml"
            )) : (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 4988 "smtlib/smtlib_parser.ml"
            )) = _v in
            let (_startpos_kwd_ : Lexing.position) = _startpos in
            ((let _endpos = _endpos_kwd_ in
            let _v : 'tv_info_flag = let _endpos = _endpos_kwd_ in
            let _startpos = _startpos_kwd_ in
            
# 411 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_info_flag (InfoFlagKeyword kwd) loc )
# 4998 "smtlib/smtlib_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv313) = _menhir_stack in
            let (_endpos : Lexing.position) = _endpos in
            let (_v : 'tv_info_flag) = _v in
            ((let _menhir_stack = (_menhir_stack, _endpos, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * 'tv_info_flag) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv307 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * 'tv_info_flag) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EOF | RPAREN ->
                    _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState156
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv308)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv309 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * 'tv_info_flag) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s, _), _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)) : 'freshtv314)) : 'freshtv316)) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv319 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | GETMODEL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv325 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
    | GETOPTION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | KEYWORD _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv333 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_v : (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 5087 "smtlib/smtlib_parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv329 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 5099 "smtlib/smtlib_parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EOF | RPAREN ->
                    _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState148
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv330)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv331 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 5121 "smtlib/smtlib_parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s, _), _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)) : 'freshtv334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | GETPROOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv339 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv340)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv341 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)) : 'freshtv344)
    | GETUNSATASSUMPTIONS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv345 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
    | GETUNSATCORE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv355 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | GETVALUE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv357 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BINARY _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BOOL _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DECIMAL _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXADECIMAL _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUMERAL _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv358)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)) : 'freshtv362)
    | METAINFO ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | KEYWORD _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState59 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv364)
    | POP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NUMERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState55 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            _menhir_reduce67 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv366)
    | PUSH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv367 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NUMERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            _menhir_reduce67 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv368)
    | RESET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv373 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv369 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv370)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv371 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
    | RESETASSERTIONS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv375 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv376)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv377 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
    | SETINFO ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv381 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | KEYWORD _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState40 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv382)
    | SETLOGIC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv384)
    | SETOPTION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | KEYWORD _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv386)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState251 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState250 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState249 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv68)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv70)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv71 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv75 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState230 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv77 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState228 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState227 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState225 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv83 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv85 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sort_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv89 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv95 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position * (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 5523 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _, _menhir_s, _, _), _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState211 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv99 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_fun_nonrec_def) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState204 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_fun_rec_def) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState202 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv105 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_fun_rec_def_) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv107 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sorted_var_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv109 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) * _menhir_state * 'tv_list_sorted_var_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_sorted_var) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * _menhir_state * 'tv_option_poly_parameters_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState182 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv123 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) * Lexing.position) * Lexing.position * _menhir_state * 'tv_sort) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv125 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_symbol_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv129 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv133 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 5622 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _), _), _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv141 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * 'tv_info_flag) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _), _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv145 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 5656 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _), _), _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv147 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv153 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_nonempty_list_term_) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_qual_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv165 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv169 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_sorted_var_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_sorted_var) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv179 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) * _menhir_state * 'tv_nonempty_list_var_binding_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_var_binding) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * Lexing.position * _menhir_state * 'tv_sort) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_identifier * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_index) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv215 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv219 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv223 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position * _menhir_state * 'tv_option_NUMERAL_) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv227 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv229 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv231 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_attribute * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv235 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_symbol * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv239 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_smt_option) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_sexpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * Lexing.position * _menhir_state * (
# 139 "smtlib/smtlib_parser.mly"
       (string)
# 5920 "smtlib/smtlib_parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv254)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 140 "smtlib/smtlib_parser.mly"
       (string)
# 5937 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv61) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 140 "smtlib/smtlib_parser.mly"
       (string)
# 5948 "smtlib/smtlib_parser.ml"
    )) : (
# 140 "smtlib/smtlib_parser.mly"
       (string)
# 5952 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_symbol = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    
# 311 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_symbol (SimpleSymbol _1) loc )
# 5962 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_symbol _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv62)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 5969 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv59) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 5980 "smtlib/smtlib_parser.ml"
    )) : (
# 137 "smtlib/smtlib_parser.mly"
       (string)
# 5984 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_spec_constant = 
# 359 "smtlib/smtlib_parser.mly"
          ( CstString _1 )
# 5992 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_spec_constant _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv60)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 141 "smtlib/smtlib_parser.mly"
       (string)
# 5999 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 141 "smtlib/smtlib_parser.mly"
       (string)
# 6010 "smtlib/smtlib_parser.ml"
    )) : (
# 141 "smtlib/smtlib_parser.mly"
       (string)
# 6014 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_symbol = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    
# 313 "smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_symbol (QuotedSymbol _1) loc )
# 6024 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_symbol _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv58)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 6031 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 6042 "smtlib/smtlib_parser.ml"
    )) : (
# 132 "smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 6046 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_spec_constant = 
# 358 "smtlib/smtlib_parser.mly"
          ( CstNumeral _1 )
# 6054 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_spec_constant _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv56)

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AS ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | BANG ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState65 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BINARY _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BOOL _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DECIMAL _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXADECIMAL _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUMERAL _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv32)
    | EXISTS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState65 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | FORALL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState65 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv39 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv40)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)) : 'freshtv44)
    | LET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState65 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv45 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv46)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv47 * _menhir_state * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState65 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AS ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | UNDERSCORE ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv52)
    | QUOTEDSYMBOL _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SYMBOL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNDERSCORE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState65 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BV_NUMERAL _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | QUOTEDSYMBOL _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SYMBOL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run17 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 134 "smtlib/smtlib_parser.mly"
       (string)
# 6230 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 134 "smtlib/smtlib_parser.mly"
       (string)
# 6241 "smtlib/smtlib_parser.ml"
    )) : (
# 134 "smtlib/smtlib_parser.mly"
       (string)
# 6245 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_spec_constant = 
# 361 "smtlib/smtlib_parser.mly"
              ( CstHexadecimal _1 )
# 6253 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_spec_constant _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv30)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 133 "smtlib/smtlib_parser.mly"
       (string)
# 6260 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 133 "smtlib/smtlib_parser.mly"
       (string)
# 6271 "smtlib/smtlib_parser.ml"
    )) : (
# 133 "smtlib/smtlib_parser.mly"
       (string)
# 6275 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_spec_constant = 
# 357 "smtlib/smtlib_parser.mly"
          ( CstDecimal _1 )
# 6283 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_spec_constant _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv28)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 138 "smtlib/smtlib_parser.mly"
       (bool)
# 6290 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 138 "smtlib/smtlib_parser.mly"
       (bool)
# 6301 "smtlib/smtlib_parser.ml"
    )) : (
# 138 "smtlib/smtlib_parser.mly"
       (bool)
# 6305 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_spec_constant = 
# 360 "smtlib/smtlib_parser.mly"
          ( CstBool _1 )
# 6313 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_spec_constant _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv26)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 136 "smtlib/smtlib_parser.mly"
       (string)
# 6320 "smtlib/smtlib_parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_endpos__1_ : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 136 "smtlib/smtlib_parser.mly"
       (string)
# 6331 "smtlib/smtlib_parser.ml"
    )) : (
# 136 "smtlib/smtlib_parser.mly"
       (string)
# 6335 "smtlib/smtlib_parser.ml"
    )) = _v in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_spec_constant = 
# 356 "smtlib/smtlib_parser.mly"
          ( CstBinary _1 )
# 6343 "smtlib/smtlib_parser.ml"
     in
    _menhir_goto_spec_constant _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv24)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and _menhir_init : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> _menhir_env =
  fun lexer lexbuf ->
    let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and model : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 145 "smtlib/smtlib_parser.mly"
       (Smtlib.model)
# 6372 "smtlib/smtlib_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MODEL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv13 * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv15 * Lexing.position) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv20)) : 'freshtv22))

and script : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 143 "smtlib/smtlib_parser.mly"
       (Smtlib.script)
# 6421 "smtlib/smtlib_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState243) : 'freshtv12))

and value : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 147 "smtlib/smtlib_parser.mly"
       (Smtlib.term * Smtlib.constant)
# 6442 "smtlib/smtlib_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1 * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BINARY _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState249 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BOOL _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState249 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DECIMAL _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState249 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXADECIMAL _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState249 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUMERAL _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState249 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUOTEDSYMBOL _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState249 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState249 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SYMBOL _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState249 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState249) : 'freshtv2)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv3 * Lexing.position) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv4)) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv8)) : 'freshtv10))

# 219 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
  


# 6506 "smtlib/smtlib_parser.ml"
