
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | XOR
    | WRITE
    | WORDSIZE
    | VAR
    | UNDEF
    | UNCONTROLLED
    | TRUE
    | THEN
    | TEMPTAG
    | TEMPORARY
    | SUPER
    | STRING of (
# 67 "parser/parser.mly"
       (string)
# 22 "parser/parser.ml"
  )
    | STOP
    | STAR_U
    | STAR_S
    | STAR
    | STACK
    | SOK
    | SLASH_U
    | SLASH_S
    | SKO
    | SEMICOLON
    | RSHIFTU
    | RSHIFTS
    | RROTATE
    | RPAR
    | RETURNFLAG
    | REGISTER
    | READ
    | REACH
    | RBRACKETU
    | RBRACKETS
    | RBRACKET
    | RBRACE
    | PRINT
    | PLUS
    | PERMISSIONS
    | OR
    | NWRITE
    | NREAD
    | NOT
    | NONDETASSUME
    | NONDET
    | NEXEC
    | NEQ
    | MODU
    | MODS
    | MINUS
    | MALLOC
    | LTU
    | LTS
    | LSHIFT
    | LROTATE
    | LPAR
    | LITTLE
    | LEU
    | LES
    | LBRACKET
    | LBRACE
    | INT of (
# 63 "parser/parser.mly"
       (string)
# 74 "parser/parser.ml"
  )
    | INFER
    | IF
    | IDENT of (
# 64 "parser/parser.mly"
       (string)
# 81 "parser/parser.ml"
  )
    | HEXA of (
# 65 "parser/parser.mly"
       (string)
# 86 "parser/parser.ml"
  )
    | GTU
    | GTS
    | GOTO
    | GEU
    | GES
    | FROMFILE
    | FROM
    | FREE
    | FLAGTAG
    | FLAG
    | FILE
    | FALSE
    | EXTU
    | EXTS
    | EXEC
    | EQUAL
    | EOF
    | ENUMERATE
    | ENTRYPOINT
    | ENDIANNESS
    | END
    | ELSE
    | DOTDOT
    | DOT
    | CUT
    | CONSTANT
    | CONSEQUENT
    | CONCAT
    | COMMA
    | COLON
    | CALLFLAG
    | BIN of (
# 66 "parser/parser.mly"
       (string)
# 122 "parser/parser.ml"
  )
    | BIG
    | BEGIN
    | AT
    | ASSUME
    | ASSIGN
    | ASSERT
    | AS
    | ARROWINV
    | ARROW
    | ANNOT
    | AND
    | ALTERNATIVE
    | ALTERNATE
  
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
  | MenhirState564
  | MenhirState559
  | MenhirState556
  | MenhirState553
  | MenhirState552
  | MenhirState548
  | MenhirState535
  | MenhirState534
  | MenhirState531
  | MenhirState528
  | MenhirState527
  | MenhirState524
  | MenhirState523
  | MenhirState522
  | MenhirState520
  | MenhirState518
  | MenhirState513
  | MenhirState511
  | MenhirState509
  | MenhirState505
  | MenhirState504
  | MenhirState503
  | MenhirState501
  | MenhirState498
  | MenhirState495
  | MenhirState494
  | MenhirState493
  | MenhirState491
  | MenhirState489
  | MenhirState486
  | MenhirState481
  | MenhirState477
  | MenhirState472
  | MenhirState468
  | MenhirState462
  | MenhirState460
  | MenhirState455
  | MenhirState453
  | MenhirState448
  | MenhirState445
  | MenhirState443
  | MenhirState441
  | MenhirState438
  | MenhirState437
  | MenhirState436
  | MenhirState435
  | MenhirState430
  | MenhirState427
  | MenhirState426
  | MenhirState425
  | MenhirState418
  | MenhirState415
  | MenhirState413
  | MenhirState410
  | MenhirState407
  | MenhirState406
  | MenhirState400
  | MenhirState398
  | MenhirState395
  | MenhirState379
  | MenhirState369
  | MenhirState367
  | MenhirState365
  | MenhirState363
  | MenhirState361
  | MenhirState352
  | MenhirState350
  | MenhirState348
  | MenhirState346
  | MenhirState344
  | MenhirState342
  | MenhirState340
  | MenhirState338
  | MenhirState336
  | MenhirState334
  | MenhirState332
  | MenhirState330
  | MenhirState328
  | MenhirState326
  | MenhirState324
  | MenhirState322
  | MenhirState320
  | MenhirState318
  | MenhirState316
  | MenhirState314
  | MenhirState312
  | MenhirState309
  | MenhirState307
  | MenhirState305
  | MenhirState304
  | MenhirState303
  | MenhirState302
  | MenhirState301
  | MenhirState298
  | MenhirState296
  | MenhirState274
  | MenhirState261
  | MenhirState248
  | MenhirState245
  | MenhirState244
  | MenhirState232
  | MenhirState229
  | MenhirState224
  | MenhirState221
  | MenhirState216
  | MenhirState213
  | MenhirState212
  | MenhirState208
  | MenhirState203
  | MenhirState200
  | MenhirState199
  | MenhirState197
  | MenhirState196
  | MenhirState191
  | MenhirState190
  | MenhirState185
  | MenhirState177
  | MenhirState175
  | MenhirState172
  | MenhirState167
  | MenhirState161
  | MenhirState147
  | MenhirState146
  | MenhirState136
  | MenhirState135
  | MenhirState132
  | MenhirState130
  | MenhirState126
  | MenhirState124
  | MenhirState121
  | MenhirState119
  | MenhirState118
  | MenhirState117
  | MenhirState116
  | MenhirState115
  | MenhirState113
  | MenhirState111
  | MenhirState99
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState73
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState64
  | MenhirState63
  | MenhirState62
  | MenhirState61
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState53
  | MenhirState52
  | MenhirState51
  | MenhirState50
  | MenhirState49
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState33
  | MenhirState32
  | MenhirState30
  | MenhirState29
  | MenhirState26
  | MenhirState24
  | MenhirState23
  | MenhirState22
  | MenhirState20
  | MenhirState15
  | MenhirState13
  | MenhirState2
  | MenhirState1
  | MenhirState0

# 22 "parser/parser.mly"
  
  open Dba
  open Parse_helpers

  let unknown_successor = -1
  let unknown_bitsize = Size.Bit.create 1

  let default_endianness = Utils.get_opt_or_default Dba.LittleEndian

  let mk_declaration tags name size =
     Declarations.add name size tags;
     let bitsize = Size.Bit.create size in
     Dba.LValue.var name ~bitsize tags


  let _dummy_addr =
    Dba_types.Caddress.create Bitvector.zero 0


# 382 "parser/parser.ml"

let rec _menhir_goto_permission : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_permission -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv2239 * _menhir_state * 'tv_permission) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONSTANT ->
        _menhir_run397 _menhir_env (Obj.magic _menhir_stack) MenhirState400
    | MALLOC ->
        _menhir_run394 _menhir_env (Obj.magic _menhir_stack) MenhirState400
    | STACK ->
        _menhir_run297 _menhir_env (Obj.magic _menhir_stack) MenhirState400
    | END ->
        _menhir_reduce199 _menhir_env (Obj.magic _menhir_stack) MenhirState400
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState400) : 'freshtv2240)

and _menhir_goto_nonempty_list_predicate_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_predicate_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState379 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2219 * _menhir_state * 'tv_predicate) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_predicate_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2217 * _menhir_state * 'tv_predicate) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_predicate_) : 'tv_nonempty_list_predicate_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_predicate)) = _menhir_stack in
        let _v : 'tv_nonempty_list_predicate_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 421 "parser/parser.ml"
         in
        _menhir_goto_nonempty_list_predicate_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2218)) : 'freshtv2220)
    | MenhirState398 | MenhirState395 | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2237) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_predicate_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2235) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((predicates : 'tv_nonempty_list_predicate_) : 'tv_nonempty_list_predicate_) = _v in
        ((let _v : 'tv_predicates = 
# 206 "parser/parser.mly"
                                        ( Mk.Predicates.of_list predicates )
# 436 "parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2233) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_predicates) = _v in
        ((match _menhir_s with
        | MenhirState298 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2223 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_predicates) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2221 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((preds : 'tv_predicates) : 'tv_predicates) = _v in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _2 = () in
            let _100 = () in
            let _v : 'tv_permission = let region =
              let _10 = _100 in
              let region =
                let _1 = _10 in
                
# 261 "parser/parser.mly"
            ( `Stack )
# 462 "parser/parser.ml"
                
              in
              
# 265 "parser/parser.mly"
                  ( region )
# 468 "parser/parser.ml"
              
            in
            
# 202 "parser/parser.mly"
   ( region, fst preds, snd preds )
# 474 "parser/parser.ml"
             in
            _menhir_goto_permission _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2222)) : 'freshtv2224)
        | MenhirState395 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2227 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_predicates) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2225 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((preds : 'tv_predicates) : 'tv_predicates) = _v in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _2 = () in
            let _10 = () in
            let _v : 'tv_permission = let region =
              let _1 = _10 in
              
# 266 "parser/parser.mly"
                  ( Dba_types.Region.malloc (Machine.Word_size.get ()))
# 494 "parser/parser.ml"
              
            in
            
# 202 "parser/parser.mly"
   ( region, fst preds, snd preds )
# 500 "parser/parser.ml"
             in
            _menhir_goto_permission _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2226)) : 'freshtv2228)
        | MenhirState398 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2231 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_predicates) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2229 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((preds : 'tv_predicates) : 'tv_predicates) = _v in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _2 = () in
            let _100 = () in
            let _v : 'tv_permission = let region =
              let _10 = _100 in
              let region =
                let _1 = _10 in
                
# 260 "parser/parser.mly"
            ( `Constant )
# 522 "parser/parser.ml"
                
              in
              
# 265 "parser/parser.mly"
                  ( region )
# 528 "parser/parser.ml"
              
            in
            
# 202 "parser/parser.mly"
   ( region, fst preds, snd preds )
# 534 "parser/parser.ml"
             in
            _menhir_goto_permission _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2230)) : 'freshtv2232)
        | _ ->
            _menhir_fail ()) : 'freshtv2234)) : 'freshtv2236)) : 'freshtv2238)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_permission_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_permission_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState400 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv2197 * _menhir_state * 'tv_permission) * _menhir_state * 'tv_list_permission_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv2195 * _menhir_state * 'tv_permission) * _menhir_state * 'tv_list_permission_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_permission)), _, (xs : 'tv_list_permission_)) = _menhir_stack in
        let _v : 'tv_list_permission_ = 
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 555 "parser/parser.ml"
         in
        _menhir_goto_list_permission_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2196)) : 'freshtv2198)
    | MenhirState296 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv2215)) * _menhir_state * 'tv_list_permission_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv2211)) * _menhir_state * 'tv_list_permission_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PERMISSIONS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv2207)) * _menhir_state * 'tv_list_permission_)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv2205)) * _menhir_state * 'tv_list_permission_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _, (permissions : 'tv_list_permission_)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_permission_block = 
# 197 "parser/parser.mly"
   ( Mk.Permissions.of_list permissions )
# 584 "parser/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv2203) = _menhir_stack in
                let (_v : 'tv_permission_block) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv2201) = Obj.magic _menhir_stack in
                let (_v : 'tv_permission_block) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv2199) = Obj.magic _menhir_stack in
                let ((x : 'tv_permission_block) : 'tv_permission_block) = _v in
                ((let _v : 'tv_option_permission_block_ = 
# 102 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 598 "parser/parser.ml"
                 in
                _menhir_goto_option_permission_block_ _menhir_env _menhir_stack _v) : 'freshtv2200)) : 'freshtv2202)) : 'freshtv2204)) : 'freshtv2206)) : 'freshtv2208)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv2209)) * _menhir_state * 'tv_list_permission_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2210)) : 'freshtv2212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv2213)) * _menhir_state * 'tv_list_permission_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2214)) : 'freshtv2216)
    | _ ->
        _menhir_fail ()

and _menhir_run300 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv2193) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_cond_addr = 
# 231 "parser/parser.mly"
               ( Dba.Expr.one )
# 628 "parser/parser.ml"
     in
    _menhir_goto_cond_addr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2194)

and _menhir_run377 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv2191) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_cond_addr = 
# 232 "parser/parser.mly"
               ( Dba.Expr.zero )
# 642 "parser/parser.ml"
     in
    _menhir_goto_cond_addr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2192)

and _menhir_goto_exec_permission : _menhir_env -> 'ttv_tail -> 'tv_exec_permission -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv2189 * _menhir_state * 'tv_cond_addr)) * 'tv_read_permission) * 'tv_write_permission) = Obj.magic _menhir_stack in
    let (_v : 'tv_exec_permission) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv2187 * _menhir_state * 'tv_cond_addr)) * 'tv_read_permission) * 'tv_write_permission) = Obj.magic _menhir_stack in
    let ((exec : 'tv_exec_permission) : 'tv_exec_permission) = _v in
    ((let (((_menhir_stack, _menhir_s, (addr : 'tv_cond_addr)), (read : 'tv_read_permission)), (write : 'tv_write_permission)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_predicate = 
# 227 "parser/parser.mly"
   ( Mk.filemode addr read write exec )
# 659 "parser/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv2185) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_predicate) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv2183 * _menhir_state * 'tv_predicate) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState379
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState379
    | FALSE ->
        _menhir_run377 _menhir_env (Obj.magic _menhir_stack) MenhirState379
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState379
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState379
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState379
    | TRUE ->
        _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState379
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState379
    | CONSTANT | END | MALLOC | STACK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2181 * _menhir_state * 'tv_predicate) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_predicate)) = _menhir_stack in
        let _v : 'tv_nonempty_list_predicate_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 700 "parser/parser.ml"
         in
        _menhir_goto_nonempty_list_predicate_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2182)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState379) : 'freshtv2184)) : 'freshtv2186)) : 'freshtv2188)) : 'freshtv2190)

and _menhir_goto_option_permission_block_ : _menhir_env -> 'ttv_tail -> 'tv_option_permission_block_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv2179 * 'tv_config) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) * 'tv_option_permission_block_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState406
    | IDENT _v ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState406 _v
    | EOF | LPAR ->
        _menhir_reduce201 _menhir_env (Obj.magic _menhir_stack) MenhirState406
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState406) : 'freshtv2180)

and _menhir_reduce199 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_permission_ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 732 "parser/parser.ml"
     in
    _menhir_goto_list_permission_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run297 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2175 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
        | EXTS ->
            _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState298
        | EXTU ->
            _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState298
        | FALSE ->
            _menhir_run377 _menhir_env (Obj.magic _menhir_stack) MenhirState298
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
        | LPAR ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState298
        | MINUS ->
            _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState298
        | NOT ->
            _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState298
        | TRUE ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState298
        | WORDSIZE ->
            _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState298
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState298) : 'freshtv2176)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2177 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2178)

and _menhir_run394 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2171 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _v
        | EXTS ->
            _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState395
        | EXTU ->
            _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState395
        | FALSE ->
            _menhir_run377 _menhir_env (Obj.magic _menhir_stack) MenhirState395
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _v
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _v
        | LPAR ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState395
        | MINUS ->
            _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState395
        | NOT ->
            _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState395
        | TRUE ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState395
        | WORDSIZE ->
            _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState395
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState395) : 'freshtv2172)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2173 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2174)

and _menhir_run397 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2167 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _v
        | EXTS ->
            _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState398
        | EXTU ->
            _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState398
        | FALSE ->
            _menhir_run377 _menhir_env (Obj.magic _menhir_stack) MenhirState398
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _v
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _v
        | LPAR ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState398
        | MINUS ->
            _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState398
        | NOT ->
            _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState398
        | TRUE ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState398
        | WORDSIZE ->
            _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState398
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState398) : 'freshtv2168)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2169 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2170)

and _menhir_goto_write_permission : _menhir_env -> 'ttv_tail -> 'tv_write_permission -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv2165 * _menhir_state * 'tv_cond_addr)) * 'tv_read_permission) * 'tv_write_permission) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXEC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2157) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2155) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : 'tv_exec_permission = 
# 220 "parser/parser.mly"
         ( true )
# 892 "parser/parser.ml"
         in
        _menhir_goto_exec_permission _menhir_env _menhir_stack _v) : 'freshtv2156)) : 'freshtv2158)
    | NEXEC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2161) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2159) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : 'tv_exec_permission = 
# 221 "parser/parser.mly"
         ( false )
# 905 "parser/parser.ml"
         in
        _menhir_goto_exec_permission _menhir_env _menhir_stack _v) : 'freshtv2160)) : 'freshtv2162)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv2163 * _menhir_state * 'tv_cond_addr)) * 'tv_read_permission) * 'tv_write_permission) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2164)) : 'freshtv2166)

and _menhir_goto_list_terminated_declaration_SEMICOLON__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_terminated_declaration_SEMICOLON__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState274 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv2149 * 'tv_config) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv2143) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PERMISSIONS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv2139) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CONSTANT ->
                    _menhir_run397 _menhir_env (Obj.magic _menhir_stack) MenhirState296
                | MALLOC ->
                    _menhir_run394 _menhir_env (Obj.magic _menhir_stack) MenhirState296
                | STACK ->
                    _menhir_run297 _menhir_env (Obj.magic _menhir_stack) MenhirState296
                | END ->
                    _menhir_reduce199 _menhir_env (Obj.magic _menhir_stack) MenhirState296
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState296) : 'freshtv2140)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv2141) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv2142)) : 'freshtv2144)
        | AT | EOF | IDENT _ | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv2145) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option_permission_block_ = 
# 100 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 962 "parser/parser.ml"
             in
            _menhir_goto_option_permission_block_ _menhir_env _menhir_stack _v) : 'freshtv2146)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2147 * 'tv_config) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2148)) : 'freshtv2150)
    | MenhirState413 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv2153 * _menhir_state * 'tv_declaration)) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv2151 * _menhir_state * 'tv_declaration)) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x0 : 'tv_declaration)), _, (xs : 'tv_list_terminated_declaration_SEMICOLON__)) = _menhir_stack in
        let _20 = () in
        let _v : 'tv_list_terminated_declaration_SEMICOLON__ = let x =
          let _2 = _20 in
          let x = x0 in
          
# 165 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 985 "parser/parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 991 "parser/parser.ml"
         in
        _menhir_goto_list_terminated_declaration_SEMICOLON__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2152)) : 'freshtv2154)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_tags_ : _menhir_env -> 'ttv_tail -> 'tv_option_tags_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv2137 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1003 "parser/parser.ml"
    ))) * (
# 63 "parser/parser.mly"
       (string)
# 1007 "parser/parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_tags_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv2135 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1014 "parser/parser.ml"
    ))) * (
# 63 "parser/parser.mly"
       (string)
# 1018 "parser/parser.ml"
    )) = Obj.magic _menhir_stack in
    let ((tags : 'tv_option_tags_) : 'tv_option_tags_) = _v in
    ((let (((_menhir_stack, _menhir_s), (id : (
# 64 "parser/parser.mly"
       (string)
# 1024 "parser/parser.ml"
    ))), (size : (
# 63 "parser/parser.mly"
       (string)
# 1028 "parser/parser.ml"
    ))) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : 'tv_declaration = 
# 185 "parser/parser.mly"
  ( mk_declaration tags id (int_of_string size) )
# 1035 "parser/parser.ml"
     in
    _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2136)) : 'freshtv2138)

and _menhir_goto_declaration : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_declaration -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv2133 * _menhir_state * 'tv_declaration) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2129 * _menhir_state * 'tv_declaration) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FLAG ->
            _menhir_run290 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | REGISTER ->
            _menhir_run286 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | TEMPORARY ->
            _menhir_run282 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | VAR ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | AT | BEGIN | EOF | IDENT _ | LPAR ->
            _menhir_reduce203 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState413) : 'freshtv2130)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2131 * _menhir_state * 'tv_declaration) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2132)) : 'freshtv2134)

and _menhir_reduce90 : _menhir_env -> ((('ttv_tail * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _menhir_s, (opcode : 'tv_kv)), _, (mnemonic : 'tv_kv)), _, (address : 'tv_kv)), _, (size : 'tv_kv)) = _menhir_stack in
    let _v : (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 1081 "parser/parser.ml"
    ) = 
# 148 "parser/parser.mly"
  ( [opcode; mnemonic; address; size;]  (* Actually the order is not important *) )
# 1085 "parser/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv2127) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 1093 "parser/parser.ml"
    )) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState415 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2123 * _menhir_state * (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 1102 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2121 * _menhir_state * (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 1108 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 1113 "parser/parser.ml"
        ))) = _menhir_stack in
        Obj.magic _1) : 'freshtv2122)) : 'freshtv2124)
    | MenhirState435 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2125 * _menhir_state * (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 1121 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState441
        | EOF ->
            _menhir_reduce195 _menhir_env (Obj.magic _menhir_stack) MenhirState441
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState441) : 'freshtv2126)
    | _ ->
        _menhir_fail ()) : 'freshtv2128)

and _menhir_goto_boption_ALTERNATE_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_boption_ALTERNATE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState481 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2099) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_boption_ALTERNATE_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2097) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((alternate : 'tv_boption_ALTERNATE_) : 'tv_boption_ALTERNATE_) = _v in
        ((let _10 = () in
        let _v : 'tv_directive = let _1 =
          let _1 = _10 in
          
# 594 "parser/parser.mly"
        ()
# 1155 "parser/parser.ml"
          
        in
        
# 615 "parser/parser.mly"
   ( Directive.choose_consequent ~alternate )
# 1161 "parser/parser.ml"
         in
        _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv2098)) : 'freshtv2100)
    | MenhirState489 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2103) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_boption_ALTERNATE_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2101) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((alternate : 'tv_boption_ALTERNATE_) : 'tv_boption_ALTERNATE_) = _v in
        ((let _10 = () in
        let _v : 'tv_directive = let _1 =
          let _1 = _10 in
          
# 594 "parser/parser.mly"
        ()
# 1179 "parser/parser.ml"
          
        in
        
# 615 "parser/parser.mly"
   ( Directive.choose_consequent ~alternate )
# 1185 "parser/parser.ml"
         in
        _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv2102)) : 'freshtv2104)
    | MenhirState491 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2107) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_boption_ALTERNATE_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2105) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((alternate : 'tv_boption_ALTERNATE_) : 'tv_boption_ALTERNATE_) = _v in
        ((let _10 = () in
        let _v : 'tv_directive = let _1 =
          let _1 = _10 in
          
# 599 "parser/parser.mly"
        ()
# 1203 "parser/parser.ml"
          
        in
        
# 617 "parser/parser.mly"
   ( Directive.choose_alternative ~alternate )
# 1209 "parser/parser.ml"
         in
        _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv2106)) : 'freshtv2108)
    | MenhirState498 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2111) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_boption_ALTERNATE_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2109) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((alternate : 'tv_boption_ALTERNATE_) : 'tv_boption_ALTERNATE_) = _v in
        ((let _10 = () in
        let _v : 'tv_directive = let _1 =
          let _1 = _10 in
          
# 599 "parser/parser.mly"
        ()
# 1227 "parser/parser.ml"
          
        in
        
# 617 "parser/parser.mly"
   ( Directive.choose_alternative ~alternate )
# 1233 "parser/parser.ml"
         in
        _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv2110)) : 'freshtv2112)
    | MenhirState501 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2115) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_boption_ALTERNATE_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2113) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((alternate : 'tv_boption_ALTERNATE_) : 'tv_boption_ALTERNATE_) = _v in
        ((let _10 = () in
        let _v : 'tv_directive = let _1 =
          let _1 = _10 in
          
# 594 "parser/parser.mly"
        ()
# 1251 "parser/parser.ml"
          
        in
        
# 615 "parser/parser.mly"
   ( Directive.choose_consequent ~alternate )
# 1257 "parser/parser.ml"
         in
        _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv2114)) : 'freshtv2116)
    | MenhirState505 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2119) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_boption_ALTERNATE_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2117) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((alternate : 'tv_boption_ALTERNATE_) : 'tv_boption_ALTERNATE_) = _v in
        ((let _10 = () in
        let _v : 'tv_directive = let _1 =
          let _1 = _10 in
          
# 599 "parser/parser.mly"
        ()
# 1275 "parser/parser.ml"
          
        in
        
# 617 "parser/parser.mly"
   ( Directive.choose_alternative ~alternate )
# 1281 "parser/parser.ml"
         in
        _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv2118)) : 'freshtv2120)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_terminated_assignment_SEMICOLON__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_terminated_assignment_SEMICOLON__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState406 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv2091 * 'tv_config) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) * 'tv_option_permission_block_) * _menhir_state * 'tv_list_terminated_assignment_SEMICOLON__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState407
        | EOF ->
            _menhir_reduce195 _menhir_env (Obj.magic _menhir_stack) MenhirState407
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState407) : 'freshtv2092)
    | MenhirState410 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv2095 * _menhir_state * 'tv_assignment)) * _menhir_state * 'tv_list_terminated_assignment_SEMICOLON__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv2093 * _menhir_state * 'tv_assignment)) * _menhir_state * 'tv_list_terminated_assignment_SEMICOLON__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x0 : 'tv_assignment)), _, (xs : 'tv_list_terminated_assignment_SEMICOLON__)) = _menhir_stack in
        let _20 = () in
        let _v : 'tv_list_terminated_assignment_SEMICOLON__ = let x =
          let _2 = _20 in
          let x = x0 in
          
# 165 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 1318 "parser/parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 1324 "parser/parser.ml"
         in
        _menhir_goto_list_terminated_assignment_SEMICOLON__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2094)) : 'freshtv2096)
    | _ ->
        _menhir_fail ()

and _menhir_goto_read_permission : _menhir_env -> 'ttv_tail -> 'tv_read_permission -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv2089 * _menhir_state * 'tv_cond_addr)) * 'tv_read_permission) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NWRITE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2081) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2079) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : 'tv_write_permission = 
# 216 "parser/parser.mly"
          ( false )
# 1348 "parser/parser.ml"
         in
        _menhir_goto_write_permission _menhir_env _menhir_stack _v) : 'freshtv2080)) : 'freshtv2082)
    | WRITE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2085) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2083) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : 'tv_write_permission = 
# 215 "parser/parser.mly"
          ( true )
# 1361 "parser/parser.ml"
         in
        _menhir_goto_write_permission _menhir_env _menhir_stack _v) : 'freshtv2084)) : 'freshtv2086)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv2087 * _menhir_state * 'tv_cond_addr)) * 'tv_read_permission) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2088)) : 'freshtv2090)

and _menhir_run299 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv2077) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_constant_expr = 
# 241 "parser/parser.mly"
             ( Dba.Expr.var "\\addr" (Machine.Word_size.get ()) None )
# 1382 "parser/parser.ml"
     in
    _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2078)

and _menhir_run301 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState301 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState301
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState301
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState301 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState301 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState301
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState301
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState301
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState301
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState301

and _menhir_run302 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState302
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState302
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState302
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState302
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState302
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState302
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState302

and _menhir_run303 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState303 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState303
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState303
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState303 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState303 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState303
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState303
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState303
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState303
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState303

and _menhir_run304 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState304 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState304
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState304
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState304 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState304 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState304
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState304
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState304
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState304
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState304

and _menhir_run305 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState305
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState305
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState305
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState305
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState305
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState305
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState305

and _menhir_reduce203 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_terminated_declaration_SEMICOLON__ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 1536 "parser/parser.ml"
     in
    _menhir_goto_list_terminated_declaration_SEMICOLON__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run275 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2073 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "parser/parser.mly"
       (string)
# 1552 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2069 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1563 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2065 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1573 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 63 "parser/parser.mly"
       (string)
# 1578 "parser/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FLAGTAG ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv2055) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv2053) = Obj.magic _menhir_stack in
                    ((let _10 = () in
                    let _v : 'tv_option_tags_ = let x =
                      let _1 = _10 in
                      
# 192 "parser/parser.mly"
           ( VarTag.flag Flag.unspecified )
# 1596 "parser/parser.ml"
                      
                    in
                    
# 102 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 1602 "parser/parser.ml"
                     in
                    _menhir_goto_option_tags_ _menhir_env _menhir_stack _v) : 'freshtv2054)) : 'freshtv2056)
                | TEMPTAG ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv2059) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv2057) = Obj.magic _menhir_stack in
                    ((let _10 = () in
                    let _v : 'tv_option_tags_ = let x =
                      let _1 = _10 in
                      
# 191 "parser/parser.mly"
           ( VarTag.temp )
# 1617 "parser/parser.ml"
                      
                    in
                    
# 102 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 1623 "parser/parser.ml"
                     in
                    _menhir_goto_option_tags_ _menhir_env _menhir_stack _v) : 'freshtv2058)) : 'freshtv2060)
                | SEMICOLON ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv2061) = Obj.magic _menhir_stack in
                    ((let _v : 'tv_option_tags_ = 
# 100 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 1632 "parser/parser.ml"
                     in
                    _menhir_goto_option_tags_ _menhir_env _menhir_stack _v) : 'freshtv2062)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv2063 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1642 "parser/parser.ml"
                    ))) * (
# 63 "parser/parser.mly"
       (string)
# 1646 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2064)) : 'freshtv2066)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2067 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1657 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2068)) : 'freshtv2070)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2071 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1668 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2072)) : 'freshtv2074)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2075 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2076)

and _menhir_run282 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2049 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "parser/parser.mly"
       (string)
# 1692 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2045 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1703 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2041 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1713 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 63 "parser/parser.mly"
       (string)
# 1718 "parser/parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2039 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1725 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((size : (
# 63 "parser/parser.mly"
       (string)
# 1730 "parser/parser.ml"
                )) : (
# 63 "parser/parser.mly"
       (string)
# 1734 "parser/parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (id : (
# 64 "parser/parser.mly"
       (string)
# 1739 "parser/parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _10 = () in
                let _v : 'tv_declaration = let apply =
                  let _1 = _10 in
                  
# 178 "parser/parser.mly"
            ( mk_declaration (Some VarTag.temp) )
# 1748 "parser/parser.ml"
                  
                in
                
# 187 "parser/parser.mly"
  ( apply id (int_of_string size) )
# 1754 "parser/parser.ml"
                 in
                _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2040)) : 'freshtv2042)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2043 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1764 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2044)) : 'freshtv2046)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2047 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1775 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2048)) : 'freshtv2050)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2051 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2052)

and _menhir_run286 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2035 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "parser/parser.mly"
       (string)
# 1799 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2031 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1810 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2027 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1820 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 63 "parser/parser.mly"
       (string)
# 1825 "parser/parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2025 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1832 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((size : (
# 63 "parser/parser.mly"
       (string)
# 1837 "parser/parser.ml"
                )) : (
# 63 "parser/parser.mly"
       (string)
# 1841 "parser/parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (id : (
# 64 "parser/parser.mly"
       (string)
# 1846 "parser/parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _10 = () in
                let _v : 'tv_declaration = let apply =
                  let _1 = _10 in
                  
# 180 "parser/parser.mly"
            ( mk_declaration None )
# 1855 "parser/parser.ml"
                  
                in
                
# 187 "parser/parser.mly"
  ( apply id (int_of_string size) )
# 1861 "parser/parser.ml"
                 in
                _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2026)) : 'freshtv2028)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2029 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1871 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2030)) : 'freshtv2032)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2033 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1882 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2034)) : 'freshtv2036)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2037 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2038)

and _menhir_run290 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2021 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "parser/parser.mly"
       (string)
# 1906 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2017 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1917 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2013 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1927 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 63 "parser/parser.mly"
       (string)
# 1932 "parser/parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2011 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1939 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((size : (
# 63 "parser/parser.mly"
       (string)
# 1944 "parser/parser.ml"
                )) : (
# 63 "parser/parser.mly"
       (string)
# 1948 "parser/parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (id : (
# 64 "parser/parser.mly"
       (string)
# 1953 "parser/parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _10 = () in
                let _v : 'tv_declaration = let apply =
                  let _1 = _10 in
                  
# 179 "parser/parser.mly"
            ( mk_declaration (Some (VarTag.flag Flag.unspecified)) )
# 1962 "parser/parser.ml"
                  
                in
                
# 187 "parser/parser.mly"
  ( apply id (int_of_string size) )
# 1968 "parser/parser.ml"
                 in
                _menhir_goto_declaration _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2012)) : 'freshtv2014)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv2015 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1978 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2016)) : 'freshtv2018)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv2019 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 1989 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2020)) : 'freshtv2022)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2023 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv2024)

and _menhir_reduce189 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 2004 "parser/parser.ml"
))) * _menhir_state * 'tv_value -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s), (key : (
# 64 "parser/parser.mly"
       (string)
# 2010 "parser/parser.ml"
    ))), _, (v : 'tv_value)) = _menhir_stack in
    let _5 = () in
    let _3 = () in
    let _1 = () in
    let _v : 'tv_kv = 
# 143 "parser/parser.mly"
                                    ( key, v )
# 2018 "parser/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv2009) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_kv) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState415 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1983 * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState425
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState425) : 'freshtv1984)
    | MenhirState425 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1985 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState426
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState426) : 'freshtv1986)
    | MenhirState426 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1997 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1995) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState427 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1991 * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 64 "parser/parser.mly"
       (string)
# 2070 "parser/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DOT ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv1987 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 2081 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BIN _v ->
                        _menhir_run422 _menhir_env (Obj.magic _menhir_stack) MenhirState430 _v
                    | HEXA _v ->
                        _menhir_run421 _menhir_env (Obj.magic _menhir_stack) MenhirState430 _v
                    | INT _v ->
                        _menhir_run420 _menhir_env (Obj.magic _menhir_stack) MenhirState430 _v
                    | STRING _v ->
                        _menhir_run419 _menhir_env (Obj.magic _menhir_stack) MenhirState430 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState430) : 'freshtv1988)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv1989 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 2105 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1990)) : 'freshtv1992)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1993 * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1994)) : 'freshtv1996)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState427) : 'freshtv1998)
    | MenhirState427 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1999 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        (_menhir_reduce90 _menhir_env (Obj.magic _menhir_stack) : 'freshtv2000)
    | MenhirState435 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv2001 * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState436
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState436) : 'freshtv2002)
    | MenhirState436 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv2003 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState437
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState437) : 'freshtv2004)
    | MenhirState437 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv2005 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState438
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState438) : 'freshtv2006)
    | MenhirState438 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv2007 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        (_menhir_reduce90 _menhir_env (Obj.magic _menhir_stack) : 'freshtv2008)
    | _ ->
        _menhir_fail ()) : 'freshtv2010)

and _menhir_reduce37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_boption_ALTERNATE_ = 
# 119 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( false )
# 2172 "parser/parser.ml"
     in
    _menhir_goto_boption_ALTERNATE_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run482 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1981) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_boption_ALTERNATE_ = 
# 121 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( true )
# 2186 "parser/parser.ml"
     in
    _menhir_goto_boption_ALTERNATE_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1982)

and _menhir_goto_separated_nonempty_list_SEMICOLON_located_directive_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_located_directive_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState462 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1975 * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_located_directive_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1971 * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_located_directive_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1969 * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_located_directive_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (l : 'tv_separated_nonempty_list_SEMICOLON_located_directive_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 114 "parser/parser.mly"
      (Directive.t list)
# 2210 "parser/parser.ml"
            ) = 
# 637 "parser/parser.mly"
                                                                ( l )
# 2214 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1967) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 114 "parser/parser.mly"
      (Directive.t list)
# 2222 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1965) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 114 "parser/parser.mly"
      (Directive.t list)
# 2230 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1963) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 114 "parser/parser.mly"
      (Directive.t list)
# 2238 "parser/parser.ml"
            )) : (
# 114 "parser/parser.mly"
      (Directive.t list)
# 2242 "parser/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1964)) : 'freshtv1966)) : 'freshtv1968)) : 'freshtv1970)) : 'freshtv1972)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1973 * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_located_directive_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1974)) : 'freshtv1976)
    | MenhirState477 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1979 * _menhir_state * 'tv_located_directive)) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_located_directive_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1977 * _menhir_state * 'tv_located_directive)) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_located_directive_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_located_directive)), _, (xs : 'tv_separated_nonempty_list_SEMICOLON_located_directive_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_located_directive_ = 
# 217 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2262 "parser/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_located_directive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1978)) : 'freshtv1980)
    | _ ->
        _menhir_fail ()

and _menhir_reduce201 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_terminated_assignment_SEMICOLON__ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 2273 "parser/parser.ml"
     in
    _menhir_goto_list_terminated_assignment_SEMICOLON__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_jump_target : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_jump_target -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1961 * _menhir_state) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_jump_target) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1959 * _menhir_state) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((jump : 'tv_jump_target) : 'tv_jump_target) = _v in
    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_explicit_instruction = 
# 389 "parser/parser.mly"
                         ( jump )
# 2292 "parser/parser.ml"
     in
    _menhir_goto_explicit_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1960)) : 'freshtv1962)

and _menhir_reduce214 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_address_lvalue -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (v : 'tv_address_lvalue)) = _menhir_stack in
    let _v : 'tv_lvalue = 
# 455 "parser/parser.mly"
                   ( v )
# 2302 "parser/parser.ml"
     in
    _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_cond_addr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_cond_addr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1957 * _menhir_state * 'tv_cond_addr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1953 * _menhir_state * 'tv_cond_addr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NREAD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1945) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1943) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_read_permission = 
# 210 "parser/parser.mly"
         ( false )
# 2330 "parser/parser.ml"
             in
            _menhir_goto_read_permission _menhir_env _menhir_stack _v) : 'freshtv1944)) : 'freshtv1946)
        | READ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1949) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1947) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_read_permission = 
# 211 "parser/parser.mly"
         ( true )
# 2343 "parser/parser.ml"
             in
            _menhir_goto_read_permission _menhir_env _menhir_stack _v) : 'freshtv1948)) : 'freshtv1950)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1951 * _menhir_state * 'tv_cond_addr)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1952)) : 'freshtv1954)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1955 * _menhir_state * 'tv_cond_addr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1956)) : 'freshtv1958)

and _menhir_run307 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState307 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState307
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState307
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState307 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState307 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState307
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState307
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState307
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState307
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState307

and _menhir_run312 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState312
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState312
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState312
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState312
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState312
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState312
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState312

and _menhir_run316 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState316
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState316
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState316
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState316
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState316
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState316
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState316

and _menhir_run318 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState318 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState318
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState318
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState318 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState318 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState318
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState318
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState318
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState318
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState318

and _menhir_run320 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState320

and _menhir_run322 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState322 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState322 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState322 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState322

and _menhir_run324 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState324
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState324
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState324
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState324
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState324
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState324
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState324

and _menhir_run334 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState334
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState334
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState334
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState334
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState334
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState334
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState334

and _menhir_run336 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState336 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState336
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState336
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState336 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState336 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState336
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState336
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState336
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState336
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState336

and _menhir_run326 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState326 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState326
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState326
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState326 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState326 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState326
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState326
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState326
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState326
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState326

and _menhir_run314 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState314

and _menhir_run338 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState338
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState338
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState338
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState338
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState338
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState338
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState338

and _menhir_run328 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState328
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState328
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState328
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState328
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState328
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState328
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState328

and _menhir_run330 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState330 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState330
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState330
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState330 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState330 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState330
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState330
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState330
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState330
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState330

and _menhir_run332 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState332 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState332
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState332
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState332 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState332 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState332
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState332
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState332
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState332
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState332

and _menhir_run346 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState346 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState346 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState346 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState346

and _menhir_run348 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState348 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState348
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState348
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState348 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState348 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState348
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState348
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState348
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState348
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState348

and _menhir_run340 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState340 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState340
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState340
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState340 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState340 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState340
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState340
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState340
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState340
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState340

and _menhir_run342 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState342 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState342 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState342 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState342

and _menhir_run350 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState350 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState350
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState350
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState350 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState350 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState350
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState350
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState350
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState350
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState350

and _menhir_run352 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState352 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState352
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState352
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState352 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState352 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState352
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState352
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState352
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState352
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState352

and _menhir_run354 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1939 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        let (_v : (
# 63 "parser/parser.mly"
       (string)
# 2960 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1931 * _menhir_state * 'tv_constant_expr)) * (
# 63 "parser/parser.mly"
       (string)
# 2971 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1927 * _menhir_state * 'tv_constant_expr)) * (
# 63 "parser/parser.mly"
       (string)
# 2981 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 63 "parser/parser.mly"
       (string)
# 2986 "parser/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1923 * _menhir_state * 'tv_constant_expr)) * (
# 63 "parser/parser.mly"
       (string)
# 2997 "parser/parser.ml"
                    ))) * (
# 63 "parser/parser.mly"
       (string)
# 3001 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1921 * _menhir_state * 'tv_constant_expr)) * (
# 63 "parser/parser.mly"
       (string)
# 3008 "parser/parser.ml"
                    ))) * (
# 63 "parser/parser.mly"
       (string)
# 3012 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s, (e : 'tv_constant_expr)), (loff0 : (
# 63 "parser/parser.mly"
       (string)
# 3017 "parser/parser.ml"
                    ))), (roff0 : (
# 63 "parser/parser.mly"
       (string)
# 3021 "parser/parser.ml"
                    ))) = _menhir_stack in
                    let _50 = () in
                    let _30 = () in
                    let _10 = () in
                    let _v : 'tv_constant_expr = let offs =
                      let _5 = _50 in
                      let roff = roff0 in
                      let _3 = _30 in
                      let loff = loff0 in
                      let _1 = _10 in
                      
# 468 "parser/parser.mly"
  ( int_of_string loff, int_of_string roff )
# 3035 "parser/parser.ml"
                      
                    in
                    
# 245 "parser/parser.mly"
   ( let lo, hi = offs in Dba.Expr.restrict lo hi e )
# 3041 "parser/parser.ml"
                     in
                    _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1922)) : 'freshtv1924)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1925 * _menhir_state * 'tv_constant_expr)) * (
# 63 "parser/parser.mly"
       (string)
# 3051 "parser/parser.ml"
                    ))) * (
# 63 "parser/parser.mly"
       (string)
# 3055 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1926)) : 'freshtv1928)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1929 * _menhir_state * 'tv_constant_expr)) * (
# 63 "parser/parser.mly"
       (string)
# 3066 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1930)) : 'freshtv1932)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1935 * _menhir_state * 'tv_constant_expr)) * (
# 63 "parser/parser.mly"
       (string)
# 3075 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1933 * _menhir_state * 'tv_constant_expr)) * (
# 63 "parser/parser.mly"
       (string)
# 3082 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e : 'tv_constant_expr)), (boff0 : (
# 63 "parser/parser.mly"
       (string)
# 3087 "parser/parser.ml"
            ))) = _menhir_stack in
            let _30 = () in
            let _10 = () in
            let _v : 'tv_constant_expr = let offs =
              let _3 = _30 in
              let boff = boff0 in
              let _1 = _10 in
              
# 470 "parser/parser.mly"
  ( let n = int_of_string boff in n, n)
# 3098 "parser/parser.ml"
              
            in
            
# 245 "parser/parser.mly"
   ( let lo, hi = offs in Dba.Expr.restrict lo hi e )
# 3104 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1934)) : 'freshtv1936)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1937 * _menhir_state * 'tv_constant_expr)) * (
# 63 "parser/parser.mly"
       (string)
# 3114 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1938)) : 'freshtv1940)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1941 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1942)

and _menhir_run361 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState361 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState361
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState361
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState361 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState361 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState361
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState361
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState361
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState361
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState361

and _menhir_run363 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState363 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState363
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState363
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState363 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState363 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState363
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState363
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState363
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState363
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState363

and _menhir_run365 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState365
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState365
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState365 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState365
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState365
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState365
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState365
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState365

and _menhir_run367 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState367
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState367
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState367
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState367
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState367
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState367
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState367

and _menhir_run369 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState369 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState369
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState369
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState369 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState369 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState369
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState369
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState369
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState369
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState369

and _menhir_run344 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState344 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState344
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState344
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState344 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState344 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState344
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState344
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState344
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState344
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState344

and _menhir_run309 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _v
    | EXTS ->
        _menhir_run305 _menhir_env (Obj.magic _menhir_stack) MenhirState309
    | EXTU ->
        _menhir_run304 _menhir_env (Obj.magic _menhir_stack) MenhirState309
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _v
    | LPAR ->
        _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState309
    | MINUS ->
        _menhir_run302 _menhir_env (Obj.magic _menhir_stack) MenhirState309
    | NOT ->
        _menhir_run301 _menhir_env (Obj.magic _menhir_stack) MenhirState309
    | WORDSIZE ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) MenhirState309
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState309

and _menhir_goto_endianness : _menhir_env -> 'ttv_tail -> 'tv_endianness -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1919 * 'tv_entry) * 'tv_addrsize) = Obj.magic _menhir_stack in
    let (_v : 'tv_endianness) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1917 * 'tv_entry) * 'tv_addrsize) = Obj.magic _menhir_stack in
    let ((_3 : 'tv_endianness) : 'tv_endianness) = _v in
    ((let ((_menhir_stack, (entry : 'tv_entry)), (_2 : 'tv_addrsize)) = _menhir_stack in
    let _v : 'tv_config = 
# 161 "parser/parser.mly"
                                    ( entry )
# 3334 "parser/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1915) = _menhir_stack in
    let (_v : 'tv_config) = _v in
    ((let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1913 * 'tv_config) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FLAG ->
        _menhir_run290 _menhir_env (Obj.magic _menhir_stack) MenhirState274
    | REGISTER ->
        _menhir_run286 _menhir_env (Obj.magic _menhir_stack) MenhirState274
    | TEMPORARY ->
        _menhir_run282 _menhir_env (Obj.magic _menhir_stack) MenhirState274
    | VAR ->
        _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState274
    | AT | BEGIN | EOF | IDENT _ | LPAR ->
        _menhir_reduce203 _menhir_env (Obj.magic _menhir_stack) MenhirState274
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState274) : 'freshtv1914)) : 'freshtv1916)) : 'freshtv1918)) : 'freshtv1920)

and _menhir_goto_jump_annotation : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_jump_annotation -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1907 * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_jump_annotation) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1905 * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((x0 : 'tv_jump_annotation) : 'tv_jump_annotation) = _v in
        ((let (_menhir_stack, _menhir_s, (t : 'tv_static_target)) = _menhir_stack in
        let _v : 'tv_static_jump = let tag =
          let x = x0 in
          
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 3378 "parser/parser.ml"
          
        in
        
# 295 "parser/parser.mly"
  ( Dba.Instr.static_jump t ~tag  )
# 3384 "parser/parser.ml"
         in
        _menhir_goto_static_jump _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1906)) : 'freshtv1908)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1911) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_jump_annotation) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1909) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_jump_annotation) : 'tv_jump_annotation) = _v in
        ((let _v : 'tv_option_jump_annotation_ = 
# 102 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 3399 "parser/parser.ml"
         in
        _menhir_goto_option_jump_annotation_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1910)) : 'freshtv1912)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_printarg_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_printarg_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1899 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_printarg_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1897 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((args : 'tv_separated_nonempty_list_COMMA_printarg_) : 'tv_separated_nonempty_list_COMMA_printarg_) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_annotable_instruction = 
# 374 "parser/parser.mly"
  ( Dba.Instr.print args unknown_successor )
# 3422 "parser/parser.ml"
         in
        _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1898)) : 'freshtv1900)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1903 * _menhir_state * 'tv_printarg)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_printarg_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1901 * _menhir_state * 'tv_printarg)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_printarg_) : 'tv_separated_nonempty_list_COMMA_printarg_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_printarg)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_printarg_ = 
# 217 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3439 "parser/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_printarg_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1902)) : 'freshtv1904)
    | _ ->
        _menhir_fail ()

and _menhir_goto_static_jump : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_static_jump -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1895) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_static_jump) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1893) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((sj : 'tv_static_jump) : 'tv_static_jump) = _v in
    ((let _v : 'tv_jump_target = 
# 300 "parser/parser.mly"
  ( sj )
# 3458 "parser/parser.ml"
     in
    _menhir_goto_jump_target _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1894)) : 'freshtv1896)

and _menhir_goto_value : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_value -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState418 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1885 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 3471 "parser/parser.ml"
        ))) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1881 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 3481 "parser/parser.ml"
            ))) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce189 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv1882)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1883 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 3492 "parser/parser.ml"
            ))) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1884)) : 'freshtv1886)
    | MenhirState430 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1891 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 3501 "parser/parser.ml"
        ))) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1887 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 3511 "parser/parser.ml"
            ))) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            (_menhir_reduce189 _menhir_env (Obj.magic _menhir_stack) : 'freshtv1888)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1889 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 3521 "parser/parser.ml"
            ))) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1890)) : 'freshtv1892)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_integer_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_integer_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState556 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1875) * _menhir_state * 'tv_nonempty_list_integer_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1871) * _menhir_state * 'tv_nonempty_list_integer_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1869) * _menhir_state * 'tv_nonempty_list_integer_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (x0 : 'tv_nonempty_list_integer_)) = _menhir_stack in
            let _30 = () in
            let _10 = () in
            let _v : 'tv_opcode = let integers =
              let _3 = _30 in
              let x = x0 in
              let _1 = _10 in
              
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 3554 "parser/parser.ml"
              
            in
            
# 575 "parser/parser.mly"
   ( Binstream.of_list integers )
# 3560 "parser/parser.ml"
             in
            _menhir_goto_opcode _menhir_env _menhir_stack _v) : 'freshtv1870)) : 'freshtv1872)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1873) * _menhir_state * 'tv_nonempty_list_integer_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1874)) : 'freshtv1876)
    | MenhirState559 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1879 * _menhir_state * 'tv_integer) * _menhir_state * 'tv_nonempty_list_integer_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1877 * _menhir_state * 'tv_integer) * _menhir_state * 'tv_nonempty_list_integer_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_integer)), _, (xs : 'tv_nonempty_list_integer_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_integer_ = 
# 197 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3579 "parser/parser.ml"
         in
        _menhir_goto_nonempty_list_integer_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1878)) : 'freshtv1880)
    | _ ->
        _menhir_fail ()

and _menhir_goto_opcode : _menhir_env -> 'ttv_tail -> 'tv_opcode -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv1867 * _menhir_state) * _menhir_state * 'tv_integer) * 'tv_opcode) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1863 * _menhir_state) * _menhir_state * 'tv_integer) * 'tv_opcode) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1861 * _menhir_state) * _menhir_state * 'tv_integer) * 'tv_opcode) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (address : 'tv_integer)), (opc : 'tv_opcode)) = _menhir_stack in
        let _4 = () in
        let _1 = () in
        let _v : 'tv_patch = 
# 579 "parser/parser.mly"
                                           ( address, opc )
# 3605 "parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1859) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_patch) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1857 * _menhir_state * 'tv_patch) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run553 _menhir_env (Obj.magic _menhir_stack) MenhirState564
        | EOF ->
            _menhir_reduce197 _menhir_env (Obj.magic _menhir_stack) MenhirState564
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState564) : 'freshtv1858)) : 'freshtv1860)) : 'freshtv1862)) : 'freshtv1864)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1865 * _menhir_state) * _menhir_state * 'tv_integer) * 'tv_opcode) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1866)) : 'freshtv1868)

and _menhir_goto_binary_loc : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_binary_loc -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1855 * _menhir_state * 'tv_binary_loc) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALTERNATIVE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1821) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALTERNATE ->
            _menhir_run482 _menhir_env (Obj.magic _menhir_stack) MenhirState505
        | EOF | SEMICOLON ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState505
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState505) : 'freshtv1822)
    | ASSUME ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1823) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState503
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState503 _v
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState503
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState503
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState503 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState503 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState503
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState503 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState503
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState503
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState503
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState503) : 'freshtv1824)
    | CONSEQUENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1825) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALTERNATE ->
            _menhir_run482 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | EOF | SEMICOLON ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState501) : 'freshtv1826)
    | CUT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1829) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1827) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : 'tv_directive = 
# 613 "parser/parser.mly"
   ( Directive.cut )
# 3711 "parser/parser.ml"
         in
        _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv1828)) : 'freshtv1830)
    | ELSE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1831) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALTERNATE ->
            _menhir_run482 _menhir_env (Obj.magic _menhir_stack) MenhirState498
        | EOF | SEMICOLON ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState498
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState498) : 'freshtv1832)
    | ENUMERATE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1833) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState493
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState493 _v
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState493
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState493
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState493 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState493 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState493
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState493 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState493
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState493
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState493
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState493) : 'freshtv1834)
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1835) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALTERNATE ->
            _menhir_run482 _menhir_env (Obj.magic _menhir_stack) MenhirState491
        | EOF | SEMICOLON ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState491
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState491) : 'freshtv1836)
    | PLUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1837) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALTERNATE ->
            _menhir_run482 _menhir_env (Obj.magic _menhir_stack) MenhirState489
        | EOF | SEMICOLON ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState489
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState489) : 'freshtv1838)
    | REACH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1849) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1839) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BIN _v ->
                _menhir_run470 _menhir_env (Obj.magic _menhir_stack) MenhirState486 _v
            | HEXA _v ->
                _menhir_run469 _menhir_env (Obj.magic _menhir_stack) MenhirState486 _v
            | INT _v ->
                _menhir_run463 _menhir_env (Obj.magic _menhir_stack) MenhirState486 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState486) : 'freshtv1840)
        | STAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1843) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1841) = Obj.magic _menhir_stack in
            ((let _2 = () in
            let _1 = () in
            let _v : 'tv_directive = 
# 607 "parser/parser.mly"
   ( Directive.reach_all )
# 3821 "parser/parser.ml"
             in
            _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv1842)) : 'freshtv1844)
        | EOF | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1845) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_directive = let times =
              let times =
                
# 110 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 3833 "parser/parser.ml"
                
              in
              
# 588 "parser/parser.mly"
                                                ( times )
# 3839 "parser/parser.ml"
              
            in
            
# 605 "parser/parser.mly"
   ( let n = Utils.get_opt_or_default 1 times in Directive.reach ~n )
# 3845 "parser/parser.ml"
             in
            _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv1846)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1847) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv1848)) : 'freshtv1850)
    | THEN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1851) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALTERNATE ->
            _menhir_run482 _menhir_env (Obj.magic _menhir_stack) MenhirState481
        | EOF | SEMICOLON ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState481
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState481) : 'freshtv1852)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1853 * _menhir_state * 'tv_binary_loc) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1854)) : 'freshtv1856)

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState531 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1815 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1811 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1809 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (args : 'tv_separated_nonempty_list_COMMA_expr_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_interval_or_set = 
# 342 "parser/parser.mly"
  ( Initialization.Set args )
# 3898 "parser/parser.ml"
             in
            _menhir_goto_interval_or_set _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1810)) : 'freshtv1812)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1813 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1814)) : 'freshtv1816)
    | MenhirState535 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1819 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1817 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (x : 'tv_expr)), _), _, (xs : 'tv_separated_nonempty_list_COMMA_expr_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 217 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3918 "parser/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1818)) : 'freshtv1820)
    | _ ->
        _menhir_fail ()

and _menhir_goto_interval_or_set : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_interval_or_set -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv1807 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_interval_or_set) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1801) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1797) = Obj.magic _menhir_stack in
            let (_v : (
# 64 "parser/parser.mly"
       (string)
# 3944 "parser/parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1795) = Obj.magic _menhir_stack in
            let ((id : (
# 64 "parser/parser.mly"
       (string)
# 3952 "parser/parser.ml"
            )) : (
# 64 "parser/parser.mly"
       (string)
# 3956 "parser/parser.ml"
            )) = _v in
            ((let _1 = () in
            let _v : 'tv_as_annotation = 
# 351 "parser/parser.mly"
               ( id )
# 3962 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1793) = _menhir_stack in
            let (_v : 'tv_as_annotation) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1791 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_interval_or_set) = Obj.magic _menhir_stack in
            let (_v : 'tv_as_annotation) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1789 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_interval_or_set) = Obj.magic _menhir_stack in
            let ((x0 : 'tv_as_annotation) : 'tv_as_annotation) = _v in
            ((let ((_menhir_stack, _menhir_s, (lvalue : 'tv_lvalue)), _, (is : 'tv_interval_or_set)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_initialization_assignment = let idopt =
              let x = x0 in
              
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 3980 "parser/parser.ml"
              
            in
            
# 358 "parser/parser.mly"
  ( Initialization.assign ?identifier:idopt lvalue is )
# 3986 "parser/parser.ml"
             in
            _menhir_goto_initialization_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1790)) : 'freshtv1792)) : 'freshtv1794)) : 'freshtv1796)) : 'freshtv1798)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1799) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv1800)) : 'freshtv1802)
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1803 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_interval_or_set) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (lvalue : 'tv_lvalue)), _, (is : 'tv_interval_or_set)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_initialization_assignment = let idopt =
          
# 110 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 4004 "parser/parser.ml"
          
        in
        
# 358 "parser/parser.mly"
  ( Initialization.assign ?identifier:idopt lvalue is )
# 4010 "parser/parser.ml"
         in
        _menhir_goto_initialization_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1804)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1805 * _menhir_state * 'tv_lvalue)) * _menhir_state * 'tv_interval_or_set) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1806)) : 'freshtv1808)

and _menhir_goto_either_DOTDOT_COMMA_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_either_DOTDOT_COMMA_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv1787 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_either_DOTDOT_COMMA_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState527
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState527 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState527
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState527
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState527 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState527 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState527
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState527 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState527
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState527
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState527
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState527) : 'freshtv1788)

and _menhir_goto_directive : _menhir_env -> 'ttv_tail -> 'tv_directive -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1785 * _menhir_state * 'tv_binary_loc) = Obj.magic _menhir_stack in
    let (_v : 'tv_directive) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1783 * _menhir_state * 'tv_binary_loc) = Obj.magic _menhir_stack in
    let ((g : 'tv_directive) : 'tv_directive) = _v in
    ((let (_menhir_stack, _menhir_s, (loc : 'tv_binary_loc)) = _menhir_stack in
    let _v : 'tv_located_directive = 
# 633 "parser/parser.mly"
   ( g loc )
# 4068 "parser/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1781) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_located_directive) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1779 * _menhir_state * 'tv_located_directive) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1773 * _menhir_state * 'tv_located_directive) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BIN _v ->
            _menhir_run470 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _v
        | HEXA _v ->
            _menhir_run469 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _v
        | INFER ->
            _menhir_run464 _menhir_env (Obj.magic _menhir_stack) MenhirState477
        | INT _v ->
            _menhir_run463 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState477) : 'freshtv1774)
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1775 * _menhir_state * 'tv_located_directive) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_located_directive)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_located_directive_ = 
# 215 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 4105 "parser/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_located_directive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1776)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1777 * _menhir_state * 'tv_located_directive) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1778)) : 'freshtv1780)) : 'freshtv1782)) : 'freshtv1784)) : 'freshtv1786)

and _menhir_goto_rvalue : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rvalue -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1771 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_rvalue) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1769 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((f_rv : 'tv_rvalue) : 'tv_rvalue) = _v in
    ((let (_menhir_stack, _menhir_s, (lvalue : 'tv_lvalue)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_assignment = 
# 328 "parser/parser.mly"
  ( f_rv lvalue unknown_successor)
# 4131 "parser/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1767) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_assignment) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState548 | MenhirState445 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1755 * _menhir_state * 'tv_assignment) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1753 * _menhir_state * 'tv_assignment) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (assign : 'tv_assignment)) = _menhir_stack in
        let _v : 'tv_annotable_instruction = 
# 372 "parser/parser.mly"
                     ( assign )
# 4148 "parser/parser.ml"
         in
        _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1754)) : 'freshtv1756)
    | MenhirState410 | MenhirState406 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1761 * _menhir_state * 'tv_assignment) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1757 * _menhir_state * 'tv_assignment) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState410
            | IDENT _v ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState410 _v
            | EOF | LPAR ->
                _menhir_reduce201 _menhir_env (Obj.magic _menhir_stack) MenhirState410
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState410) : 'freshtv1758)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1759 * _menhir_state * 'tv_assignment) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1760)) : 'freshtv1762)
    | MenhirState520 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1765 * _menhir_state * 'tv_assignment) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1763 * _menhir_state * 'tv_assignment) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : 'tv_assignment)) = _menhir_stack in
        let _v : 'tv_initialization_assignment = 
# 355 "parser/parser.mly"
                             ( Initialization.from_assignment a )
# 4189 "parser/parser.ml"
         in
        _menhir_goto_initialization_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1764)) : 'freshtv1766)
    | _ ->
        _menhir_fail ()) : 'freshtv1768)) : 'freshtv1770)) : 'freshtv1772)

and _menhir_goto_option_jump_annotation_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_jump_annotation_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1751 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_option_jump_annotation_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1749 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((tag : 'tv_option_jump_annotation_) : 'tv_option_jump_annotation_) = _v in
    ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
    let _v : 'tv_jump_target = 
# 302 "parser/parser.mly"
  ( match e with
    | Dba.Expr.Cst (`Constant, bv) ->
       let caddr = Dba_types.Caddress.block_start bv in
       let target = Dba.Jump_target.outer caddr in
       Dba.Instr.static_jump target ~tag
    | _ ->  Dba.Instr.dynamic_jump e ~tag )
# 4214 "parser/parser.ml"
     in
    _menhir_goto_jump_target _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1750)) : 'freshtv1752)

and _menhir_run201 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CALLFLAG ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1741 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203) : 'freshtv1742)
    | RETURNFLAG ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1745 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1743 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_jump_annotation = 
# 283 "parser/parser.mly"
                               ( Dba.Return )
# 4248 "parser/parser.ml"
         in
        _menhir_goto_jump_annotation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1744)) : 'freshtv1746)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1747 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1748)

and _menhir_goto_address_lvalue : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_address_lvalue -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState548 | MenhirState445 | MenhirState406 | MenhirState410 | MenhirState15 | MenhirState135 | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1723 * _menhir_state * 'tv_address_lvalue) = Obj.magic _menhir_stack in
        (_menhir_reduce214 _menhir_env (Obj.magic _menhir_stack) : 'freshtv1724)
    | MenhirState520 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1739 * _menhir_state * 'tv_address_lvalue) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FROM ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1731 * _menhir_state * 'tv_address_lvalue) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FILE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv1727 * _menhir_state * 'tv_address_lvalue)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv1725 * _menhir_state * 'tv_address_lvalue)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (v : 'tv_address_lvalue)) = _menhir_stack in
                let _20 = () in
                let _10 = () in
                let _v : 'tv_initialization_assignment = let _2 =
                  let _2 = _20 in
                  let _1 = _10 in
                  
# 347 "parser/parser.mly"
            ()
# 4294 "parser/parser.ml"
                  
                in
                
# 356 "parser/parser.mly"
                             ( Initialization.from_store v )
# 4300 "parser/parser.ml"
                 in
                _menhir_goto_initialization_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1726)) : 'freshtv1728)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv1729 * _menhir_state * 'tv_address_lvalue)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1730)) : 'freshtv1732)
        | FROMFILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1735 * _menhir_state * 'tv_address_lvalue) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1733 * _menhir_state * 'tv_address_lvalue) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (v : 'tv_address_lvalue)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_initialization_assignment = let _2 =
              let _1 = _10 in
              
# 346 "parser/parser.mly"
           ()
# 4323 "parser/parser.ml"
              
            in
            
# 356 "parser/parser.mly"
                             ( Initialization.from_store v )
# 4329 "parser/parser.ml"
             in
            _menhir_goto_initialization_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1734)) : 'freshtv1736)
        | ASSIGN | SEMICOLON ->
            _menhir_reduce214 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1737 * _menhir_state * 'tv_address_lvalue) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1738)) : 'freshtv1740)
    | _ ->
        _menhir_fail ()

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1719 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 63 "parser/parser.mly"
       (string)
# 5049 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1711 * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 5060 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1707 * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 5070 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 63 "parser/parser.mly"
       (string)
# 5075 "parser/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1703 * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 5086 "parser/parser.ml"
                    ))) * (
# 63 "parser/parser.mly"
       (string)
# 5090 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1701 * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 5097 "parser/parser.ml"
                    ))) * (
# 63 "parser/parser.mly"
       (string)
# 5101 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((((_menhir_stack, _menhir_s, (e : 'tv_expr)), _), (loff0 : (
# 63 "parser/parser.mly"
       (string)
# 5106 "parser/parser.ml"
                    ))), (roff0 : (
# 63 "parser/parser.mly"
       (string)
# 5110 "parser/parser.ml"
                    ))) = _menhir_stack in
                    let _50 = () in
                    let _30 = () in
                    let _10 = () in
                    let _v : 'tv_expr = let offs =
                      let _5 = _50 in
                      let roff = roff0 in
                      let _3 = _30 in
                      let loff = loff0 in
                      let _1 = _10 in
                      
# 468 "parser/parser.mly"
  ( int_of_string loff, int_of_string roff )
# 5124 "parser/parser.ml"
                      
                    in
                    
# 488 "parser/parser.mly"
  ( let lo, hi = offs in Dba.Expr.restrict lo hi e )
# 5130 "parser/parser.ml"
                     in
                    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1702)) : 'freshtv1704)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1705 * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 5140 "parser/parser.ml"
                    ))) * (
# 63 "parser/parser.mly"
       (string)
# 5144 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1706)) : 'freshtv1708)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1709 * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 5155 "parser/parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1710)) : 'freshtv1712)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1715 * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 5164 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1713 * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 5171 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e : 'tv_expr)), _), (boff0 : (
# 63 "parser/parser.mly"
       (string)
# 5176 "parser/parser.ml"
            ))) = _menhir_stack in
            let _30 = () in
            let _10 = () in
            let _v : 'tv_expr = let offs =
              let _3 = _30 in
              let boff = boff0 in
              let _1 = _10 in
              
# 470 "parser/parser.mly"
  ( let n = int_of_string boff in n, n)
# 5187 "parser/parser.ml"
              
            in
            
# 488 "parser/parser.mly"
  ( let lo, hi = offs in Dba.Expr.restrict lo hi e )
# 5193 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1714)) : 'freshtv1716)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1717 * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 5203 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1718)) : 'freshtv1720)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1721 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1722)

and _menhir_run90 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run92 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92

and _menhir_run94 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_run96 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_run98 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_goto_constant_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_constant_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1503 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run369 _menhir_env (Obj.magic _menhir_stack)
        | GES ->
            _menhir_run367 _menhir_env (Obj.magic _menhir_stack)
        | GEU ->
            _menhir_run365 _menhir_env (Obj.magic _menhir_stack)
        | GTS ->
            _menhir_run363 _menhir_env (Obj.magic _menhir_stack)
        | GTU ->
            _menhir_run361 _menhir_env (Obj.magic _menhir_stack)
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1499 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            let (_v : (
# 63 "parser/parser.mly"
       (string)
# 5476 "parser/parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1497 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            let ((size : (
# 63 "parser/parser.mly"
       (string)
# 5484 "parser/parser.ml"
            )) : (
# 63 "parser/parser.mly"
       (string)
# 5488 "parser/parser.ml"
            )) = _v in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_constant_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_constant_expr = 
# 253 "parser/parser.mly"
   ( Dba.Expr.sext (int_of_string size) e )
# 5495 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1498)) : 'freshtv1500)
        | LBRACE ->
            _menhir_run354 _menhir_env (Obj.magic _menhir_stack)
        | LES ->
            _menhir_run352 _menhir_env (Obj.magic _menhir_stack)
        | LEU ->
            _menhir_run350 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | LTS ->
            _menhir_run348 _menhir_env (Obj.magic _menhir_stack)
        | LTU ->
            _menhir_run346 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run338 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1501 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1502)) : 'freshtv1504)
    | MenhirState307 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1509 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | XOR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1505 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 515 "parser/parser.mly"
           ( Dba.Binary_op.Xor )
# 5567 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5573 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1506)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1507 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1508)) : 'freshtv1510)
    | MenhirState309 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1513 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1511 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_constant_expr = let bop =
          let _1 = _10 in
          
# 514 "parser/parser.mly"
           ( Dba.Binary_op.And )
# 5595 "parser/parser.ml"
          
        in
        
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5601 "parser/parser.ml"
         in
        _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1512)) : 'freshtv1514)
    | MenhirState312 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1519 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1515 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 530 "parser/parser.mly"
           ( Dba.Binary_op.Mult)
# 5626 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5632 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1516)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1517 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1518)) : 'freshtv1520)
    | MenhirState314 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1525 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1521 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 513 "parser/parser.mly"
           ( Dba.Binary_op.Or )
# 5662 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5668 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1522)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1523 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1524)) : 'freshtv1526)
    | MenhirState316 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1531 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1527 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 531 "parser/parser.mly"
           ( Dba.Binary_op.Mult)
# 5700 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5706 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1528)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1529 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1530)) : 'freshtv1532)
    | MenhirState318 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1537 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1533 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 530 "parser/parser.mly"
           ( Dba.Binary_op.Mult)
# 5738 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5744 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1534)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1535 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1536)) : 'freshtv1538)
    | MenhirState320 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1543 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1539 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 532 "parser/parser.mly"
           ( Dba.Binary_op.DivU)
# 5776 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5782 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1540)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1541 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1542)) : 'freshtv1544)
    | MenhirState322 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1549 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1545 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 533 "parser/parser.mly"
           ( Dba.Binary_op.DivS)
# 5814 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5820 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1546)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1547 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1548)) : 'freshtv1550)
    | MenhirState324 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1555 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | NEQ | RPAR | RROTATE | RSHIFTS | RSHIFTU ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1551 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 535 "parser/parser.mly"
           ( Dba.Binary_op.RShiftU)
# 5870 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5876 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1552)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1553 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1554)) : 'freshtv1556)
    | MenhirState326 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1561 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | NEQ | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1557 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 527 "parser/parser.mly"
           ( Dba.Binary_op.Plus )
# 5922 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5928 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1558)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1559 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1560)) : 'freshtv1562)
    | MenhirState328 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1567 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1563 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 511 "parser/parser.mly"
           ( Dba.Binary_op.ModU )
# 5960 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 5966 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1564)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1565 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1566)) : 'freshtv1568)
    | MenhirState330 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1573 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1569 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 512 "parser/parser.mly"
           ( Dba.Binary_op.ModS )
# 5998 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6004 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1570)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1571 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1572)) : 'freshtv1574)
    | MenhirState332 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1579 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | NEQ | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1575 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 528 "parser/parser.mly"
           ( Dba.Binary_op.Minus )
# 6050 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6056 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1576)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1577 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1578)) : 'freshtv1580)
    | MenhirState334 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1585 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | NEQ | RPAR | RROTATE | RSHIFTS | RSHIFTU ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1581 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 536 "parser/parser.mly"
           ( Dba.Binary_op.RShiftS )
# 6106 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6112 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1582)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1583 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1584)) : 'freshtv1586)
    | MenhirState336 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1591 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | NEQ | RPAR | RROTATE | RSHIFTS | RSHIFTU ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1587 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 538 "parser/parser.mly"
           ( Dba.Binary_op.RightRotate )
# 6162 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6168 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1588)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1589 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1590)) : 'freshtv1592)
    | MenhirState338 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1597 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1593 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 518 "parser/parser.mly"
           ( Dba.Binary_op.Diff )
# 6230 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6236 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1594)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1595 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1596)) : 'freshtv1598)
    | MenhirState340 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1603 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | NEQ | RPAR | RROTATE | RSHIFTS | RSHIFTU ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1599 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 534 "parser/parser.mly"
           ( Dba.Binary_op.LShift )
# 6286 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6292 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1600)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1601 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1602)) : 'freshtv1604)
    | MenhirState342 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1609 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | NEQ | RPAR | RROTATE | RSHIFTS | RSHIFTU ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1605 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 537 "parser/parser.mly"
           ( Dba.Binary_op.LeftRotate )
# 6342 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6348 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1606)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1607 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1608)) : 'freshtv1610)
    | MenhirState344 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1615 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | CONCAT | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1611 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 516 "parser/parser.mly"
           ( Dba.Binary_op.Concat )
# 6408 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6414 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1612)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1613 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1614)) : 'freshtv1616)
    | MenhirState346 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1621 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1617 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 520 "parser/parser.mly"
           ( Dba.Binary_op.LtU  )
# 6476 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6482 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1618)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1619 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1620)) : 'freshtv1622)
    | MenhirState348 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1627 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1623 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 524 "parser/parser.mly"
           ( Dba.Binary_op.LtS )
# 6544 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6550 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1624)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1625 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1626)) : 'freshtv1628)
    | MenhirState350 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1633 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1629 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 519 "parser/parser.mly"
           ( Dba.Binary_op.LeqU )
# 6612 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6618 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1630)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1631 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1632)) : 'freshtv1634)
    | MenhirState352 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1639 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1635 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 523 "parser/parser.mly"
           ( Dba.Binary_op.LeqS )
# 6680 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6686 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1636)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1637 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1638)) : 'freshtv1640)
    | MenhirState361 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1645 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1641 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 522 "parser/parser.mly"
           ( Dba.Binary_op.GtU )
# 6748 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6754 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1642)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1643 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1644)) : 'freshtv1646)
    | MenhirState363 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1651 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1647 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 526 "parser/parser.mly"
           ( Dba.Binary_op.GtS )
# 6816 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6822 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1648)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1649 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1650)) : 'freshtv1652)
    | MenhirState365 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1657 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1653 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 521 "parser/parser.mly"
           ( Dba.Binary_op.GeqU )
# 6884 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6890 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1654)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1655 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1656)) : 'freshtv1658)
    | MenhirState367 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1663 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1659 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 525 "parser/parser.mly"
           ( Dba.Binary_op.GeqS )
# 6952 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 6958 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1660)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1661 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1662)) : 'freshtv1664)
    | MenhirState369 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1669 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EQUAL | GES | GEU | GTS | GTU | INT _ | LBRACE | LES | LEU | LTS | LTU | NEQ | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1665 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (le : 'tv_constant_expr)), _, (re : 'tv_constant_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_constant_expr = let bop =
              let _1 = _10 in
              
# 517 "parser/parser.mly"
           ( Dba.Binary_op.Eq )
# 7020 "parser/parser.ml"
              
            in
            
# 256 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 7026 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1666)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1667 * _menhir_state * 'tv_constant_expr)) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1668)) : 'freshtv1670)
    | MenhirState304 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1677 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run369 _menhir_env (Obj.magic _menhir_stack)
        | GES ->
            _menhir_run367 _menhir_env (Obj.magic _menhir_stack)
        | GEU ->
            _menhir_run365 _menhir_env (Obj.magic _menhir_stack)
        | GTS ->
            _menhir_run363 _menhir_env (Obj.magic _menhir_stack)
        | GTU ->
            _menhir_run361 _menhir_env (Obj.magic _menhir_stack)
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1673 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            let (_v : (
# 63 "parser/parser.mly"
       (string)
# 7062 "parser/parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1671 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            let ((size : (
# 63 "parser/parser.mly"
       (string)
# 7070 "parser/parser.ml"
            )) : (
# 63 "parser/parser.mly"
       (string)
# 7074 "parser/parser.ml"
            )) = _v in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_constant_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_constant_expr = 
# 251 "parser/parser.mly"
   ( Dba.Expr.uext (int_of_string size) e )
# 7081 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1672)) : 'freshtv1674)
        | LBRACE ->
            _menhir_run354 _menhir_env (Obj.magic _menhir_stack)
        | LES ->
            _menhir_run352 _menhir_env (Obj.magic _menhir_stack)
        | LEU ->
            _menhir_run350 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | LTS ->
            _menhir_run348 _menhir_env (Obj.magic _menhir_stack)
        | LTU ->
            _menhir_run346 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run338 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1675 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1676)) : 'freshtv1678)
    | MenhirState303 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1685 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run369 _menhir_env (Obj.magic _menhir_stack)
        | GES ->
            _menhir_run367 _menhir_env (Obj.magic _menhir_stack)
        | GEU ->
            _menhir_run365 _menhir_env (Obj.magic _menhir_stack)
        | GTS ->
            _menhir_run363 _menhir_env (Obj.magic _menhir_stack)
        | GTU ->
            _menhir_run361 _menhir_env (Obj.magic _menhir_stack)
        | LBRACE ->
            _menhir_run354 _menhir_env (Obj.magic _menhir_stack)
        | LES ->
            _menhir_run352 _menhir_env (Obj.magic _menhir_stack)
        | LEU ->
            _menhir_run350 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | LTS ->
            _menhir_run348 _menhir_env (Obj.magic _menhir_stack)
        | LTU ->
            _menhir_run346 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run338 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1681 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1679 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_constant_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_constant_expr = 
# 254 "parser/parser.mly"
                              ( e )
# 7193 "parser/parser.ml"
             in
            _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1680)) : 'freshtv1682)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1683 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1684)) : 'freshtv1686)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1689 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1687 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_constant_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_constant_expr = 
# 247 "parser/parser.mly"
   ( Dba.Expr.uminus e )
# 7231 "parser/parser.ml"
         in
        _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1688)) : 'freshtv1690)
    | MenhirState301 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1693 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1691 * _menhir_state) * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_constant_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_constant_expr = 
# 249 "parser/parser.mly"
   ( Dba.Expr.lognot e )
# 7244 "parser/parser.ml"
         in
        _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1692)) : 'freshtv1694)
    | MenhirState398 | MenhirState395 | MenhirState298 | MenhirState379 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1699 * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack)
        | CONCAT ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run369 _menhir_env (Obj.magic _menhir_stack)
        | GES ->
            _menhir_run367 _menhir_env (Obj.magic _menhir_stack)
        | GEU ->
            _menhir_run365 _menhir_env (Obj.magic _menhir_stack)
        | GTS ->
            _menhir_run363 _menhir_env (Obj.magic _menhir_stack)
        | GTU ->
            _menhir_run361 _menhir_env (Obj.magic _menhir_stack)
        | LBRACE ->
            _menhir_run354 _menhir_env (Obj.magic _menhir_stack)
        | LES ->
            _menhir_run352 _menhir_env (Obj.magic _menhir_stack)
        | LEU ->
            _menhir_run350 _menhir_env (Obj.magic _menhir_stack)
        | LROTATE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack)
        | LSHIFT ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack)
        | LTS ->
            _menhir_run348 _menhir_env (Obj.magic _menhir_stack)
        | LTU ->
            _menhir_run346 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run332 _menhir_env (Obj.magic _menhir_stack)
        | MODS ->
            _menhir_run330 _menhir_env (Obj.magic _menhir_stack)
        | MODU ->
            _menhir_run328 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run338 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run326 _menhir_env (Obj.magic _menhir_stack)
        | RROTATE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTS ->
            _menhir_run334 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFTU ->
            _menhir_run324 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_S ->
            _menhir_run322 _menhir_env (Obj.magic _menhir_stack)
        | SLASH_U ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run318 _menhir_env (Obj.magic _menhir_stack)
        | STAR_S ->
            _menhir_run316 _menhir_env (Obj.magic _menhir_stack)
        | STAR_U ->
            _menhir_run312 _menhir_env (Obj.magic _menhir_stack)
        | XOR ->
            _menhir_run307 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1695 * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (eaddr : 'tv_constant_expr)) = _menhir_stack in
            let _v : 'tv_cond_addr = 
# 233 "parser/parser.mly"
                        ( Mk.checked_cond_expr eaddr )
# 7318 "parser/parser.ml"
             in
            _menhir_goto_cond_addr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1696)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1697 * _menhir_state * 'tv_constant_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1698)) : 'freshtv1700)
    | _ ->
        _menhir_fail ()

and _menhir_reduce125 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_constant -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (cst : 'tv_constant)) = _menhir_stack in
    let _v : 'tv_expr = 
# 485 "parser/parser.mly"
  ( Dba.Expr.constant cst )
# 7337 "parser/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_constant -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1493 * _menhir_state) * _menhir_state * 'tv_constant)) = Obj.magic _menhir_stack in
        let (_v : (
# 63 "parser/parser.mly"
       (string)
# 7352 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1489 * _menhir_state) * _menhir_state * 'tv_constant)) * (
# 63 "parser/parser.mly"
       (string)
# 7363 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1487 * _menhir_state) * _menhir_state * 'tv_constant)) * (
# 63 "parser/parser.mly"
       (string)
# 7370 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (bv : 'tv_constant)), (x0 : (
# 63 "parser/parser.mly"
       (string)
# 7375 "parser/parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _1 = () in
            let _v : 'tv_address = let nid =
              let x = x0 in
              let _1 = _10 in
              
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 7386 "parser/parser.ml"
              
            in
            
# 559 "parser/parser.mly"
  (
    let id = int_of_string nid in
    let addr = Dba_types.Caddress.create bv id in
    incr_address addr;
    addr
 )
# 7397 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1485) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_address) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState441 | MenhirState407 | MenhirState0 | MenhirState13 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1431 * _menhir_state * 'tv_address) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ASSERT ->
                    _menhir_run223 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | ASSUME ->
                    _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | AT ->
                    _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | FREE ->
                    _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | GOTO ->
                    _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | IDENT _v ->
                    _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
                | IF ->
                    _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | NONDETASSUME ->
                    _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | PRINT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | STOP ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv1432)
            | MenhirState196 | MenhirState191 | MenhirState185 | MenhirState177 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1435 * _menhir_state * 'tv_address) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1433 * _menhir_state * 'tv_address) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (addr : 'tv_address)) = _menhir_stack in
                let _v : 'tv_static_target = 
# 288 "parser/parser.mly"
                ( Dba.Jump_target.outer addr )
# 7444 "parser/parser.ml"
                 in
                _menhir_goto_static_target _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1434)) : 'freshtv1436)
            | MenhirState203 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1439 * _menhir_state)) * _menhir_state * 'tv_address) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1437 * _menhir_state)) * _menhir_state * 'tv_address) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (addr : 'tv_address)) = _menhir_stack in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_jump_annotation = 
# 282 "parser/parser.mly"
  ( Dba.Call addr )
# 7458 "parser/parser.ml"
                 in
                _menhir_goto_jump_annotation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1438)) : 'freshtv1440)
            | MenhirState261 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1483)) * _menhir_state * 'tv_address) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1481)) * _menhir_state * 'tv_address) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _, (addr : 'tv_address)) = _menhir_stack in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_entry = 
# 165 "parser/parser.mly"
                                  ( addr )
# 7472 "parser/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1479) = _menhir_stack in
                let (_v : 'tv_entry) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1477 * 'tv_entry) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | WORDSIZE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv1473) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | COLON ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : 'freshtv1469) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | INT _v ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ('freshtv1465)) = Obj.magic _menhir_stack in
                            let (_v : (
# 63 "parser/parser.mly"
       (string)
# 7501 "parser/parser.ml"
                            )) = _v in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ('freshtv1463)) = Obj.magic _menhir_stack in
                            let ((value : (
# 63 "parser/parser.mly"
       (string)
# 7509 "parser/parser.ml"
                            )) : (
# 63 "parser/parser.mly"
       (string)
# 7513 "parser/parser.ml"
                            )) = _v in
                            ((let _2 = () in
                            let _1 = () in
                            let _v : 'tv_addrsize = 
# 169 "parser/parser.mly"
                                ( Machine.Word_size.set (int_of_string value) )
# 7520 "parser/parser.ml"
                             in
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : 'freshtv1461) = _menhir_stack in
                            let (_v : 'tv_addrsize) = _v in
                            ((let _menhir_stack = (_menhir_stack, _v) in
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ('freshtv1459 * 'tv_entry) * 'tv_addrsize) = Obj.magic _menhir_stack in
                            ((assert (not _menhir_env._menhir_error);
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | ENDIANNESS ->
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : 'freshtv1455) = Obj.magic _menhir_stack in
                                ((let _menhir_env = _menhir_discard _menhir_env in
                                let _tok = _menhir_env._menhir_token in
                                match _tok with
                                | COLON ->
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : 'freshtv1451) = Obj.magic _menhir_stack in
                                    ((let _menhir_env = _menhir_discard _menhir_env in
                                    let _tok = _menhir_env._menhir_token in
                                    match _tok with
                                    | BIG ->
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : ('freshtv1443)) = Obj.magic _menhir_stack in
                                        ((let _menhir_env = _menhir_discard _menhir_env in
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : ('freshtv1441)) = Obj.magic _menhir_stack in
                                        ((let _3 = () in
                                        let _2 = () in
                                        let _1 = () in
                                        let _v : 'tv_endianness = 
# 173 "parser/parser.mly"
                           ( Dba_types.set_endianness BigEndian )
# 7555 "parser/parser.ml"
                                         in
                                        _menhir_goto_endianness _menhir_env _menhir_stack _v) : 'freshtv1442)) : 'freshtv1444)
                                    | LITTLE ->
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : ('freshtv1447)) = Obj.magic _menhir_stack in
                                        ((let _menhir_env = _menhir_discard _menhir_env in
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : ('freshtv1445)) = Obj.magic _menhir_stack in
                                        ((let _3 = () in
                                        let _2 = () in
                                        let _1 = () in
                                        let _v : 'tv_endianness = 
# 174 "parser/parser.mly"
                           ( Dba_types.set_endianness LittleEndian )
# 7570 "parser/parser.ml"
                                         in
                                        _menhir_goto_endianness _menhir_env _menhir_stack _v) : 'freshtv1446)) : 'freshtv1448)
                                    | _ ->
                                        assert (not _menhir_env._menhir_error);
                                        _menhir_env._menhir_error <- true;
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : ('freshtv1449)) = Obj.magic _menhir_stack in
                                        (raise _eRR : 'freshtv1450)) : 'freshtv1452)
                                | _ ->
                                    assert (not _menhir_env._menhir_error);
                                    _menhir_env._menhir_error <- true;
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : 'freshtv1453) = Obj.magic _menhir_stack in
                                    (raise _eRR : 'freshtv1454)) : 'freshtv1456)
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : ('freshtv1457 * 'tv_entry) * 'tv_addrsize) = Obj.magic _menhir_stack in
                                (raise _eRR : 'freshtv1458)) : 'freshtv1460)) : 'freshtv1462)) : 'freshtv1464)) : 'freshtv1466)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ('freshtv1467)) = Obj.magic _menhir_stack in
                            (raise _eRR : 'freshtv1468)) : 'freshtv1470)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : 'freshtv1471) = Obj.magic _menhir_stack in
                        (raise _eRR : 'freshtv1472)) : 'freshtv1474)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv1475 * 'tv_entry) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv1476)) : 'freshtv1478)) : 'freshtv1480)) : 'freshtv1482)) : 'freshtv1484)
            | _ ->
                _menhir_fail ()) : 'freshtv1486)) : 'freshtv1488)) : 'freshtv1490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1491 * _menhir_state) * _menhir_state * 'tv_constant)) * (
# 63 "parser/parser.mly"
       (string)
# 7618 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1492)) : 'freshtv1494)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1495 * _menhir_state) * _menhir_state * 'tv_constant)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1496)

and _menhir_goto_explicit_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_explicit_instruction -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1429) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_explicit_instruction) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1427) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((instr : 'tv_explicit_instruction) : 'tv_explicit_instruction) = _v in
    ((let _v : 'tv_instruction = 
# 399 "parser/parser.mly"
                              ( instr )
# 7643 "parser/parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1428)) : 'freshtv1430)

and _menhir_goto_printarg : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_printarg -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1425 * _menhir_state * 'tv_printarg) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1419 * _menhir_state * 'tv_printarg) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | STRING _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv1420)
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1421 * _menhir_state * 'tv_printarg) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_printarg)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_printarg_ = 
# 215 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 7696 "parser/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_printarg_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1422)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1423 * _menhir_state * 'tv_printarg) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1424)) : 'freshtv1426)

and _menhir_goto_initialization_assignment : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_initialization_assignment -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1417 * _menhir_state * 'tv_boption_UNCONTROLLED_) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_initialization_assignment) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1415 * _menhir_state * 'tv_boption_UNCONTROLLED_) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((init : 'tv_initialization_assignment) : 'tv_initialization_assignment) = _v in
    ((let (_menhir_stack, _menhir_s, (uncontrolled : 'tv_boption_UNCONTROLLED_)) = _menhir_stack in
    let _v : 'tv_initialization_directive = 
# 364 "parser/parser.mly"
  ( Initialization.set_control (not uncontrolled) init )
# 7721 "parser/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1413) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_initialization_directive) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1411 * _menhir_state * 'tv_initialization_directive) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1407 * _menhir_state * 'tv_initialization_directive) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | UNCONTROLLED ->
            _menhir_run514 _menhir_env (Obj.magic _menhir_stack) MenhirState518
        | EOF ->
            _menhir_reduce205 _menhir_env (Obj.magic _menhir_stack) MenhirState518
        | AT | IDENT _ ->
            _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState518
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState518) : 'freshtv1408)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1409 * _menhir_state * 'tv_initialization_directive) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1410)) : 'freshtv1412)) : 'freshtv1414)) : 'freshtv1416)) : 'freshtv1418)

and _menhir_run233 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1405) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_rvalue = 
# 317 "parser/parser.mly"
          ( Dba.Instr.undefined )
# 7767 "parser/parser.ml"
     in
    _menhir_goto_rvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1406)

and _menhir_run234 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1403) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_rvalue = 
# 323 "parser/parser.mly"
  ( fun lv -> Dba.Instr.non_deterministic lv )
# 7781 "parser/parser.ml"
     in
    _menhir_goto_rvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1404)

and _menhir_run235 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1397 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONSTANT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1377 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1373 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1371 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                let _300 = () in
                let _10000 = () in
                let _100 = () in
                let _1 = () in
                let _v : 'tv_rvalue = let region =
                  let _30 = _300 in
                  let _1000 = _10000 in
                  let _10 = _100 in
                  let x =
                    let _3 = _30 in
                    let _100 = _1000 in
                    let _1 = _10 in
                    let x =
                      let _10 = _100 in
                      let region =
                        let _1 = _10 in
                        
# 260 "parser/parser.mly"
            ( `Constant )
# 7829 "parser/parser.ml"
                        
                      in
                      
# 265 "parser/parser.mly"
                  ( region )
# 7835 "parser/parser.ml"
                      
                    in
                    
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 7841 "parser/parser.ml"
                    
                  in
                  
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 7847 "parser/parser.ml"
                  
                in
                
# 321 "parser/parser.mly"
  ( fun lv -> Dba.Instr.non_deterministic lv ?region )
# 7853 "parser/parser.ml"
                 in
                _menhir_goto_rvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1372)) : 'freshtv1374)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1375 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1376)) : 'freshtv1378)
        | MALLOC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1385 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1381 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1379 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                let _300 = () in
                let _1000 = () in
                let _110 = () in
                let _1 = () in
                let _v : 'tv_rvalue = let region =
                  let _30 = _300 in
                  let _100 = _1000 in
                  let _11 = _110 in
                  let x =
                    let _3 = _30 in
                    let _10 = _100 in
                    let _1 = _11 in
                    let x =
                      let _1 = _10 in
                      
# 266 "parser/parser.mly"
                  ( Dba_types.Region.malloc (Machine.Word_size.get ()))
# 7893 "parser/parser.ml"
                      
                    in
                    
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 7899 "parser/parser.ml"
                    
                  in
                  
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 7905 "parser/parser.ml"
                  
                in
                
# 321 "parser/parser.mly"
  ( fun lv -> Dba.Instr.non_deterministic lv ?region )
# 7911 "parser/parser.ml"
                 in
                _menhir_goto_rvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1380)) : 'freshtv1382)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1383 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1384)) : 'freshtv1386)
        | STACK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1393 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1389 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1387 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                let _300 = () in
                let _10000 = () in
                let _100 = () in
                let _1 = () in
                let _v : 'tv_rvalue = let region =
                  let _30 = _300 in
                  let _1000 = _10000 in
                  let _10 = _100 in
                  let x =
                    let _3 = _30 in
                    let _100 = _1000 in
                    let _1 = _10 in
                    let x =
                      let _10 = _100 in
                      let region =
                        let _1 = _10 in
                        
# 261 "parser/parser.mly"
            ( `Stack )
# 7953 "parser/parser.ml"
                        
                      in
                      
# 265 "parser/parser.mly"
                  ( region )
# 7959 "parser/parser.ml"
                      
                    in
                    
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 7965 "parser/parser.ml"
                    
                  in
                  
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 7971 "parser/parser.ml"
                  
                in
                
# 321 "parser/parser.mly"
  ( fun lv -> Dba.Instr.non_deterministic lv ?region )
# 7977 "parser/parser.ml"
                 in
                _menhir_goto_rvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1388)) : 'freshtv1390)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1391 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1392)) : 'freshtv1394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1395 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1396)) : 'freshtv1398)
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1399 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_rvalue = let region =
          
# 110 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 8003 "parser/parser.ml"
          
        in
        
# 321 "parser/parser.mly"
  ( fun lv -> Dba.Instr.non_deterministic lv ?region )
# 8009 "parser/parser.ml"
         in
        _menhir_goto_rvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1400)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1401 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1402)

and _menhir_run243 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1367 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState244) : 'freshtv1368)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1369 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1370)

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1361) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1359) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_) : 'tv_separated_nonempty_list_COMMA_lvalue_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue__ = 
# 130 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 8081 "parser/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1360)) : 'freshtv1362)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1365 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1363 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_) : 'tv_separated_nonempty_list_COMMA_lvalue_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_ = 
# 217 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 8098 "parser/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1364)) : 'freshtv1366)
    | _ ->
        _menhir_fail ()

and _menhir_goto_static_target : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_static_target -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1321 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1317 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | GOTO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv1313 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | INT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv1309 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target))) = Obj.magic _menhir_stack in
                    let (_v : (
# 63 "parser/parser.mly"
       (string)
# 8132 "parser/parser.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv1307 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target))) = Obj.magic _menhir_stack in
                    let ((next : (
# 63 "parser/parser.mly"
       (string)
# 8140 "parser/parser.ml"
                    )) : (
# 63 "parser/parser.mly"
       (string)
# 8144 "parser/parser.ml"
                    )) = _v in
                    ((let (((_menhir_stack, _menhir_s), _), _, (st : 'tv_static_target)) = _menhir_stack in
                    let _6 = () in
                    let _5 = () in
                    let _3 = () in
                    let _10 = () in
                    let _1 = () in
                    let _v : 'tv_explicit_instruction = let condition =
                      let _1 = _10 in
                      
# 542 "parser/parser.mly"
            ( Dba.Expr.one )
# 8157 "parser/parser.ml"
                      
                    in
                    
# 391 "parser/parser.mly"
  ( Dba.Instr.ite condition st (int_of_string next) )
# 8163 "parser/parser.ml"
                     in
                    _menhir_goto_explicit_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1308)) : 'freshtv1310)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv1311 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1312)) : 'freshtv1314)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv1315 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1316)) : 'freshtv1318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1319 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1320)) : 'freshtv1322)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1337 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1333 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | GOTO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv1329 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | INT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv1325 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target))) = Obj.magic _menhir_stack in
                    let (_v : (
# 63 "parser/parser.mly"
       (string)
# 8211 "parser/parser.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv1323 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target))) = Obj.magic _menhir_stack in
                    let ((next : (
# 63 "parser/parser.mly"
       (string)
# 8219 "parser/parser.ml"
                    )) : (
# 63 "parser/parser.mly"
       (string)
# 8223 "parser/parser.ml"
                    )) = _v in
                    ((let (((_menhir_stack, _menhir_s), _), _, (st : 'tv_static_target)) = _menhir_stack in
                    let _6 = () in
                    let _5 = () in
                    let _3 = () in
                    let _10 = () in
                    let _1 = () in
                    let _v : 'tv_explicit_instruction = let condition =
                      let _1 = _10 in
                      
# 543 "parser/parser.mly"
            ( Dba.Expr.zero )
# 8236 "parser/parser.ml"
                      
                    in
                    
# 391 "parser/parser.mly"
  ( Dba.Instr.ite condition st (int_of_string next) )
# 8242 "parser/parser.ml"
                     in
                    _menhir_goto_explicit_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1324)) : 'freshtv1326)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv1327 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1328)) : 'freshtv1330)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv1331 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1332)) : 'freshtv1334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1335 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1336)) : 'freshtv1338)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1353 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1349 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | GOTO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv1345 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_static_target)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | INT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv1341 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_static_target))) = Obj.magic _menhir_stack in
                    let (_v : (
# 63 "parser/parser.mly"
       (string)
# 8290 "parser/parser.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv1339 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_static_target))) = Obj.magic _menhir_stack in
                    let ((next : (
# 63 "parser/parser.mly"
       (string)
# 8298 "parser/parser.ml"
                    )) : (
# 63 "parser/parser.mly"
       (string)
# 8302 "parser/parser.ml"
                    )) = _v in
                    ((let ((((_menhir_stack, _menhir_s), _, (e0 : 'tv_expr)), _), _, (st : 'tv_static_target)) = _menhir_stack in
                    let _6 = () in
                    let _5 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : 'tv_explicit_instruction = let condition =
                      let e = e0 in
                      
# 544 "parser/parser.mly"
            ( e )
# 8314 "parser/parser.ml"
                      
                    in
                    
# 391 "parser/parser.mly"
  ( Dba.Instr.ite condition st (int_of_string next) )
# 8320 "parser/parser.ml"
                     in
                    _menhir_goto_explicit_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1340)) : 'freshtv1342)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv1343 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_static_target))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1344)) : 'freshtv1346)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv1347 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_static_target)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1348)) : 'freshtv1350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1351 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1352)) : 'freshtv1354)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1357 * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ANNOT ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | EOF | HEXA _ | INT _ | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1355 * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (t : 'tv_static_target)) = _menhir_stack in
            let _v : 'tv_static_jump = let tag =
              
# 110 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 8360 "parser/parser.ml"
              
            in
            
# 295 "parser/parser.mly"
  ( Dba.Instr.static_jump t ~tag  )
# 8366 "parser/parser.ml"
             in
            _menhir_goto_static_jump _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState200) : 'freshtv1358)
    | _ ->
        _menhir_fail ()

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instruction -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1283 * _menhir_state * 'tv_address) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1281 * _menhir_state * 'tv_address) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (addr : 'tv_address)), _, (instr : 'tv_instruction)) = _menhir_stack in
        let _v : 'tv_localized_instruction = 
# 273 "parser/parser.mly"
  ( Mk.checked_localized_instruction addr instr )
# 8389 "parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1279) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_localized_instruction) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1277 * _menhir_state * 'tv_localized_instruction) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | EOF ->
            _menhir_reduce195 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv1278)) : 'freshtv1280)) : 'freshtv1282)) : 'freshtv1284)
    | MenhirState445 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1291 * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 8414 "parser/parser.ml"
        ))) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1289 * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 8420 "parser/parser.ml"
        ))) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (label : (
# 63 "parser/parser.mly"
       (string)
# 8425 "parser/parser.ml"
        ))), _, (instr : 'tv_instruction)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_labelled_instruction = 
# 406 "parser/parser.mly"
                                       ( (int_of_string label,instr))
# 8431 "parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1287) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_labelled_instruction) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1285 * _menhir_state * 'tv_labelled_instruction) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT _v ->
            _menhir_run444 _menhir_env (Obj.magic _menhir_stack) MenhirState448 _v
        | EOF | HEXA _ ->
            _menhir_reduce193 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState448) : 'freshtv1286)) : 'freshtv1288)) : 'freshtv1290)) : 'freshtv1292)
    | MenhirState548 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1305 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1301 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1299 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (l : 'tv_instruction)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 93 "parser/parser.mly"
      (Dba.Instr.t)
# 8467 "parser/parser.ml"
            ) = 
# 403 "parser/parser.mly"
                     (l)
# 8471 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1297) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 93 "parser/parser.mly"
      (Dba.Instr.t)
# 8479 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1295) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 93 "parser/parser.mly"
      (Dba.Instr.t)
# 8487 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1293) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 93 "parser/parser.mly"
      (Dba.Instr.t)
# 8495 "parser/parser.ml"
            )) : (
# 93 "parser/parser.mly"
      (Dba.Instr.t)
# 8499 "parser/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1294)) : 'freshtv1296)) : 'freshtv1298)) : 'freshtv1300)) : 'freshtv1302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1303 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1304)) : 'freshtv1306)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_list_localized_instruction_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_localized_instruction_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1241 * _menhir_state * 'tv_localized_instruction) * _menhir_state * 'tv_list_localized_instruction_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1239 * _menhir_state * 'tv_localized_instruction) * _menhir_state * 'tv_list_localized_instruction_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_localized_instruction)), _, (xs : 'tv_list_localized_instruction_)) = _menhir_stack in
        let _v : 'tv_list_localized_instruction_ = 
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 8530 "parser/parser.ml"
         in
        _menhir_goto_list_localized_instruction_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1240)) : 'freshtv1242)
    | MenhirState441 | MenhirState407 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1275 * _menhir_state * 'tv_list_localized_instruction_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1271 * _menhir_state * 'tv_list_localized_instruction_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1269 * _menhir_state * 'tv_list_localized_instruction_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (b : 'tv_list_localized_instruction_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8549 "parser/parser.ml"
            ) = 
# 157 "parser/parser.mly"
                                     ( b )
# 8553 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1267) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8561 "parser/parser.ml"
            )) = _v in
            ((match _menhir_s with
            | MenhirState0 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1245) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8571 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1243) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8579 "parser/parser.ml"
                )) : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8583 "parser/parser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv1244)) : 'freshtv1246)
            | MenhirState407 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1255 * 'tv_config) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) * 'tv_option_permission_block_) * _menhir_state * 'tv_list_terminated_assignment_SEMICOLON__) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8593 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1253 * 'tv_config) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) * 'tv_option_permission_block_) * _menhir_state * 'tv_list_terminated_assignment_SEMICOLON__) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((instructions : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8601 "parser/parser.ml"
                )) : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8605 "parser/parser.ml"
                )) = _v in
                ((let ((((_menhir_stack, (config : 'tv_config)), _, (decls : 'tv_list_terminated_declaration_SEMICOLON__)), (permissions : 'tv_option_permission_block_)), _, (initialization : 'tv_list_terminated_assignment_SEMICOLON__)) = _menhir_stack in
                let _v : (
# 87 "parser/parser.mly"
      ('a Dba_types.program)
# 8611 "parser/parser.ml"
                ) = 
# 132 "parser/parser.mly"
   ( Mk.program permissions initialization config decls instructions )
# 8615 "parser/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1251) = _menhir_stack in
                let (_v : (
# 87 "parser/parser.mly"
      ('a Dba_types.program)
# 8622 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1249) = Obj.magic _menhir_stack in
                let (_v : (
# 87 "parser/parser.mly"
      ('a Dba_types.program)
# 8629 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1247) = Obj.magic _menhir_stack in
                let ((_1 : (
# 87 "parser/parser.mly"
      ('a Dba_types.program)
# 8636 "parser/parser.ml"
                )) : (
# 87 "parser/parser.mly"
      ('a Dba_types.program)
# 8640 "parser/parser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv1248)) : 'freshtv1250)) : 'freshtv1252)) : 'freshtv1254)) : 'freshtv1256)
            | MenhirState441 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1265 * _menhir_state * (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 8648 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8654 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1263 * _menhir_state * (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 8660 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((instructions : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8666 "parser/parser.ml"
                )) : (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8670 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_stack, _menhir_s, (base : (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 8675 "parser/parser.ml"
                ))) = _menhir_stack in
                let _v : (
# 102 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list * (Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8680 "parser/parser.ml"
                ) = 
# 153 "parser/parser.mly"
  ( base, instructions )
# 8684 "parser/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1261) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 102 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list * (Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8692 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1259) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 102 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list * (Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8700 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1257) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : (
# 102 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list * (Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8708 "parser/parser.ml"
                )) : (
# 102 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list * (Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 8712 "parser/parser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv1258)) : 'freshtv1260)) : 'freshtv1262)) : 'freshtv1264)) : 'freshtv1266)
            | _ ->
                _menhir_fail ()) : 'freshtv1268)) : 'freshtv1270)) : 'freshtv1272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1273 * _menhir_state * 'tv_list_localized_instruction_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1274)) : 'freshtv1276)
    | _ ->
        _menhir_fail ()

and _menhir_run419 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 67 "parser/parser.mly"
       (string)
# 8730 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1237) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 67 "parser/parser.mly"
       (string)
# 8740 "parser/parser.ml"
    )) : (
# 67 "parser/parser.mly"
       (string)
# 8744 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_value = 
# 138 "parser/parser.mly"
           ( Message.Value.vstr _1)
# 8749 "parser/parser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1238)

and _menhir_run420 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "parser/parser.mly"
       (string)
# 8756 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1235) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 63 "parser/parser.mly"
       (string)
# 8766 "parser/parser.ml"
    )) : (
# 63 "parser/parser.mly"
       (string)
# 8770 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_value = 
# 139 "parser/parser.mly"
           ( Message.Value.vint _1)
# 8775 "parser/parser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1236)

and _menhir_run421 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "parser/parser.mly"
       (string)
# 8782 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1233) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 65 "parser/parser.mly"
       (string)
# 8792 "parser/parser.ml"
    )) : (
# 65 "parser/parser.mly"
       (string)
# 8796 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_value = 
# 136 "parser/parser.mly"
           ( Message.Value.vhex _1)
# 8801 "parser/parser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1234)

and _menhir_run422 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 66 "parser/parser.mly"
       (string)
# 8808 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1231) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 66 "parser/parser.mly"
       (string)
# 8818 "parser/parser.ml"
    )) : (
# 66 "parser/parser.mly"
       (string)
# 8822 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_value = 
# 137 "parser/parser.mly"
           ( Message.Value.vbin _1)
# 8827 "parser/parser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1232)

and _menhir_goto_list_labelled_instruction_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_labelled_instruction_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState455 | MenhirState443 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1225) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_labelled_instruction_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1223) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((l : 'tv_list_labelled_instruction_) : 'tv_list_labelled_instruction_) = _v in
        ((let _v : 'tv_dhunk = 
# 409 "parser/parser.mly"
                                (Dhunk.of_labelled_list l)
# 8846 "parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1221) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_dhunk) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState443 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1211 * _menhir_state * 'tv_dhunk) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1207 * _menhir_state * 'tv_dhunk) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1205 * _menhir_state * 'tv_dhunk) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (l : 'tv_dhunk)) = _menhir_stack in
                let _2 = () in
                let _v : (
# 90 "parser/parser.mly"
      (Dhunk.t)
# 8870 "parser/parser.ml"
                ) = 
# 413 "parser/parser.mly"
               ( l )
# 8874 "parser/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1203) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 90 "parser/parser.mly"
      (Dhunk.t)
# 8882 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1201) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 90 "parser/parser.mly"
      (Dhunk.t)
# 8890 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1199) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : (
# 90 "parser/parser.mly"
      (Dhunk.t)
# 8898 "parser/parser.ml"
                )) : (
# 90 "parser/parser.mly"
      (Dhunk.t)
# 8902 "parser/parser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv1200)) : 'freshtv1202)) : 'freshtv1204)) : 'freshtv1206)) : 'freshtv1208)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1209 * _menhir_state * 'tv_dhunk) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1210)) : 'freshtv1212)
        | MenhirState455 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1219 * _menhir_state * (
# 65 "parser/parser.mly"
       (string)
# 8917 "parser/parser.ml"
            ))) * _menhir_state * 'tv_dhunk) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1217 * _menhir_state * (
# 65 "parser/parser.mly"
       (string)
# 8923 "parser/parser.ml"
            ))) * _menhir_state * 'tv_dhunk) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (addr : (
# 65 "parser/parser.mly"
       (string)
# 8928 "parser/parser.ml"
            ))), _, (dh : 'tv_dhunk)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_dhunk_substitution = 
# 418 "parser/parser.mly"
  ( (Virtual_address.of_bitvector @@ Bitvector.of_string addr, dh))
# 8934 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1215) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_dhunk_substitution) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1213 * _menhir_state * 'tv_dhunk_substitution) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | HEXA _v ->
                _menhir_run454 _menhir_env (Obj.magic _menhir_stack) MenhirState460 _v
            | EOF ->
                _menhir_reduce191 _menhir_env (Obj.magic _menhir_stack) MenhirState460
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState460) : 'freshtv1214)) : 'freshtv1216)) : 'freshtv1218)) : 'freshtv1220)
        | _ ->
            _menhir_fail ()) : 'freshtv1222)) : 'freshtv1224)) : 'freshtv1226)
    | MenhirState448 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1229 * _menhir_state * 'tv_labelled_instruction) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_labelled_instruction_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1227 * _menhir_state * 'tv_labelled_instruction) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_labelled_instruction_) : 'tv_list_labelled_instruction_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_labelled_instruction)) = _menhir_stack in
        let _v : 'tv_list_labelled_instruction_ = 
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 8969 "parser/parser.ml"
         in
        _menhir_goto_list_labelled_instruction_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1228)) : 'freshtv1230)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_dhunk_substitution_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_dhunk_substitution_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState453 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1193 * _menhir_state * 'tv_list_dhunk_substitution_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1189 * _menhir_state * 'tv_list_dhunk_substitution_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1187 * _menhir_state * 'tv_list_dhunk_substitution_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (l : 'tv_list_dhunk_substitution_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 96 "parser/parser.mly"
      ((Virtual_address.t * Dhunk.t) list)
# 8995 "parser/parser.ml"
            ) = 
# 422 "parser/parser.mly"
                                  (l)
# 8999 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1185) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 96 "parser/parser.mly"
      ((Virtual_address.t * Dhunk.t) list)
# 9007 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1183) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 96 "parser/parser.mly"
      ((Virtual_address.t * Dhunk.t) list)
# 9015 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1181) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 96 "parser/parser.mly"
      ((Virtual_address.t * Dhunk.t) list)
# 9023 "parser/parser.ml"
            )) : (
# 96 "parser/parser.mly"
      ((Virtual_address.t * Dhunk.t) list)
# 9027 "parser/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1182)) : 'freshtv1184)) : 'freshtv1186)) : 'freshtv1188)) : 'freshtv1190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1191 * _menhir_state * 'tv_list_dhunk_substitution_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1192)) : 'freshtv1194)
    | MenhirState460 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1197 * _menhir_state * 'tv_dhunk_substitution) * _menhir_state * 'tv_list_dhunk_substitution_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1195 * _menhir_state * 'tv_dhunk_substitution) * _menhir_state * 'tv_list_dhunk_substitution_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_dhunk_substitution)), _, (xs : 'tv_list_dhunk_substitution_)) = _menhir_stack in
        let _v : 'tv_list_dhunk_substitution_ = 
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 9046 "parser/parser.ml"
         in
        _menhir_goto_list_dhunk_substitution_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1196)) : 'freshtv1198)
    | _ ->
        _menhir_fail ()

and _menhir_goto_bin_loc_with_id : _menhir_env -> 'ttv_tail -> 'tv_bin_loc_with_id -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1179 * _menhir_state) * 'tv_bin_loc_with_id) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1169 * 'tv_bin_loc_with_id) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BIN _v ->
            _menhir_run470 _menhir_env (Obj.magic _menhir_stack) MenhirState472 _v
        | HEXA _v ->
            _menhir_run469 _menhir_env (Obj.magic _menhir_stack) MenhirState472 _v
        | INT _v ->
            _menhir_run463 _menhir_env (Obj.magic _menhir_stack) MenhirState472 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState472) : 'freshtv1170)
    | PLUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1171 * 'tv_bin_loc_with_id) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BIN _v ->
            _menhir_run470 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
        | HEXA _v ->
            _menhir_run469 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
        | INT _v ->
            _menhir_run463 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState468) : 'freshtv1172)
    | SUPER ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1175 * _menhir_state) * 'tv_bin_loc_with_id) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1173 * _menhir_state) * 'tv_bin_loc_with_id) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), (x0 : 'tv_bin_loc_with_id)) = _menhir_stack in
        let _30 = () in
        let _10 = () in
        let _v : 'tv_binary_loc = let loc =
          let _3 = _30 in
          let x = x0 in
          let _1 = _10 in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 9108 "parser/parser.ml"
          
        in
        
# 628 "parser/parser.mly"
                                                 ( loc )
# 9114 "parser/parser.ml"
         in
        _menhir_goto_binary_loc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1174)) : 'freshtv1176)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1177 * _menhir_state) * 'tv_bin_loc_with_id) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1178)) : 'freshtv1180)

and _menhir_goto_integer : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_integer -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState468 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1129 * 'tv_bin_loc_with_id)) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1127 * 'tv_bin_loc_with_id)) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, (bloc : 'tv_bin_loc_with_id)), _, (n : 'tv_integer)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_bin_loc_with_id = 
# 622 "parser/parser.mly"
                                          ( Binary_loc.offset n bloc )
# 9139 "parser/parser.ml"
         in
        _menhir_goto_bin_loc_with_id _menhir_env _menhir_stack _v) : 'freshtv1128)) : 'freshtv1130)
    | MenhirState472 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1133 * 'tv_bin_loc_with_id)) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1131 * 'tv_bin_loc_with_id)) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, (bloc : 'tv_bin_loc_with_id)), _, (n : 'tv_integer)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_bin_loc_with_id = 
# 623 "parser/parser.mly"
                                          ( Binary_loc.offset (-n) bloc )
# 9152 "parser/parser.ml"
         in
        _menhir_goto_bin_loc_with_id _menhir_env _menhir_stack _v) : 'freshtv1132)) : 'freshtv1134)
    | MenhirState462 | MenhirState477 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1137 * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1135 * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (address : 'tv_integer)) = _menhir_stack in
        let _v : 'tv_binary_loc = 
# 627 "parser/parser.mly"
                   ( Binary_loc.address @@ Virtual_address.create address )
# 9164 "parser/parser.ml"
         in
        _menhir_goto_binary_loc _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1136)) : 'freshtv1138)
    | MenhirState486 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1145)) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1141)) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1139)) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (x000 : 'tv_integer)) = _menhir_stack in
            let _3000 = () in
            let _1000 = () in
            let _1 = () in
            let _v : 'tv_directive = let times =
              let _300 = _3000 in
              let x00 = x000 in
              let _100 = _1000 in
              let times =
                let _30 = _300 in
                let x0 = x00 in
                let _10 = _100 in
                let x =
                  let _3 = _30 in
                  let x = x0 in
                  let _1 = _10 in
                  
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 9198 "parser/parser.ml"
                  
                in
                
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 9204 "parser/parser.ml"
                
              in
              
# 588 "parser/parser.mly"
                                                ( times )
# 9210 "parser/parser.ml"
              
            in
            
# 605 "parser/parser.mly"
   ( let n = Utils.get_opt_or_default 1 times in Directive.reach ~n )
# 9216 "parser/parser.ml"
             in
            _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv1140)) : 'freshtv1142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1143)) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1144)) : 'freshtv1146)
    | MenhirState495 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1153) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1149) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1147) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _, (e : 'tv_expr)), _), _, (x000 : 'tv_integer)) = _menhir_stack in
            let _3000 = () in
            let _1000 = () in
            let _1 = () in
            let _v : 'tv_directive = let times =
              let _300 = _3000 in
              let x00 = x000 in
              let _100 = _1000 in
              let times =
                let _30 = _300 in
                let x0 = x00 in
                let _10 = _100 in
                let x =
                  let _3 = _30 in
                  let x = x0 in
                  let _1 = _10 in
                  
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 9257 "parser/parser.ml"
                  
                in
                
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 9263 "parser/parser.ml"
                
              in
              
# 588 "parser/parser.mly"
                                                ( times )
# 9269 "parser/parser.ml"
              
            in
            
# 609 "parser/parser.mly"
   ( let n = Utils.get_opt_or_default 1 times in Directive.enumerate ~n e )
# 9275 "parser/parser.ml"
             in
            _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv1148)) : 'freshtv1150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1151) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1152)) : 'freshtv1154)
    | MenhirState553 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1163 * _menhir_state) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1155) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BIN _v ->
                _menhir_run470 _menhir_env (Obj.magic _menhir_stack) MenhirState556 _v
            | HEXA _v ->
                _menhir_run469 _menhir_env (Obj.magic _menhir_stack) MenhirState556 _v
            | INT _v ->
                _menhir_run463 _menhir_env (Obj.magic _menhir_stack) MenhirState556 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState556) : 'freshtv1156)
        | STRING _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1159) = Obj.magic _menhir_stack in
            let (_v : (
# 67 "parser/parser.mly"
       (string)
# 9313 "parser/parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1157) = Obj.magic _menhir_stack in
            let ((s : (
# 67 "parser/parser.mly"
       (string)
# 9321 "parser/parser.ml"
            )) : (
# 67 "parser/parser.mly"
       (string)
# 9325 "parser/parser.ml"
            )) = _v in
            ((let _v : 'tv_opcode = 
# 573 "parser/parser.mly"
             ( Binstream.of_bytes s )
# 9330 "parser/parser.ml"
             in
            _menhir_goto_opcode _menhir_env _menhir_stack _v) : 'freshtv1158)) : 'freshtv1160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1161 * _menhir_state) * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1162)) : 'freshtv1164)
    | MenhirState559 | MenhirState556 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1167 * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BIN _v ->
            _menhir_run470 _menhir_env (Obj.magic _menhir_stack) MenhirState559 _v
        | HEXA _v ->
            _menhir_run469 _menhir_env (Obj.magic _menhir_stack) MenhirState559 _v
        | INT _v ->
            _menhir_run463 _menhir_env (Obj.magic _menhir_stack) MenhirState559 _v
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1165 * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_integer)) = _menhir_stack in
            let _v : 'tv_nonempty_list_integer_ = 
# 195 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 9359 "parser/parser.ml"
             in
            _menhir_goto_nonempty_list_integer_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState559) : 'freshtv1168)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv835 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv833 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState36 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv805 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv801 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | INT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv797 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) = Obj.magic _menhir_stack in
                        let (_v : (
# 63 "parser/parser.mly"
       (string)
# 9407 "parser/parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RBRACKET ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv793 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 9418 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv791 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 9425 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _), (size : (
# 63 "parser/parser.mly"
       (string)
# 9430 "parser/parser.ml"
                            ))) = _menhir_stack in
                            let _7 = () in
                            let _5 = () in
                            let _1000 = () in
                            let _110 = () in
                            let _2 = () in
                            let _1 = () in
                            let _v : 'tv_expr = let end_opt =
                              let _100 = _1000 in
                              let _11 = _110 in
                              let x =
                                let _10 = _100 in
                                let _1 = _11 in
                                let x =
                                  let _1 = _10 in
                                  
# 435 "parser/parser.mly"
           ( BigEndian )
# 9449 "parser/parser.ml"
                                  
                                in
                                
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 9455 "parser/parser.ml"
                                
                              in
                              
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 9461 "parser/parser.ml"
                              
                            in
                            
# 495 "parser/parser.mly"
  ( let size = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.Expr.load size endianness e )
# 9469 "parser/parser.ml"
                             in
                            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv792)) : 'freshtv794)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv795 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 9479 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv796)) : 'freshtv798)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv799 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv800)) : 'freshtv802)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv803 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv804)) : 'freshtv806)
            | ARROWINV ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv821 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv817 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | INT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv813 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) = Obj.magic _menhir_stack in
                        let (_v : (
# 63 "parser/parser.mly"
       (string)
# 9515 "parser/parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RBRACKET ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv809 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 9526 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv807 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 9533 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _), (size : (
# 63 "parser/parser.mly"
       (string)
# 9538 "parser/parser.ml"
                            ))) = _menhir_stack in
                            let _7 = () in
                            let _5 = () in
                            let _1000 = () in
                            let _110 = () in
                            let _2 = () in
                            let _1 = () in
                            let _v : 'tv_expr = let end_opt =
                              let _100 = _1000 in
                              let _11 = _110 in
                              let x =
                                let _10 = _100 in
                                let _1 = _11 in
                                let x =
                                  let _1 = _10 in
                                  
# 436 "parser/parser.mly"
           ( LittleEndian )
# 9557 "parser/parser.ml"
                                  
                                in
                                
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 9563 "parser/parser.ml"
                                
                              in
                              
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 9569 "parser/parser.ml"
                              
                            in
                            
# 495 "parser/parser.mly"
  ( let size = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.Expr.load size endianness e )
# 9577 "parser/parser.ml"
                             in
                            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv808)) : 'freshtv810)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv811 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 9587 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv812)) : 'freshtv814)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv815 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv816)) : 'freshtv818)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv819 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv820)) : 'freshtv822)
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv829 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 63 "parser/parser.mly"
       (string)
# 9611 "parser/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RBRACKET ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv825 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 9622 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv823 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 9629 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _), (size : (
# 63 "parser/parser.mly"
       (string)
# 9634 "parser/parser.ml"
                    ))) = _menhir_stack in
                    let _7 = () in
                    let _5 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_expr = let end_opt =
                      
# 110 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 9644 "parser/parser.ml"
                      
                    in
                    
# 495 "parser/parser.mly"
  ( let size = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.Expr.load size endianness e )
# 9652 "parser/parser.ml"
                     in
                    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv824)) : 'freshtv826)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv827 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 9662 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv828)) : 'freshtv830)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv831 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv832)) : 'freshtv834)
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv836)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv839 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN | XOR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv837 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 515 "parser/parser.mly"
           ( Dba.Binary_op.Xor )
# 9751 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 9757 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv838)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv840)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv843 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv841 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_expr = let bop =
          let _1 = _10 in
          
# 514 "parser/parser.mly"
           ( Dba.Binary_op.And )
# 9776 "parser/parser.ml"
          
        in
        
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 9782 "parser/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv842)) : 'freshtv844)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv847 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv845 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 530 "parser/parser.mly"
           ( Dba.Binary_op.Mult)
# 9807 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 9813 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv846)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv848)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv851 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv849 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 513 "parser/parser.mly"
           ( Dba.Binary_op.Or )
# 9840 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 9846 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv850)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv852)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv855 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv853 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 531 "parser/parser.mly"
           ( Dba.Binary_op.Mult)
# 9875 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 9881 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv854)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv856)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv859 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv857 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 530 "parser/parser.mly"
           ( Dba.Binary_op.Mult)
# 9910 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 9916 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv858)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv860)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv863 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv861 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 532 "parser/parser.mly"
           ( Dba.Binary_op.DivU)
# 9945 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 9951 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv862)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv864)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv867 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv865 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 533 "parser/parser.mly"
           ( Dba.Binary_op.DivS)
# 9980 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 9986 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv866)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv868)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv871 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv869 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 535 "parser/parser.mly"
           ( Dba.Binary_op.RShiftU)
# 10033 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10039 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv870)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv872)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv875 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv873 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 527 "parser/parser.mly"
           ( Dba.Binary_op.Plus )
# 10082 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10088 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv874)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv876)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv879 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv877 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 511 "parser/parser.mly"
           ( Dba.Binary_op.ModU )
# 10117 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10123 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv878)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv880)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv883 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv881 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 512 "parser/parser.mly"
           ( Dba.Binary_op.ModS )
# 10152 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10158 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv882)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv884)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv887 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv885 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 528 "parser/parser.mly"
           ( Dba.Binary_op.Minus )
# 10201 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10207 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv886)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv888)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv891 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv889 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 536 "parser/parser.mly"
           ( Dba.Binary_op.RShiftS )
# 10254 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10260 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv890)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv892)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv895 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv893 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 538 "parser/parser.mly"
           ( Dba.Binary_op.RightRotate )
# 10307 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10313 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv894)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv896)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv899 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv897 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 518 "parser/parser.mly"
           ( Dba.Binary_op.Diff )
# 10372 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10378 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv898)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv900)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv903 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv901 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 534 "parser/parser.mly"
           ( Dba.Binary_op.LShift )
# 10425 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10431 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv902)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv904)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv907 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv905 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 537 "parser/parser.mly"
           ( Dba.Binary_op.LeftRotate )
# 10478 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10484 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv906)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv908)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv911 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv909 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 516 "parser/parser.mly"
           ( Dba.Binary_op.Concat )
# 10541 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10547 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv910)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv912)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv915 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv913 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 520 "parser/parser.mly"
           ( Dba.Binary_op.LtU  )
# 10606 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10612 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv914)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv916)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv919 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv917 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 524 "parser/parser.mly"
           ( Dba.Binary_op.LtS )
# 10671 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10677 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv918)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv920)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv923 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv921 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 519 "parser/parser.mly"
           ( Dba.Binary_op.LeqU )
# 10736 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10742 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv922)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv924)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv927 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv925 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 523 "parser/parser.mly"
           ( Dba.Binary_op.LeqS )
# 10801 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10807 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv926)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv928)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv931 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv929 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 522 "parser/parser.mly"
           ( Dba.Binary_op.GtU )
# 10866 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10872 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv930)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv932)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv935 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv933 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 526 "parser/parser.mly"
           ( Dba.Binary_op.GtS )
# 10931 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 10937 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv934)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv936)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv939 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv937 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 521 "parser/parser.mly"
           ( Dba.Binary_op.GeqU )
# 10996 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 11002 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv938)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv940)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv943 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv941 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 525 "parser/parser.mly"
           ( Dba.Binary_op.GeqS )
# 11061 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 11067 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv942)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv944)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv947 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv945 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (le : 'tv_expr)), _), _, (re : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let bop =
              let _1 = _10 in
              
# 517 "parser/parser.mly"
           ( Dba.Binary_op.Eq )
# 11126 "parser/parser.ml"
              
            in
            
# 507 "parser/parser.mly"
   ( Dba.Expr.binary bop le re )
# 11132 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv946)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv948)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv953 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv951 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState111 in
            let (_v : (
# 63 "parser/parser.mly"
       (string)
# 11166 "parser/parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv949 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((size : (
# 63 "parser/parser.mly"
       (string)
# 11175 "parser/parser.ml"
            )) : (
# 63 "parser/parser.mly"
       (string)
# 11179 "parser/parser.ml"
            )) = _v in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 503 "parser/parser.mly"
   ( Dba.Expr.sext (int_of_string size) e )
# 11186 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv950)) : 'freshtv952)
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv954)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv959 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv957 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState113 in
            let (_v : (
# 63 "parser/parser.mly"
       (string)
# 11264 "parser/parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv955 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((size : (
# 63 "parser/parser.mly"
       (string)
# 11273 "parser/parser.ml"
            )) : (
# 63 "parser/parser.mly"
       (string)
# 11277 "parser/parser.ml"
            )) = _v in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 501 "parser/parser.mly"
   ( Dba.Expr.uext (int_of_string size) e )
# 11284 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv956)) : 'freshtv958)
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv960)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv963 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv961 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState115 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | BIN _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | EXTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | EXTU ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | HEXA _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | IF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | INT _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | LPAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | NOT ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv962)
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv964)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv967 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv965 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState117 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | BIN _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | EXTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | EXTU ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | HEXA _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | IF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | INT _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | LPAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | NOT ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv966)
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv968)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv971 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | ANNOT | COMMA | DOTDOT | ELSE | EOF | GOTO | HEXA _ | INT _ | LBRACE | LPAR | RBRACE | RBRACKETS | RBRACKETU | RPAR | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv969 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (c : 'tv_expr)), _), _, (then_e : 'tv_expr)), _), _, (else_e : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 505 "parser/parser.mly"
   ( Dba.Expr.ite c then_e else_e )
# 11611 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv970)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv972)
    | MenhirState197 | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv977 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv975 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState124 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv973 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 478 "parser/parser.mly"
                    ( e )
# 11678 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv974)) : 'freshtv976)
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv978)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv981 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv979 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 499 "parser/parser.mly"
                     ( Dba.Expr.uminus e )
# 11737 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv980)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv982)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv985 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv983 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 498 "parser/parser.mly"
                     ( Dba.Expr.lognot e )
# 11754 "parser/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv984)) : 'freshtv986)
    | MenhirState20 | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv989 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | COMMA | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv987 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_printarg = 
# 430 "parser/parser.mly"
            ( Exp e )
# 11828 "parser/parser.ml"
             in
            _menhir_goto_printarg _menhir_env _menhir_stack _menhir_s _v) : 'freshtv988)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv990)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1035 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1033 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState147 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1005 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1001 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | INT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv997 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) = Obj.magic _menhir_stack in
                        let (_v : (
# 63 "parser/parser.mly"
       (string)
# 11869 "parser/parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RBRACKET ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv993 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 11880 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv991 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 11887 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _), (size : (
# 63 "parser/parser.mly"
       (string)
# 11892 "parser/parser.ml"
                            ))) = _menhir_stack in
                            let _7 = () in
                            let _5 = () in
                            let _1000 = () in
                            let _110 = () in
                            let _2 = () in
                            let _1 = () in
                            let _v : 'tv_address_lvalue = let end_opt =
                              let _100 = _1000 in
                              let _11 = _110 in
                              let x =
                                let _10 = _100 in
                                let _1 = _11 in
                                let x =
                                  let _1 = _10 in
                                  
# 435 "parser/parser.mly"
           ( BigEndian )
# 11911 "parser/parser.ml"
                                  
                                in
                                
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 11917 "parser/parser.ml"
                                
                              in
                              
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 11923 "parser/parser.ml"
                              
                            in
                            
# 443 "parser/parser.mly"
  ( let sz = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.LValue.store sz endianness e
  )
# 11932 "parser/parser.ml"
                             in
                            _menhir_goto_address_lvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv992)) : 'freshtv994)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv995 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 11942 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv996)) : 'freshtv998)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv999 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1000)) : 'freshtv1002)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1003 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1004)) : 'freshtv1006)
            | ARROWINV ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1021 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1017 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | INT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv1013 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) = Obj.magic _menhir_stack in
                        let (_v : (
# 63 "parser/parser.mly"
       (string)
# 11978 "parser/parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RBRACKET ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv1009 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 11989 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv1007 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 11996 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _), (size : (
# 63 "parser/parser.mly"
       (string)
# 12001 "parser/parser.ml"
                            ))) = _menhir_stack in
                            let _7 = () in
                            let _5 = () in
                            let _1000 = () in
                            let _110 = () in
                            let _2 = () in
                            let _1 = () in
                            let _v : 'tv_address_lvalue = let end_opt =
                              let _100 = _1000 in
                              let _11 = _110 in
                              let x =
                                let _10 = _100 in
                                let _1 = _11 in
                                let x =
                                  let _1 = _10 in
                                  
# 436 "parser/parser.mly"
           ( LittleEndian )
# 12020 "parser/parser.ml"
                                  
                                in
                                
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 12026 "parser/parser.ml"
                                
                              in
                              
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 12032 "parser/parser.ml"
                              
                            in
                            
# 443 "parser/parser.mly"
  ( let sz = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.LValue.store sz endianness e
  )
# 12041 "parser/parser.ml"
                             in
                            _menhir_goto_address_lvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1008)) : 'freshtv1010)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv1011 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) * (
# 63 "parser/parser.mly"
       (string)
# 12051 "parser/parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1012)) : 'freshtv1014)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv1015 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1016)) : 'freshtv1018)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1019 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1020)) : 'freshtv1022)
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1029 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 63 "parser/parser.mly"
       (string)
# 12075 "parser/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RBRACKET ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1025 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 12086 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1023 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 12093 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((((_menhir_stack, _menhir_s), _, (e : 'tv_expr)), _), (size : (
# 63 "parser/parser.mly"
       (string)
# 12098 "parser/parser.ml"
                    ))) = _menhir_stack in
                    let _7 = () in
                    let _5 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_address_lvalue = let end_opt =
                      
# 110 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 12108 "parser/parser.ml"
                      
                    in
                    
# 443 "parser/parser.mly"
  ( let sz = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.LValue.store sz endianness e
  )
# 12117 "parser/parser.ml"
                     in
                    _menhir_goto_address_lvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1024)) : 'freshtv1026)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv1027 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 12127 "parser/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1028)) : 'freshtv1030)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1031 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1032)) : 'freshtv1034)
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv1036)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1041 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1039 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState172 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1037 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), (lvalues : 'tv_set_of_lvalue_)), _, (e0 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_annotable_instruction = let condition =
              let e = e0 in
              
# 544 "parser/parser.mly"
            ( e )
# 12262 "parser/parser.ml"
              
            in
            
# 383 "parser/parser.mly"
  ( Dba.Instr.non_deterministic_assume
      lvalues condition unknown_successor
  )
# 12270 "parser/parser.ml"
             in
            _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1038)) : 'freshtv1040)
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv1042)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1045 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | GOTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1043 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState190 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | LPAR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191) : 'freshtv1044)
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190) : 'freshtv1046)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1049 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ANNOT ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | EOF | HEXA _ | INT _ | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1047) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState208 in
            ((let _v : 'tv_option_jump_annotation_ = 
# 100 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 12452 "parser/parser.ml"
             in
            _menhir_goto_option_jump_annotation_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1048)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208) : 'freshtv1050)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1055 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1053 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState213 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1051 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (x0 : 'tv_expr)) = _menhir_stack in
            let _30 = () in
            let _10 = () in
            let _1 = () in
            let _v : 'tv_annotable_instruction = let e =
              let _3 = _30 in
              let x = x0 in
              let _1 = _10 in
              
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 12524 "parser/parser.ml"
              
            in
            
# 376 "parser/parser.mly"
  ( Dba.Instr.free e unknown_successor )
# 12530 "parser/parser.ml"
             in
            _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1052)) : 'freshtv1054)
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState213
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState213) : 'freshtv1056)
    | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1061 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1059 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState221 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1057 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e00 : 'tv_expr)) = _menhir_stack in
            let _30 = () in
            let _10 = () in
            let _1 = () in
            let _v : 'tv_annotable_instruction = let condition =
              let _3 = _30 in
              let e0 = e00 in
              let _1 = _10 in
              let x =
                let e = e0 in
                
# 544 "parser/parser.mly"
            ( e )
# 12622 "parser/parser.ml"
                
              in
              
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 12628 "parser/parser.ml"
              
            in
            
# 380 "parser/parser.mly"
  ( Dba.Instr.assume condition unknown_successor )
# 12634 "parser/parser.ml"
             in
            _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1058)) : 'freshtv1060)
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState221
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState221) : 'freshtv1062)
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1067 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1065 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState229 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1063 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e00 : 'tv_expr)) = _menhir_stack in
            let _30 = () in
            let _10 = () in
            let _1 = () in
            let _v : 'tv_annotable_instruction = let condition =
              let _3 = _30 in
              let e0 = e00 in
              let _1 = _10 in
              let x =
                let e = e0 in
                
# 544 "parser/parser.mly"
            ( e )
# 12726 "parser/parser.ml"
                
              in
              
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 12732 "parser/parser.ml"
              
            in
            
# 378 "parser/parser.mly"
  ( Dba.Instr._assert condition unknown_successor )
# 12738 "parser/parser.ml"
             in
            _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1064)) : 'freshtv1066)
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState229) : 'freshtv1068)
    | MenhirState244 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1073 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1071 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState245 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1069 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (x0 : 'tv_expr)) = _menhir_stack in
            let _30 = () in
            let _10 = () in
            let _1 = () in
            let _v : 'tv_rvalue = let e =
              let _3 = _30 in
              let x = x0 in
              let _1 = _10 in
              
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 12828 "parser/parser.ml"
              
            in
            
# 319 "parser/parser.mly"
  ( fun lv -> Dba.Instr.malloc lv e  )
# 12834 "parser/parser.ml"
             in
            _menhir_goto_rvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1070)) : 'freshtv1072)
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState245
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245) : 'freshtv1074)
    | MenhirState522 | MenhirState232 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1077 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1075 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_rvalue = 
# 316 "parser/parser.mly"
          ( fun lv -> Dba.Instr.assign lv e )
# 12930 "parser/parser.ml"
             in
            _menhir_goto_rvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1076)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState248) : 'freshtv1078)
    | MenhirState493 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1083) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1079) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState494 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BIN _v ->
                _menhir_run470 _menhir_env (Obj.magic _menhir_stack) MenhirState495 _v
            | HEXA _v ->
                _menhir_run469 _menhir_env (Obj.magic _menhir_stack) MenhirState495 _v
            | INT _v ->
                _menhir_run463 _menhir_env (Obj.magic _menhir_stack) MenhirState495 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState495) : 'freshtv1080)
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState494
        | EOF | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1081) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_directive = let times =
              let times =
                
# 110 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 13029 "parser/parser.ml"
                
              in
              
# 588 "parser/parser.mly"
                                                ( times )
# 13035 "parser/parser.ml"
              
            in
            
# 609 "parser/parser.mly"
   ( let n = Utils.get_opt_or_default 1 times in Directive.enumerate ~n e )
# 13041 "parser/parser.ml"
             in
            _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv1082)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState494) : 'freshtv1084)
    | MenhirState503 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1087) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | EOF | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1085) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_directive = 
# 611 "parser/parser.mly"
   ( Directive.assume e )
# 13120 "parser/parser.ml"
             in
            _menhir_goto_directive _menhir_env _menhir_stack _v) : 'freshtv1086)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState504) : 'freshtv1088)
    | MenhirState509 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1099 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1097 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState511 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1095 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 84 "parser/parser.mly"
      (Dba.Expr.t)
# 13149 "parser/parser.ml"
            ) = 
# 474 "parser/parser.mly"
              ( e )
# 13153 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1093) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 84 "parser/parser.mly"
      (Dba.Expr.t)
# 13161 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1091) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 84 "parser/parser.mly"
      (Dba.Expr.t)
# 13169 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1089) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 84 "parser/parser.mly"
      (Dba.Expr.t)
# 13177 "parser/parser.ml"
            )) : (
# 84 "parser/parser.mly"
      (Dba.Expr.t)
# 13181 "parser/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1090)) : 'freshtv1092)) : 'freshtv1094)) : 'freshtv1096)) : 'freshtv1098)
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState511
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState511) : 'freshtv1100)
    | MenhirState523 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1109 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1103) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState524 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1101) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            ((let _1 = () in
            let _v : 'tv_either_DOTDOT_COMMA_ = 
# 333 "parser/parser.mly"
    ( _1 )
# 13262 "parser/parser.ml"
             in
            _menhir_goto_either_DOTDOT_COMMA_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1102)) : 'freshtv1104)
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | DOTDOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1107) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState524 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1105) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            ((let _1 = () in
            let _v : 'tv_either_DOTDOT_COMMA_ = 
# 332 "parser/parser.mly"
    ( _1 )
# 13279 "parser/parser.ml"
             in
            _menhir_goto_either_DOTDOT_COMMA_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1106)) : 'freshtv1108)
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState524) : 'freshtv1110)
    | MenhirState527 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1119 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_either_DOTDOT_COMMA_) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | RBRACKETS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1113 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_either_DOTDOT_COMMA_) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState528 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1111 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_either_DOTDOT_COMMA_) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (_3 : 'tv_either_DOTDOT_COMMA_)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _1 = () in
            let _v : 'tv_interval_or_set = 
# 338 "parser/parser.mly"
  ( Initialization.Signed_interval(e1,e2) )
# 13400 "parser/parser.ml"
             in
            _menhir_goto_interval_or_set _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1112)) : 'freshtv1114)
        | RBRACKETU ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1117 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_either_DOTDOT_COMMA_) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState528 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1115 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_either_DOTDOT_COMMA_) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (_3 : 'tv_either_DOTDOT_COMMA_)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _1 = () in
            let _v : 'tv_interval_or_set = 
# 340 "parser/parser.mly"
  ( Initialization.Unsigned_interval(e1,e2) )
# 13417 "parser/parser.ml"
             in
            _menhir_goto_interval_or_set _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1116)) : 'freshtv1118)
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState528
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState528) : 'freshtv1120)
    | MenhirState535 | MenhirState531 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1125 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1121 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState534 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState535
            | BIN _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState535 _v
            | EXTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState535
            | EXTU ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState535
            | HEXA _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState535 _v
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState535 _v
            | IF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState535
            | INT _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState535 _v
            | LPAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState535
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState535
            | NOT ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState535
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState535) : 'freshtv1122)
        | CONCAT ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | EQUAL ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | GES ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | GEU ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | GTS ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | GTU ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | LES ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | LEU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | LROTATE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | LSHIFT ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | LTS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | LTU ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | MODS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | MODU ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | NEQ ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | PLUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | RROTATE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | RSHIFTS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | RSHIFTU ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | SLASH_S ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | SLASH_U ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | STAR ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | STAR_S ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | STAR_U ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | XOR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState534
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1123 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 215 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 13547 "parser/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState534) : 'freshtv1126)
    | _ ->
        _menhir_fail ()

and _menhir_goto_constant : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_constant -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv763 * _menhir_state) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv761 * _menhir_state) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv762)) : 'freshtv764)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv771 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv767 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv765 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (x0 : 'tv_constant)) = _menhir_stack in
            let _4 = () in
            let _11 = () in
            let _10 = () in
            let _1 = () in
            let _v : 'tv_expr = let cst =
              let x = x0 in
              let _1 = _11 in
              
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 13599 "parser/parser.ml"
              
            in
            let region =
              let _1 = _10 in
              
# 261 "parser/parser.mly"
            ( `Stack )
# 13607 "parser/parser.ml"
              
            in
            
# 490 "parser/parser.mly"
  ( Dba.Expr.constant cst ~region )
# 13613 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv766)) : 'freshtv768)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv769 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv770)) : 'freshtv772)
    | MenhirState522 | MenhirState531 | MenhirState535 | MenhirState523 | MenhirState527 | MenhirState509 | MenhirState503 | MenhirState493 | MenhirState232 | MenhirState244 | MenhirState224 | MenhirState216 | MenhirState212 | MenhirState196 | MenhirState175 | MenhirState167 | MenhirState146 | MenhirState20 | MenhirState130 | MenhirState22 | MenhirState23 | MenhirState24 | MenhirState29 | MenhirState116 | MenhirState118 | MenhirState32 | MenhirState33 | MenhirState35 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState82 | MenhirState80 | MenhirState78 | MenhirState76 | MenhirState68 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState66 | MenhirState64 | MenhirState54 | MenhirState62 | MenhirState56 | MenhirState60 | MenhirState58 | MenhirState52 | MenhirState50 | MenhirState48 | MenhirState46 | MenhirState42 | MenhirState44 | MenhirState37 | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv773 * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
        (_menhir_reduce125 _menhir_env (Obj.magic _menhir_stack) : 'freshtv774)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv781 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv777 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv775 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (x0 : 'tv_constant)) = _menhir_stack in
            let _4 = () in
            let _11 = () in
            let _10 = () in
            let _1 = () in
            let _v : 'tv_expr = let cst =
              let x = x0 in
              let _1 = _11 in
              
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 13650 "parser/parser.ml"
              
            in
            let region =
              let _1 = _10 in
              
# 260 "parser/parser.mly"
            ( `Constant )
# 13658 "parser/parser.ml"
              
            in
            
# 490 "parser/parser.mly"
  ( Dba.Expr.constant cst ~region )
# 13664 "parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv776)) : 'freshtv778)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv779 * _menhir_state) * _menhir_state)) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv780)) : 'freshtv782)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv785 * _menhir_state) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | AND | CONCAT | EQUAL | GES | GEU | GTS | GTU | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | XOR ->
            _menhir_reduce125 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv783 * _menhir_state) * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv784)) : 'freshtv786)
    | MenhirState398 | MenhirState395 | MenhirState298 | MenhirState379 | MenhirState301 | MenhirState302 | MenhirState303 | MenhirState304 | MenhirState305 | MenhirState369 | MenhirState367 | MenhirState365 | MenhirState363 | MenhirState361 | MenhirState352 | MenhirState350 | MenhirState348 | MenhirState346 | MenhirState338 | MenhirState344 | MenhirState342 | MenhirState340 | MenhirState336 | MenhirState334 | MenhirState324 | MenhirState332 | MenhirState326 | MenhirState330 | MenhirState328 | MenhirState322 | MenhirState320 | MenhirState318 | MenhirState316 | MenhirState312 | MenhirState314 | MenhirState307 | MenhirState309 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv789 * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv787 * _menhir_state * 'tv_constant) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (cst : 'tv_constant)) = _menhir_stack in
        let _v : 'tv_constant_expr = 
# 243 "parser/parser.mly"
   ( Dba.Expr.constant cst  )
# 13700 "parser/parser.ml"
         in
        _menhir_goto_constant_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv788)) : 'freshtv790)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_terminated_initialization_directive_SEMICOLON__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_terminated_initialization_directive_SEMICOLON__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState513 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv755 * _menhir_state * 'tv_list_terminated_initialization_directive_SEMICOLON__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv751 * _menhir_state * 'tv_list_terminated_initialization_directive_SEMICOLON__) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv749 * _menhir_state * 'tv_list_terminated_initialization_directive_SEMICOLON__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (v : 'tv_list_terminated_initialization_directive_SEMICOLON__)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 111 "parser/parser.mly"
      (Parse_helpers.Initialization.t list)
# 13726 "parser/parser.ml"
            ) = 
# 368 "parser/parser.mly"
                                                               ( v )
# 13730 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv747) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 111 "parser/parser.mly"
      (Parse_helpers.Initialization.t list)
# 13738 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv745) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 111 "parser/parser.mly"
      (Parse_helpers.Initialization.t list)
# 13746 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv743) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 111 "parser/parser.mly"
      (Parse_helpers.Initialization.t list)
# 13754 "parser/parser.ml"
            )) : (
# 111 "parser/parser.mly"
      (Parse_helpers.Initialization.t list)
# 13758 "parser/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv744)) : 'freshtv746)) : 'freshtv748)) : 'freshtv750)) : 'freshtv752)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv753 * _menhir_state * 'tv_list_terminated_initialization_directive_SEMICOLON__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv754)) : 'freshtv756)
    | MenhirState518 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv759 * _menhir_state * 'tv_initialization_directive)) * _menhir_state * 'tv_list_terminated_initialization_directive_SEMICOLON__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv757 * _menhir_state * 'tv_initialization_directive)) * _menhir_state * 'tv_list_terminated_initialization_directive_SEMICOLON__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x0 : 'tv_initialization_directive)), _, (xs : 'tv_list_terminated_initialization_directive_SEMICOLON__)) = _menhir_stack in
        let _20 = () in
        let _v : 'tv_list_terminated_initialization_directive_SEMICOLON__ = let x =
          let _2 = _20 in
          let x = x0 in
          
# 165 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 13781 "parser/parser.ml"
          
        in
        
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 13787 "parser/parser.ml"
         in
        _menhir_goto_list_terminated_initialization_directive_SEMICOLON__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv758)) : 'freshtv760)
    | _ ->
        _menhir_fail ()

and _menhir_goto_boption_UNCONTROLLED_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_boption_UNCONTROLLED_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv741 * _menhir_state * 'tv_boption_UNCONTROLLED_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState520
    | IDENT _v ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState520 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState520) : 'freshtv742)

and _menhir_goto_option_stop_annot_ : _menhir_env -> 'ttv_tail -> 'tv_option_stop_annot_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv739 * _menhir_state) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_stop_annot_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv737 * _menhir_state) = Obj.magic _menhir_stack in
    let ((sannot : 'tv_option_stop_annot_) : 'tv_option_stop_annot_) = _v in
    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_explicit_instruction = 
# 393 "parser/parser.mly"
  ( Dba.Instr.stop sannot )
# 13823 "parser/parser.ml"
     in
    _menhir_goto_explicit_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv738)) : 'freshtv740)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 67 "parser/parser.mly"
       (string)
# 13830 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv735) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((s : (
# 67 "parser/parser.mly"
       (string)
# 13840 "parser/parser.ml"
    )) : (
# 67 "parser/parser.mly"
       (string)
# 13844 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_printarg = 
# 431 "parser/parser.mly"
            ( Str s )
# 13849 "parser/parser.ml"
     in
    _menhir_goto_printarg _menhir_env _menhir_stack _menhir_s _v) : 'freshtv736)

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv733) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv729) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv727) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (xs00 : 'tv_loption_separated_nonempty_list_COMMA_lvalue__)) = _menhir_stack in
        let _30 = () in
        let _10 = () in
        let _v : 'tv_bag_of_LBRACE_RBRACE_COMMA_lvalue_ = let _1 =
          let _3 = _30 in
          let xs0 = xs00 in
          let _1 = _10 in
          let x =
            let xs = xs0 in
            
# 206 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( xs )
# 13879 "parser/parser.ml"
            
          in
          
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 13885 "parser/parser.ml"
          
        in
        
# 119 "parser/parser.mly"
                                                      ( _1 )
# 13891 "parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv725) = _menhir_stack in
        let (_v : 'tv_bag_of_LBRACE_RBRACE_COMMA_lvalue_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv723) = Obj.magic _menhir_stack in
        let (_v : 'tv_bag_of_LBRACE_RBRACE_COMMA_lvalue_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv721) = Obj.magic _menhir_stack in
        let ((v : 'tv_bag_of_LBRACE_RBRACE_COMMA_lvalue_) : 'tv_bag_of_LBRACE_RBRACE_COMMA_lvalue_) = _v in
        ((let _v : 'tv_set_of_lvalue_ = 
# 123 "parser/parser.mly"
                                      ( v )
# 13905 "parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv719) = _menhir_stack in
        let (_v : 'tv_set_of_lvalue_) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv717 * _menhir_state)) * 'tv_set_of_lvalue_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv713 * _menhir_state)) * 'tv_set_of_lvalue_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | BIN _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
            | EXTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | EXTU ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | FALSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv703 * _menhir_state)) * 'tv_set_of_lvalue_)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState167 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv699 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv697 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), (lvalues : 'tv_set_of_lvalue_)), _) = _menhir_stack in
                    let _6 = () in
                    let _10 = () in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_annotable_instruction = let condition =
                      let _1 = _10 in
                      
# 543 "parser/parser.mly"
            ( Dba.Expr.zero )
# 13955 "parser/parser.ml"
                      
                    in
                    
# 383 "parser/parser.mly"
  ( Dba.Instr.non_deterministic_assume
      lvalues condition unknown_successor
  )
# 13963 "parser/parser.ml"
                     in
                    _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv698)) : 'freshtv700)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv701 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv702)) : 'freshtv704)
            | HEXA _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
            | IF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | INT _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
            | LPAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | NOT ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | TRUE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv711 * _menhir_state)) * 'tv_set_of_lvalue_)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState167 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv707 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv705 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), (lvalues : 'tv_set_of_lvalue_)), _) = _menhir_stack in
                    let _6 = () in
                    let _10 = () in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_annotable_instruction = let condition =
                      let _1 = _10 in
                      
# 542 "parser/parser.mly"
            ( Dba.Expr.one )
# 14012 "parser/parser.ml"
                      
                    in
                    
# 383 "parser/parser.mly"
  ( Dba.Instr.non_deterministic_assume
      lvalues condition unknown_successor
  )
# 14020 "parser/parser.ml"
                     in
                    _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv706)) : 'freshtv708)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv709 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv710)) : 'freshtv712)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167) : 'freshtv714)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv715 * _menhir_state)) * 'tv_set_of_lvalue_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv716)) : 'freshtv718)) : 'freshtv720)) : 'freshtv722)) : 'freshtv724)) : 'freshtv726)) : 'freshtv728)) : 'freshtv730)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv731) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv732)) : 'freshtv734)

and _menhir_run178 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "parser/parser.mly"
       (string)
# 14052 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce266 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_option_size_annot_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_size_annot_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv695 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 14065 "parser/parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_option_size_annot_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv693 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 14073 "parser/parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((sz_opt : 'tv_option_size_annot_) : 'tv_option_size_annot_) = _v in
    ((let (_menhir_stack, _menhir_s, (id : (
# 64 "parser/parser.mly"
       (string)
# 14080 "parser/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_lvalue = 
# 451 "parser/parser.mly"
  ( let bitsize = Utils.get_opt_or_default 1 sz_opt |> Size.Bit.create in
    Dba.LValue.var id ~bitsize None )
# 14086 "parser/parser.ml"
     in
    _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv694)) : 'freshtv696)

and _menhir_goto_lvalue : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState161 | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv673 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv667 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | IDENT _v ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv668)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv669 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_lvalue_ = 
# 215 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 14121 "parser/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_lvalue_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv670)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv671 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv672)) : 'freshtv674)
    | MenhirState548 | MenhirState445 | MenhirState410 | MenhirState406 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv679 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv675 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | BIN _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
            | EXTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | EXTU ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | HEXA _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
            | IF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | INT _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
            | LPAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | MALLOC ->
                _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | NONDET ->
                _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | NOT ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | UNCONTROLLED ->
                _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | UNDEF ->
                _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState232
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState232) : 'freshtv676)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv677 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv678)) : 'freshtv680)
    | MenhirState520 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv691 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv685 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | BIN _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState522 _v
            | EXTS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | EXTU ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | HEXA _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState522 _v
            | IDENT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState522 _v
            | IF ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | INT _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState522 _v
            | LBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv681) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState522 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AT ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState531
                | BIN _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState531 _v
                | EXTS ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState531
                | EXTU ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState531
                | HEXA _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState531 _v
                | IDENT _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState531 _v
                | IF ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState531
                | INT _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState531 _v
                | LPAR ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState531
                | MINUS ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState531
                | NOT ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState531
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState531) : 'freshtv682)
            | LBRACKET ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv683) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState522 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AT ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState523
                | BIN _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState523 _v
                | EXTS ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState523
                | EXTU ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState523
                | HEXA _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState523 _v
                | IDENT _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState523 _v
                | IF ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState523
                | INT _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState523 _v
                | LPAR ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState523
                | MINUS ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState523
                | NOT ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState523
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState523) : 'freshtv684)
            | LPAR ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | MALLOC ->
                _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | NONDET ->
                _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | NOT ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | UNCONTROLLED ->
                _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | UNDEF ->
                _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState522
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState522) : 'freshtv686)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv687 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (lv : 'tv_lvalue)) = _menhir_stack in
            let _v : 'tv_initialization_assignment = 
# 359 "parser/parser.mly"
              ( Initialization.universal lv )
# 14305 "parser/parser.ml"
             in
            _menhir_goto_initialization_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv688)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv689 * _menhir_state * 'tv_lvalue) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv690)) : 'freshtv692)
    | _ ->
        _menhir_fail ()

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv663 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv664)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv665 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv666)

and _menhir_run120 : _menhir_env -> 'ttv_tail * _menhir_state -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv659 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv660)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv661 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv662)

and _menhir_reduce266 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 14381 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (label : (
# 63 "parser/parser.mly"
       (string)
# 14387 "parser/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_static_target = 
# 289 "parser/parser.mly"
                ( Dba.Jump_target.inner (int_of_string label) )
# 14392 "parser/parser.ml"
     in
    _menhir_goto_static_target _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv655 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 63 "parser/parser.mly"
       (string)
# 14408 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SUPER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv651 * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 14419 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv649 * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 14426 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (size : (
# 63 "parser/parser.mly"
       (string)
# 14431 "parser/parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_size_annot = 
# 237 "parser/parser.mly"
                        ( int_of_string size )
# 14438 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv647) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_size_annot) = _v in
            ((match _menhir_s with
            | MenhirState199 | MenhirState2 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv637 * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 14450 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_size_annot) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv635 * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 14458 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((size : 'tv_size_annot) : 'tv_size_annot) = _v in
                ((let (_menhir_stack, _menhir_s, (value : (
# 63 "parser/parser.mly"
       (string)
# 14465 "parser/parser.ml"
                ))) = _menhir_stack in
                let _v : 'tv_constant = 
# 460 "parser/parser.mly"
  ( Bitvector.create (Bigint.big_int_of_string value) size )
# 14470 "parser/parser.ml"
                 in
                _menhir_goto_constant _menhir_env _menhir_stack _menhir_s _v) : 'freshtv636)) : 'freshtv638)
            | MenhirState30 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv641 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 14478 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_size_annot) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv639 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 14486 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((x0 : 'tv_size_annot) : 'tv_size_annot) = _v in
                ((let (_menhir_stack, _menhir_s, (id : (
# 64 "parser/parser.mly"
       (string)
# 14493 "parser/parser.ml"
                ))) = _menhir_stack in
                let _v : 'tv_expr = let sz_opt =
                  let x = x0 in
                  
# 112 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 14500 "parser/parser.ml"
                  
                in
                
# 481 "parser/parser.mly"
  ( let sz = Utils.get_opt_or_default 1 sz_opt in
    Dba.Expr.var id sz None )
# 14507 "parser/parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv640)) : 'freshtv642)
            | MenhirState136 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv645) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_size_annot) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv643) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((x : 'tv_size_annot) : 'tv_size_annot) = _v in
                ((let _v : 'tv_option_size_annot_ = 
# 102 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 14522 "parser/parser.ml"
                 in
                _menhir_goto_option_size_annot_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv644)) : 'freshtv646)
            | _ ->
                _menhir_fail ()) : 'freshtv648)) : 'freshtv650)) : 'freshtv652)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv653 * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 14534 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv654)) : 'freshtv656)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv657 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv658)

and _menhir_goto_annotable_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_annotable_instruction -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv633 * _menhir_state * 'tv_annotable_instruction) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv629 * _menhir_state * 'tv_annotable_instruction) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GOTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv623 * _menhir_state * 'tv_annotable_instruction)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv619 * _menhir_state * 'tv_annotable_instruction))) = Obj.magic _menhir_stack in
                let (_v : (
# 63 "parser/parser.mly"
       (string)
# 14572 "parser/parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv617 * _menhir_state * 'tv_annotable_instruction))) = Obj.magic _menhir_stack in
                let ((_2000 : (
# 63 "parser/parser.mly"
       (string)
# 14580 "parser/parser.ml"
                )) : (
# 63 "parser/parser.mly"
       (string)
# 14584 "parser/parser.ml"
                )) = _v in
                ((let (_menhir_stack, _menhir_s, (instr : 'tv_annotable_instruction)) = _menhir_stack in
                let _1000 = () in
                let _110 = () in
                let _v : 'tv_instruction = let addr =
                  let _200 = _2000 in
                  let _100 = _1000 in
                  let _11 = _110 in
                  let addr =
                    let _20 = _200 in
                    let _10 = _100 in
                    let _1 = _11 in
                    let x =
                      let _2 = _20 in
                      let _1 = _10 in
                      
# 425 "parser/parser.mly"
           ( int_of_string _2 )
# 14603 "parser/parser.ml"
                      
                    in
                    
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 14609 "parser/parser.ml"
                    
                  in
                  
# 277 "parser/parser.mly"
                                           ( addr )
# 14615 "parser/parser.ml"
                  
                in
                
# 398 "parser/parser.mly"
  ( Dba_types.Instruction.set_successor instr addr )
# 14621 "parser/parser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv618)) : 'freshtv620)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv621 * _menhir_state * 'tv_annotable_instruction))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv622)) : 'freshtv624)
        | EOF | HEXA _ | INT _ | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv625 * _menhir_state * 'tv_annotable_instruction)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (instr : 'tv_annotable_instruction)) = _menhir_stack in
            let _100 = () in
            let _v : 'tv_instruction = let addr =
              let _10 = _100 in
              let addr =
                let _1 = _10 in
                let x =
                  
# 426 "parser/parser.mly"
           ( cur_address () )
# 14644 "parser/parser.ml"
                  
                in
                
# 157 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 14650 "parser/parser.ml"
                
              in
              
# 277 "parser/parser.mly"
                                           ( addr )
# 14656 "parser/parser.ml"
              
            in
            
# 398 "parser/parser.mly"
  ( Dba_types.Instruction.set_successor instr addr )
# 14662 "parser/parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv626)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv627 * _menhir_state * 'tv_annotable_instruction)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv628)) : 'freshtv630)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv631 * _menhir_state * 'tv_annotable_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv632)) : 'freshtv634)

and _menhir_goto_list_patch_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_patch_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState564 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv601 * _menhir_state * 'tv_patch) * _menhir_state * 'tv_list_patch_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv599 * _menhir_state * 'tv_patch) * _menhir_state * 'tv_list_patch_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_patch)), _, (xs : 'tv_list_patch_)) = _menhir_stack in
        let _v : 'tv_list_patch_ = 
# 187 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 14693 "parser/parser.ml"
         in
        _menhir_goto_list_patch_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv600)) : 'freshtv602)
    | MenhirState552 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615 * _menhir_state * 'tv_list_patch_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv611 * _menhir_state * 'tv_list_patch_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv609 * _menhir_state * 'tv_list_patch_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (patches : 'tv_list_patch_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 108 "parser/parser.mly"
      (Binstream.t Virtual_address.Map.t)
# 14712 "parser/parser.ml"
            ) = 
# 583 "parser/parser.mly"
                            ( mk_patches patches )
# 14716 "parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv607) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 108 "parser/parser.mly"
      (Binstream.t Virtual_address.Map.t)
# 14724 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv605) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 108 "parser/parser.mly"
      (Binstream.t Virtual_address.Map.t)
# 14732 "parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv603) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 108 "parser/parser.mly"
      (Binstream.t Virtual_address.Map.t)
# 14740 "parser/parser.ml"
            )) : (
# 108 "parser/parser.mly"
      (Binstream.t Virtual_address.Map.t)
# 14744 "parser/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv604)) : 'freshtv606)) : 'freshtv608)) : 'freshtv610)) : 'freshtv612)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv613 * _menhir_state * 'tv_list_patch_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv614)) : 'freshtv616)
    | _ ->
        _menhir_fail ()

and _menhir_reduce195 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_localized_instruction_ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 14762 "parser/parser.ml"
     in
    _menhir_goto_list_localized_instruction_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run416 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "parser/parser.mly"
       (string)
# 14795 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv591 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 14806 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BIN _v ->
                _menhir_run422 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _v
            | HEXA _v ->
                _menhir_run421 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _v
            | INT _v ->
                _menhir_run420 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _v
            | STRING _v ->
                _menhir_run419 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState418) : 'freshtv592)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv593 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 14830 "parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv597 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv598)

and _menhir_reduce193 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_labelled_instruction_ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 14847 "parser/parser.ml"
     in
    _menhir_goto_list_labelled_instruction_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run444 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "parser/parser.mly"
       (string)
# 14854 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv587 * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 14866 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSERT ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack) MenhirState445
        | ASSUME ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState445
        | AT ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState445
        | FREE ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState445
        | GOTO ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState445
        | IDENT _v ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _v
        | IF ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState445
        | NONDETASSUME ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState445
        | PRINT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState445
        | STOP ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState445
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState445) : 'freshtv588)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589 * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 14902 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)

and _menhir_reduce191 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_dhunk_substitution_ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 14912 "parser/parser.ml"
     in
    _menhir_goto_list_dhunk_substitution_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run454 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "parser/parser.mly"
       (string)
# 14919 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583 * _menhir_state * (
# 65 "parser/parser.mly"
       (string)
# 14931 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT _v ->
            _menhir_run444 _menhir_env (Obj.magic _menhir_stack) MenhirState455 _v
        | EOF | HEXA _ ->
            _menhir_reduce193 _menhir_env (Obj.magic _menhir_stack) MenhirState455
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState455) : 'freshtv584)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv585 * _menhir_state * (
# 65 "parser/parser.mly"
       (string)
# 14951 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv586)

and _menhir_run463 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "parser/parser.mly"
       (string)
# 14959 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv581) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 63 "parser/parser.mly"
       (string)
# 14969 "parser/parser.ml"
    )) : (
# 63 "parser/parser.mly"
       (string)
# 14973 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_integer = 
# 569 "parser/parser.mly"
             ( int_of_string n )
# 14978 "parser/parser.ml"
     in
    _menhir_goto_integer _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)

and _menhir_run464 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv577) = Obj.magic _menhir_stack in
        let (_v : (
# 64 "parser/parser.mly"
       (string)
# 14994 "parser/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv575) = Obj.magic _menhir_stack in
        let ((id : (
# 64 "parser/parser.mly"
       (string)
# 15002 "parser/parser.ml"
        )) : (
# 64 "parser/parser.mly"
       (string)
# 15006 "parser/parser.ml"
        )) = _v in
        ((let _v : 'tv_bin_loc_with_id = 
# 621 "parser/parser.mly"
             ( Binary_loc.name id )
# 15011 "parser/parser.ml"
         in
        _menhir_goto_bin_loc_with_id _menhir_env _menhir_stack _v) : 'freshtv576)) : 'freshtv578)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv580)

and _menhir_run469 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "parser/parser.mly"
       (string)
# 15025 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv573) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 65 "parser/parser.mly"
       (string)
# 15035 "parser/parser.ml"
    )) : (
# 65 "parser/parser.mly"
       (string)
# 15039 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_integer = 
# 569 "parser/parser.mly"
             ( int_of_string n )
# 15044 "parser/parser.ml"
     in
    _menhir_goto_integer _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)

and _menhir_run470 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 66 "parser/parser.mly"
       (string)
# 15051 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv571) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 66 "parser/parser.mly"
       (string)
# 15061 "parser/parser.ml"
    )) : (
# 66 "parser/parser.mly"
       (string)
# 15065 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_integer = 
# 569 "parser/parser.mly"
             ( int_of_string n )
# 15070 "parser/parser.ml"
     in
    _menhir_goto_integer _menhir_env _menhir_stack _menhir_s _v) : 'freshtv572)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | CONSTANT ->
        _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | STACK ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "parser/parser.mly"
       (string)
# 15180 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INFER ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "parser/parser.mly"
       (string)
# 15230 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INFER ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | AND | ANNOT | COMMA | CONCAT | DOTDOT | ELSE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RBRACE | RBRACKETS | RBRACKETU | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN | XOR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv569 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15244 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (id : (
# 64 "parser/parser.mly"
       (string)
# 15249 "parser/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_expr = let sz_opt =
          
# 110 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 15255 "parser/parser.ml"
          
        in
        
# 481 "parser/parser.mly"
  ( let sz = Utils.get_opt_or_default 1 sz_opt in
    Dba.Expr.var id sz None )
# 15262 "parser/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv570)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "parser/parser.mly"
       (string)
# 15273 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((value : (
# 65 "parser/parser.mly"
       (string)
# 15283 "parser/parser.ml"
    )) : (
# 65 "parser/parser.mly"
       (string)
# 15287 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_constant = 
# 463 "parser/parser.mly"
  ( Bitvector.of_string value )
# 15292 "parser/parser.ml"
     in
    _menhir_goto_constant _menhir_env _menhir_stack _menhir_s _v) : 'freshtv568)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 66 "parser/parser.mly"
       (string)
# 15365 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((value : (
# 66 "parser/parser.mly"
       (string)
# 15375 "parser/parser.ml"
    )) : (
# 66 "parser/parser.mly"
       (string)
# 15379 "parser/parser.ml"
    )) = _v in
    ((let _v : 'tv_constant = 
# 463 "parser/parser.mly"
  ( Bitvector.of_string value )
# 15384 "parser/parser.ml"
     in
    _menhir_goto_constant _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv561 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv562)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv563 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv564)

and _menhir_reduce39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_boption_UNCONTROLLED_ = 
# 119 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( false )
# 15439 "parser/parser.ml"
     in
    _menhir_goto_boption_UNCONTROLLED_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce205 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_terminated_initialization_directive_SEMICOLON__ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 15448 "parser/parser.ml"
     in
    _menhir_goto_list_terminated_initialization_directive_SEMICOLON__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run514 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv559) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_boption_UNCONTROLLED_ = 
# 121 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( true )
# 15462 "parser/parser.ml"
     in
    _menhir_goto_boption_UNCONTROLLED_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv560)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SKO ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv549) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv547) = Obj.magic _menhir_stack in
        ((let _10 = () in
        let _v : 'tv_option_stop_annot_ = let x =
          let _1 = _10 in
          
# 311 "parser/parser.mly"
      ( Dba.KO )
# 15484 "parser/parser.ml"
          
        in
        
# 102 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 15490 "parser/parser.ml"
         in
        _menhir_goto_option_stop_annot_ _menhir_env _menhir_stack _v) : 'freshtv548)) : 'freshtv550)
    | SOK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv551) = Obj.magic _menhir_stack in
        ((let _10 = () in
        let _v : 'tv_option_stop_annot_ = let x =
          let _1 = _10 in
          
# 312 "parser/parser.mly"
      ( Dba.OK )
# 15505 "parser/parser.ml"
          
        in
        
# 102 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 15511 "parser/parser.ml"
         in
        _menhir_goto_option_stop_annot_ _menhir_env _menhir_stack _v) : 'freshtv552)) : 'freshtv554)
    | EOF | HEXA _ | INT _ | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_stop_annot_ = 
# 100 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 15520 "parser/parser.ml"
         in
        _menhir_goto_option_stop_annot_ _menhir_env _menhir_stack _v) : 'freshtv556)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv557 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | STRING _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run133 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv543 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv539) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | IDENT _v ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | RBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv537) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState135 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue__ = 
# 128 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 15595 "parser/parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv538)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv540)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv541 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv542)) : 'freshtv544)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv545 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv546)

and _menhir_run175 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | FALSE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv529 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState175 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GOTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv525 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
            | LPAR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState185
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185) : 'freshtv526)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv527 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | TRUE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv535 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState175 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GOTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv531 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | INT _v ->
                _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
            | LPAR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState177
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177) : 'freshtv532)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv533 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175

and _menhir_run136 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "parser/parser.mly"
       (string)
# 15711 "parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INFER ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | LBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv521 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15725 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState136 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv517 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15737 "parser/parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            let (_v : (
# 63 "parser/parser.mly"
       (string)
# 15742 "parser/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv509 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15753 "parser/parser.ml"
                )) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 15757 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | INT _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv505 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15767 "parser/parser.ml"
                    )) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 15771 "parser/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    let (_v : (
# 63 "parser/parser.mly"
       (string)
# 15776 "parser/parser.ml"
                    )) = _v in
                    ((let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | RBRACE ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv501 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15787 "parser/parser.ml"
                        )) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 15791 "parser/parser.ml"
                        ))) * (
# 63 "parser/parser.mly"
       (string)
# 15795 "parser/parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv499 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15802 "parser/parser.ml"
                        )) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 15806 "parser/parser.ml"
                        ))) * (
# 63 "parser/parser.mly"
       (string)
# 15810 "parser/parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let ((((_menhir_stack, _menhir_s, (id : (
# 64 "parser/parser.mly"
       (string)
# 15815 "parser/parser.ml"
                        ))), _), (loff0 : (
# 63 "parser/parser.mly"
       (string)
# 15819 "parser/parser.ml"
                        ))), (roff0 : (
# 63 "parser/parser.mly"
       (string)
# 15823 "parser/parser.ml"
                        ))) = _menhir_stack in
                        let _50 = () in
                        let _30 = () in
                        let _10 = () in
                        let _v : 'tv_lvalue = let offs =
                          let _5 = _50 in
                          let roff = roff0 in
                          let _3 = _30 in
                          let loff = loff0 in
                          let _1 = _10 in
                          
# 468 "parser/parser.mly"
  ( int_of_string loff, int_of_string roff )
# 15837 "parser/parser.ml"
                          
                        in
                        
# 454 "parser/parser.mly"
  ( let lo, hi = offs in Dba.LValue.restrict id unknown_bitsize lo hi )
# 15843 "parser/parser.ml"
                         in
                        _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv503 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15853 "parser/parser.ml"
                        )) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 15857 "parser/parser.ml"
                        ))) * (
# 63 "parser/parser.mly"
       (string)
# 15861 "parser/parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)) : 'freshtv506)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv507 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15872 "parser/parser.ml"
                    )) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 15876 "parser/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv508)) : 'freshtv510)
            | RBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv513 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15885 "parser/parser.ml"
                )) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 15889 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv511 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15896 "parser/parser.ml"
                )) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 15900 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s, (id : (
# 64 "parser/parser.mly"
       (string)
# 15905 "parser/parser.ml"
                ))), _), (boff0 : (
# 63 "parser/parser.mly"
       (string)
# 15909 "parser/parser.ml"
                ))) = _menhir_stack in
                let _30 = () in
                let _10 = () in
                let _v : 'tv_lvalue = let offs =
                  let _3 = _30 in
                  let boff = boff0 in
                  let _1 = _10 in
                  
# 470 "parser/parser.mly"
  ( let n = int_of_string boff in n, n)
# 15920 "parser/parser.ml"
                  
                in
                
# 454 "parser/parser.mly"
  ( let lo, hi = offs in Dba.LValue.restrict id unknown_bitsize lo hi )
# 15926 "parser/parser.ml"
                 in
                _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v) : 'freshtv512)) : 'freshtv514)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv515 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15936 "parser/parser.ml"
                )) * _menhir_state) * (
# 63 "parser/parser.mly"
       (string)
# 15940 "parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv516)) : 'freshtv518)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 15951 "parser/parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
    | ASSIGN | COMMA | RBRACE | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv523) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState136 in
        ((let _v : 'tv_option_size_annot_ = 
# 100 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 15962 "parser/parser.ml"
         in
        _menhir_goto_option_size_annot_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136

and _menhir_run196 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState196 in
        let (_v : (
# 63 "parser/parser.mly"
       (string)
# 15997 "parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INFER ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ANNOT | EOF | HEXA _ | INT _ | LPAR ->
            _menhir_reduce266 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState199) : 'freshtv496)
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv497) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState196 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | CONSTANT ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | STACK ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197) : 'freshtv498)
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196

and _menhir_run211 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv491 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState212) : 'freshtv492)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv493 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv494)

and _menhir_run145 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146) : 'freshtv488)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv489 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)

and _menhir_run215 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | FALSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv473 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState216 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv469 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv467 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                let _30 = () in
                let _100 = () in
                let _11 = () in
                let _1 = () in
                let _v : 'tv_annotable_instruction = let condition =
                  let _3 = _30 in
                  let _10 = _100 in
                  let _1 = _11 in
                  let x =
                    let _1 = _10 in
                    
# 543 "parser/parser.mly"
            ( Dba.Expr.zero )
# 16198 "parser/parser.ml"
                    
                  in
                  
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 16204 "parser/parser.ml"
                  
                in
                
# 380 "parser/parser.mly"
  ( Dba.Instr.assume condition unknown_successor )
# 16210 "parser/parser.ml"
                 in
                _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)) : 'freshtv470)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv471 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | TRUE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv481 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState216 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv477 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv475 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                let _30 = () in
                let _100 = () in
                let _11 = () in
                let _1 = () in
                let _v : 'tv_annotable_instruction = let condition =
                  let _3 = _30 in
                  let _10 = _100 in
                  let _1 = _11 in
                  let x =
                    let _1 = _10 in
                    
# 542 "parser/parser.mly"
            ( Dba.Expr.one )
# 16262 "parser/parser.ml"
                    
                  in
                  
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 16268 "parser/parser.ml"
                  
                in
                
# 380 "parser/parser.mly"
  ( Dba.Instr.assume condition unknown_successor )
# 16274 "parser/parser.ml"
                 in
                _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)) : 'freshtv478)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv479 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)) : 'freshtv482)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState216) : 'freshtv484)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)

and _menhir_run223 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | BIN _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
        | EXTS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | EXTU ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | FALSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv453 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState224 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv449 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv447 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                let _30 = () in
                let _100 = () in
                let _11 = () in
                let _1 = () in
                let _v : 'tv_annotable_instruction = let condition =
                  let _3 = _30 in
                  let _10 = _100 in
                  let _1 = _11 in
                  let x =
                    let _1 = _10 in
                    
# 543 "parser/parser.mly"
            ( Dba.Expr.zero )
# 16344 "parser/parser.ml"
                    
                  in
                  
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 16350 "parser/parser.ml"
                  
                in
                
# 378 "parser/parser.mly"
  ( Dba.Instr._assert condition unknown_successor )
# 16356 "parser/parser.ml"
                 in
                _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)) : 'freshtv450)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv451 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)
        | HEXA _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
        | IDENT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
        | IF ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | INT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
        | LPAR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | NOT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | TRUE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv461 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState224 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv457 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv455 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                let _30 = () in
                let _100 = () in
                let _11 = () in
                let _1 = () in
                let _v : 'tv_annotable_instruction = let condition =
                  let _3 = _30 in
                  let _10 = _100 in
                  let _1 = _11 in
                  let x =
                    let _1 = _10 in
                    
# 542 "parser/parser.mly"
            ( Dba.Expr.one )
# 16408 "parser/parser.ml"
                    
                  in
                  
# 174 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( x )
# 16414 "parser/parser.ml"
                  
                in
                
# 378 "parser/parser.mly"
  ( Dba.Instr._assert condition unknown_successor )
# 16420 "parser/parser.ml"
                 in
                _menhir_goto_annotable_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)) : 'freshtv458)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv459 * _menhir_state)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)) : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState224) : 'freshtv464)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState564 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * 'tv_patch) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState559 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_integer) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState556 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv36)
    | MenhirState553 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState552 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv40)
    | MenhirState548 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv42)
    | MenhirState535 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState534 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState531 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState528 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv49 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_either_DOTDOT_COMMA_) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState527 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_either_DOTDOT_COMMA_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState524 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState523 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState522 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState520 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * 'tv_boption_UNCONTROLLED_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState518 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_initialization_directive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState513 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv64)
    | MenhirState511 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState509 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv68)
    | MenhirState505 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv70)
    | MenhirState504 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState503 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv74)
    | MenhirState501 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv76)
    | MenhirState498 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv78)
    | MenhirState495 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState494 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState493 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv84)
    | MenhirState491 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv86)
    | MenhirState489 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv88)
    | MenhirState486 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv90)
    | MenhirState481 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv92)
    | MenhirState477 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_located_directive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState472 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * 'tv_bin_loc_with_id)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv96)
    | MenhirState468 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * 'tv_bin_loc_with_id)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv98)
    | MenhirState462 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv100)
    | MenhirState460 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_dhunk_substitution) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState455 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * (
# 65 "parser/parser.mly"
       (string)
# 16613 "parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState453 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv106)
    | MenhirState448 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * 'tv_labelled_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState445 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 16631 "parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState443 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv112)
    | MenhirState441 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 16644 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState438 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState437 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState436 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState435 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv122)
    | MenhirState430 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 16672 "parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState427 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState426 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_kv) * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState425 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * 'tv_kv) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState418 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state) * (
# 64 "parser/parser.mly"
       (string)
# 16696 "parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState415 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv134)
    | MenhirState413 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state * 'tv_declaration)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState410 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state * 'tv_assignment)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState407 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv139 * 'tv_config) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) * 'tv_option_permission_block_) * _menhir_state * 'tv_list_terminated_assignment_SEMICOLON__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState406 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * 'tv_config) * _menhir_state * 'tv_list_terminated_declaration_SEMICOLON__) * 'tv_option_permission_block_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState400 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_permission) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState398 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState395 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState379 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_predicate) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState369 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState367 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState365 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv155 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState363 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState361 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState352 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState350 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState348 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState346 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState344 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState342 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState340 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState338 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState336 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState334 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState332 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState330 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState328 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState326 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState324 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState322 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState320 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState318 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState316 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState314 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState312 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState309 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState307 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_constant_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState304 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState303 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState301 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState296 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv220)
    | MenhirState274 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * 'tv_config) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv222)
    | MenhirState261 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv224)
    | MenhirState248 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv227 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState244 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState232 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState221 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_static_target) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 16996 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv259 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * _menhir_state) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv267 * _menhir_state)) * 'tv_set_of_lvalue_)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv269 * _menhir_state)) * 'tv_set_of_lvalue_)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state * 'tv_lvalue)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv275 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 17065 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv280)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv283 * _menhir_state * 'tv_printarg)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv285 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv287 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv291 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv293 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv295 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv299 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv301 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv303 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv307 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv311 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv313 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv327 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv331 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv343 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv351 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv359 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv365 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv367 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv369 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv375 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv379 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv383 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv389 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv391 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv393 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv395 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv397 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv398)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv399 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv401 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv404)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv405 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv407 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv409 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv411 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv413 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv415 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * (
# 64 "parser/parser.mly"
       (string)
# 17433 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv427 * _menhir_state) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv430)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_address) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv438)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439 * _menhir_state * 'tv_localized_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441 * _menhir_state * (
# 63 "parser/parser.mly"
       (string)
# 17482 "parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv443 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv446)

and _menhir_reduce197 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_patch_ = 
# 185 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 17501 "parser/parser.ml"
     in
    _menhir_goto_list_patch_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run553 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run470 _menhir_env (Obj.magic _menhir_stack) MenhirState553 _v
    | HEXA _v ->
        _menhir_run469 _menhir_env (Obj.magic _menhir_stack) MenhirState553 _v
    | INT _v ->
        _menhir_run463 _menhir_env (Obj.magic _menhir_stack) MenhirState553 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState553

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

and body : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 99 "parser/parser.mly"
      ((Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 17547 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce195 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv30))

and dba : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 87 "parser/parser.mly"
      ('a Dba_types.program)
# 17568 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ENTRYPOINT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState261
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState261) : 'freshtv20)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv22)) : 'freshtv24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv26)) : 'freshtv28))

and decoder_base : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 105 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list)
# 17611 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState415
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState415) : 'freshtv18))

and decoder_msg : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 102 "parser/parser.mly"
      ((string * Parse_helpers.Message.Value.t)  list * (Dba_types.Caddress.Map.key * Dba.Instr.t) list)
# 17630 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState435
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState435) : 'freshtv16))

and dhunk_eof : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 90 "parser/parser.mly"
      (Dhunk.t)
# 17649 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run444 _menhir_env (Obj.magic _menhir_stack) MenhirState443 _v
    | EOF ->
        _menhir_reduce193 _menhir_env (Obj.magic _menhir_stack) MenhirState443
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState443) : 'freshtv14))

and dhunk_substitutions_eof : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 96 "parser/parser.mly"
      ((Virtual_address.t * Dhunk.t) list)
# 17670 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | HEXA _v ->
        _menhir_run454 _menhir_env (Obj.magic _menhir_stack) MenhirState453 _v
    | EOF ->
        _menhir_reduce191 _menhir_env (Obj.magic _menhir_stack) MenhirState453
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState453) : 'freshtv12))

and directives : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 114 "parser/parser.mly"
      (Directive.t list)
# 17691 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BIN _v ->
        _menhir_run470 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _v
    | HEXA _v ->
        _menhir_run469 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _v
    | INFER ->
        _menhir_run464 _menhir_env (Obj.magic _menhir_stack) MenhirState462
    | INT _v ->
        _menhir_run463 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState462) : 'freshtv10))

and expr_eof : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 84 "parser/parser.mly"
      (Dba.Expr.t)
# 17716 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState509
    | BIN _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState509 _v
    | EXTS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState509
    | EXTU ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState509
    | HEXA _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState509 _v
    | IDENT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState509 _v
    | IF ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState509
    | INT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState509 _v
    | LPAR ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState509
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState509
    | NOT ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState509
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState509) : 'freshtv8))

and initialization : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 111 "parser/parser.mly"
      (Parse_helpers.Initialization.t list)
# 17755 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | UNCONTROLLED ->
        _menhir_run514 _menhir_env (Obj.magic _menhir_stack) MenhirState513
    | EOF ->
        _menhir_reduce205 _menhir_env (Obj.magic _menhir_stack) MenhirState513
    | AT | IDENT _ ->
        _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState513
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState513) : 'freshtv6))

and instruction_eof : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 93 "parser/parser.mly"
      (Dba.Instr.t)
# 17778 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run223 _menhir_env (Obj.magic _menhir_stack) MenhirState548
    | ASSUME ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState548
    | AT ->
        _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState548
    | FREE ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState548
    | GOTO ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState548
    | IDENT _v ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState548 _v
    | IF ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState548
    | NONDETASSUME ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState548
    | PRINT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState548
    | STOP ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState548
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState548) : 'freshtv4))

and patchmap : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 108 "parser/parser.mly"
      (Binstream.t Virtual_address.Map.t)
# 17815 "parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        _menhir_run553 _menhir_env (Obj.magic _menhir_stack) MenhirState552
    | EOF ->
        _menhir_reduce197 _menhir_env (Obj.magic _menhir_stack) MenhirState552
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState552) : 'freshtv2))

# 219 "/home/khoile/.opam/4.05.0/lib/menhir/standard.mly"
  


# 17837 "parser/parser.ml"
