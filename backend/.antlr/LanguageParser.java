// Generated from /home/luispc/Documentos/OLC2/LABORATORIO/GIT/OLC2_Proyecto2_201700700/backend/Language.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class LanguageParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, T__48=49, T__49=50, T__50=51, T__51=52, 
		T__52=53, T__53=54, T__54=55, T__55=56, T__56=57, T__57=58, T__58=59, 
		INT=60, WS=61, BOOL=62, ID=63, DOUBLE=64, STRING=65, RUNE=66, COMMENT=67, 
		MULTILINE_COMMENT=68;
	public static final int
		RULE_program = 0, RULE_dcl = 1, RULE_varDcl = 2, RULE_sliceDcl = 3, RULE_matrixDcl = 4, 
		RULE_structDcl = 5, RULE_instStruct = 6, RULE_functionDcl = 7, RULE_functionStructDcl = 8, 
		RULE_stmt = 9, RULE_params = 10, RULE_args = 11, RULE_matrixargs = 12, 
		RULE_atributos = 13, RULE_argsA = 14, RULE_caseBlock = 15, RULE_defaultBlock = 16, 
		RULE_expr = 17, RULE_embebidaex = 18, RULE_call = 19, RULE_tipo = 20;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "dcl", "varDcl", "sliceDcl", "matrixDcl", "structDcl", "instStruct", 
			"functionDcl", "functionStructDcl", "stmt", "params", "args", "matrixargs", 
			"atributos", "argsA", "caseBlock", "defaultBlock", "expr", "embebidaex", 
			"call", "tipo"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "'var'", "'='", "':='", "'['", "']'", "'{'", "'}'", "'type'", 
			"'struct'", "'func'", "'('", "')'", "'fmt.Println('", "'if'", "'else'", 
			"'switch'", "'for'", "','", "'range'", "'break'", "'continue'", "'return'", 
			"':'", "'case'", "'default'", "'-'", "'nil'", "'.'", "'++'", "'--'", 
			"'*'", "'/'", "'%'", "'+'", "'<'", "'<='", "'>'", "'>='", "'=='", "'!='", 
			"'&&'", "'||'", "'!'", "'slices'", "'Index'", "'strings'", "'Join'", 
			"'len'", "'append'", "'fmt.Println'", "'strconv.Atoi'", "'strconv.ParseFloat'", 
			"'reflect.TypeOf'", "'int'", "'float64'", "'string'", "'bool'", "'rune'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			"INT", "WS", "BOOL", "ID", "DOUBLE", "STRING", "RUNE", "COMMENT", "MULTILINE_COMMENT"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Language.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public LanguageParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(45);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -3423105152290727292L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
				{
				{
				setState(42);
				dcl();
				}
				}
				setState(47);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DclContext extends ParserRuleContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public SliceDclContext sliceDcl() {
			return getRuleContext(SliceDclContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public MatrixDclContext matrixDcl() {
			return getRuleContext(MatrixDclContext.class,0);
		}
		public StructDclContext structDcl() {
			return getRuleContext(StructDclContext.class,0);
		}
		public InstStructContext instStruct() {
			return getRuleContext(InstStructContext.class,0);
		}
		public FunctionDclContext functionDcl() {
			return getRuleContext(FunctionDclContext.class,0);
		}
		public FunctionStructDclContext functionStructDcl() {
			return getRuleContext(FunctionStructDclContext.class,0);
		}
		public DclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dcl; }
	}

	public final DclContext dcl() throws RecognitionException {
		DclContext _localctx = new DclContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_dcl);
		int _la;
		try {
			setState(71);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,6,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(48);
				varDcl();
				setState(50);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(49);
					match(T__0);
					}
				}

				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(52);
				sliceDcl();
				setState(54);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(53);
					match(T__0);
					}
				}

				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(56);
				stmt();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(57);
				matrixDcl();
				setState(59);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(58);
					match(T__0);
					}
				}

				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(61);
				structDcl();
				setState(63);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(62);
					match(T__0);
					}
				}

				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(65);
				instStruct();
				setState(67);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(66);
					match(T__0);
					}
				}

				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(69);
				functionDcl();
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(70);
				functionStructDcl();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VarDclContext extends ParserRuleContext {
		public VarDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDcl; }
	 
		public VarDclContext() { }
		public void copyFrom(VarDclContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ImplicitVarDclContext extends VarDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ImplicitVarDclContext(VarDclContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExplicitVarDclContext extends VarDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TipoContext tipo() {
			return getRuleContext(TipoContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExplicitVarDclContext(VarDclContext ctx) { copyFrom(ctx); }
	}

	public final VarDclContext varDcl() throws RecognitionException {
		VarDclContext _localctx = new VarDclContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_varDcl);
		int _la;
		try {
			setState(85);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__1:
				_localctx = new ExplicitVarDclContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(73);
				match(T__1);
				setState(74);
				match(ID);
				setState(76);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,7,_ctx) ) {
				case 1:
					{
					setState(75);
					tipo();
					}
					break;
				}
				setState(80);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__2) {
					{
					setState(78);
					match(T__2);
					setState(79);
					expr(0);
					}
				}

				}
				break;
			case ID:
				_localctx = new ImplicitVarDclContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(82);
				match(ID);
				setState(83);
				match(T__3);
				setState(84);
				expr(0);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SliceDclContext extends ParserRuleContext {
		public SliceDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sliceDcl; }
	 
		public SliceDclContext() { }
		public void copyFrom(SliceDclContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class InitSliceContext extends SliceDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TipoContext tipo() {
			return getRuleContext(TipoContext.class,0);
		}
		public ArgsContext args() {
			return getRuleContext(ArgsContext.class,0);
		}
		public InitSliceContext(SliceDclContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DeclareSliceContext extends SliceDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TipoContext tipo() {
			return getRuleContext(TipoContext.class,0);
		}
		public DeclareSliceContext(SliceDclContext ctx) { copyFrom(ctx); }
	}

	public final SliceDclContext sliceDcl() throws RecognitionException {
		SliceDclContext _localctx = new SliceDclContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_sliceDcl);
		try {
			setState(101);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ID:
				_localctx = new InitSliceContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(87);
				match(ID);
				setState(88);
				match(T__3);
				setState(89);
				match(T__4);
				setState(90);
				match(T__5);
				setState(91);
				tipo();
				setState(92);
				match(T__6);
				setState(93);
				args();
				setState(94);
				match(T__7);
				}
				break;
			case T__1:
				_localctx = new DeclareSliceContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(96);
				match(T__1);
				setState(97);
				match(ID);
				setState(98);
				match(T__4);
				setState(99);
				match(T__5);
				setState(100);
				tipo();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MatrixDclContext extends ParserRuleContext {
		public MatrixDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_matrixDcl; }
	 
		public MatrixDclContext() { }
		public void copyFrom(MatrixDclContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class InitMatrixContext extends MatrixDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TipoContext tipo() {
			return getRuleContext(TipoContext.class,0);
		}
		public MatrixargsContext matrixargs() {
			return getRuleContext(MatrixargsContext.class,0);
		}
		public InitMatrixContext(MatrixDclContext ctx) { copyFrom(ctx); }
	}

	public final MatrixDclContext matrixDcl() throws RecognitionException {
		MatrixDclContext _localctx = new MatrixDclContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_matrixDcl);
		try {
			_localctx = new InitMatrixContext(_localctx);
			enterOuterAlt(_localctx, 1);
			{
			setState(103);
			match(ID);
			setState(104);
			match(T__3);
			setState(105);
			match(T__4);
			setState(106);
			match(T__5);
			setState(107);
			match(T__4);
			setState(108);
			match(T__5);
			setState(109);
			tipo();
			setState(110);
			match(T__6);
			setState(111);
			matrixargs();
			setState(112);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructDclContext extends ParserRuleContext {
		public StructDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structDcl; }
	 
		public StructDclContext() { }
		public void copyFrom(StructDclContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructDclInitContext extends StructDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public AtributosContext atributos() {
			return getRuleContext(AtributosContext.class,0);
		}
		public StructDclInitContext(StructDclContext ctx) { copyFrom(ctx); }
	}

	public final StructDclContext structDcl() throws RecognitionException {
		StructDclContext _localctx = new StructDclContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_structDcl);
		try {
			_localctx = new StructDclInitContext(_localctx);
			enterOuterAlt(_localctx, 1);
			{
			setState(114);
			match(T__8);
			setState(115);
			match(ID);
			setState(116);
			match(T__9);
			setState(117);
			match(T__6);
			setState(118);
			atributos();
			setState(119);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class InstStructContext extends ParserRuleContext {
		public InstStructContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_instStruct; }
	 
		public InstStructContext() { }
		public void copyFrom(InstStructContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class InstanceStructContext extends InstStructContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public ArgsAContext argsA() {
			return getRuleContext(ArgsAContext.class,0);
		}
		public InstanceStructContext(InstStructContext ctx) { copyFrom(ctx); }
	}

	public final InstStructContext instStruct() throws RecognitionException {
		InstStructContext _localctx = new InstStructContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_instStruct);
		try {
			_localctx = new InstanceStructContext(_localctx);
			enterOuterAlt(_localctx, 1);
			{
			setState(121);
			match(ID);
			setState(122);
			match(ID);
			setState(123);
			match(T__2);
			setState(124);
			match(T__6);
			setState(125);
			argsA();
			setState(126);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FunctionDclContext extends ParserRuleContext {
		public FunctionDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDcl; }
	 
		public FunctionDclContext() { }
		public void copyFrom(FunctionDclContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FunctionDclInitContext extends FunctionDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ParamsContext params() {
			return getRuleContext(ParamsContext.class,0);
		}
		public TipoContext tipo() {
			return getRuleContext(TipoContext.class,0);
		}
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public FunctionDclInitContext(FunctionDclContext ctx) { copyFrom(ctx); }
	}

	public final FunctionDclContext functionDcl() throws RecognitionException {
		FunctionDclContext _localctx = new FunctionDclContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_functionDcl);
		int _la;
		try {
			_localctx = new FunctionDclInitContext(_localctx);
			enterOuterAlt(_localctx, 1);
			{
			setState(128);
			match(T__10);
			setState(129);
			match(ID);
			setState(130);
			match(T__11);
			setState(132);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(131);
				params();
				}
			}

			setState(134);
			match(T__12);
			setState(136);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & -8106479328998457344L) != 0)) {
				{
				setState(135);
				tipo();
				}
			}

			setState(138);
			match(T__6);
			setState(142);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -3423105152290727292L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
				{
				{
				setState(139);
				dcl();
				}
				}
				setState(144);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(145);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FunctionStructDclContext extends ParserRuleContext {
		public FunctionStructDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionStructDcl; }
	 
		public FunctionStructDclContext() { }
		public void copyFrom(FunctionStructDclContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FunctionStructDclInitContext extends FunctionStructDclContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public ParamsContext params() {
			return getRuleContext(ParamsContext.class,0);
		}
		public TipoContext tipo() {
			return getRuleContext(TipoContext.class,0);
		}
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public FunctionStructDclInitContext(FunctionStructDclContext ctx) { copyFrom(ctx); }
	}

	public final FunctionStructDclContext functionStructDcl() throws RecognitionException {
		FunctionStructDclContext _localctx = new FunctionStructDclContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_functionStructDcl);
		int _la;
		try {
			_localctx = new FunctionStructDclInitContext(_localctx);
			enterOuterAlt(_localctx, 1);
			{
			setState(147);
			match(T__10);
			setState(148);
			match(T__11);
			setState(149);
			match(ID);
			setState(150);
			match(ID);
			setState(151);
			match(T__12);
			setState(152);
			match(ID);
			setState(153);
			match(T__11);
			setState(155);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(154);
				params();
				}
			}

			setState(157);
			match(T__12);
			setState(159);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & -8106479328998457344L) != 0)) {
				{
				setState(158);
				tipo();
				}
			}

			setState(161);
			match(T__6);
			setState(165);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -3423105152290727292L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
				{
				{
				setState(162);
				dcl();
				}
				}
				setState(167);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(168);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StmtContext extends ParserRuleContext {
		public StmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stmt; }
	 
		public StmtContext() { }
		public void copyFrom(StmtContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ContinueStmtContext extends StmtContext {
		public ContinueStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SwitchStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<CaseBlockContext> caseBlock() {
			return getRuleContexts(CaseBlockContext.class);
		}
		public CaseBlockContext caseBlock(int i) {
			return getRuleContext(CaseBlockContext.class,i);
		}
		public DefaultBlockContext defaultBlock() {
			return getRuleContext(DefaultBlockContext.class,0);
		}
		public SwitchStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PrintStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public PrintStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IfStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public IfStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForStmtComplexContext extends StmtContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForStmtComplexContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BreakStmtContext extends StmtContext {
		public BreakStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BlockStmtContext extends StmtContext {
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public BlockStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForStmtSimpleContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForStmtSimpleContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForStmtRangeContext extends StmtContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForStmtRangeContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ReturnStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ReturnStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}

	public final StmtContext stmt() throws RecognitionException {
		StmtContext _localctx = new StmtContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_stmt);
		int _la;
		try {
			setState(241);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,26,_ctx) ) {
			case 1:
				_localctx = new ExprStmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(170);
				expr(0);
				setState(172);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(171);
					match(T__0);
					}
				}

				}
				break;
			case 2:
				_localctx = new PrintStmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(174);
				match(T__13);
				setState(175);
				expr(0);
				setState(176);
				match(T__12);
				}
				break;
			case 3:
				_localctx = new BlockStmtContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(178);
				match(T__6);
				setState(182);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -3423105152290727292L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
					{
					{
					setState(179);
					dcl();
					}
					}
					setState(184);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(185);
				match(T__7);
				}
				break;
			case 4:
				_localctx = new IfStmtContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(186);
				match(T__14);
				setState(187);
				expr(0);
				setState(188);
				stmt();
				setState(191);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
				case 1:
					{
					setState(189);
					match(T__15);
					setState(190);
					stmt();
					}
					break;
				}
				}
				break;
			case 5:
				_localctx = new SwitchStmtContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(193);
				match(T__16);
				setState(194);
				expr(0);
				setState(195);
				match(T__6);
				setState(197); 
				_errHandler.sync(this);
				_la = _input.LA(1);
				do {
					{
					{
					setState(196);
					caseBlock();
					}
					}
					setState(199); 
					_errHandler.sync(this);
					_la = _input.LA(1);
				} while ( _la==T__24 );
				setState(202);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__25) {
					{
					setState(201);
					defaultBlock();
					}
				}

				setState(204);
				match(T__7);
				}
				break;
			case 6:
				_localctx = new ForStmtSimpleContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(206);
				match(T__17);
				setState(207);
				expr(0);
				setState(208);
				stmt();
				}
				break;
			case 7:
				_localctx = new ForStmtComplexContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(210);
				match(T__17);
				setState(211);
				varDcl();
				setState(212);
				match(T__0);
				setState(213);
				expr(0);
				setState(214);
				match(T__0);
				setState(215);
				expr(0);
				setState(216);
				stmt();
				}
				break;
			case 8:
				_localctx = new ForStmtRangeContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(218);
				match(T__17);
				setState(219);
				match(ID);
				setState(220);
				match(T__18);
				setState(221);
				match(ID);
				setState(222);
				match(T__3);
				setState(223);
				match(T__19);
				setState(224);
				match(ID);
				setState(225);
				stmt();
				}
				break;
			case 9:
				_localctx = new BreakStmtContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(226);
				match(T__20);
				setState(228);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(227);
					match(T__0);
					}
				}

				}
				break;
			case 10:
				_localctx = new ContinueStmtContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(230);
				match(T__21);
				setState(232);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(231);
					match(T__0);
					}
				}

				}
				break;
			case 11:
				_localctx = new ReturnStmtContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(234);
				match(T__22);
				setState(236);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
				case 1:
					{
					setState(235);
					expr(0);
					}
					break;
				}
				setState(239);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(238);
					match(T__0);
					}
				}

				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParamsContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public List<TipoContext> tipo() {
			return getRuleContexts(TipoContext.class);
		}
		public TipoContext tipo(int i) {
			return getRuleContext(TipoContext.class,i);
		}
		public ParamsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_params; }
	}

	public final ParamsContext params() throws RecognitionException {
		ParamsContext _localctx = new ParamsContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_params);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(243);
			match(ID);
			setState(244);
			tipo();
			setState(250);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__18) {
				{
				{
				setState(245);
				match(T__18);
				setState(246);
				match(ID);
				setState(247);
				tipo();
				}
				}
				setState(252);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ArgsContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ArgsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_args; }
	}

	public final ArgsContext args() throws RecognitionException {
		ArgsContext _localctx = new ArgsContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_args);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(253);
			expr(0);
			setState(258);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__18) {
				{
				{
				setState(254);
				match(T__18);
				setState(255);
				expr(0);
				}
				}
				setState(260);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MatrixargsContext extends ParserRuleContext {
		public List<ArgsContext> args() {
			return getRuleContexts(ArgsContext.class);
		}
		public ArgsContext args(int i) {
			return getRuleContext(ArgsContext.class,i);
		}
		public MatrixargsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_matrixargs; }
	}

	public final MatrixargsContext matrixargs() throws RecognitionException {
		MatrixargsContext _localctx = new MatrixargsContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_matrixargs);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(261);
			match(T__6);
			setState(262);
			args();
			setState(263);
			match(T__7);
			setState(271);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__18) {
				{
				{
				setState(264);
				match(T__18);
				setState(265);
				match(T__6);
				setState(266);
				args();
				setState(267);
				match(T__7);
				}
				}
				setState(273);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class AtributosContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public List<TipoContext> tipo() {
			return getRuleContexts(TipoContext.class);
		}
		public TipoContext tipo(int i) {
			return getRuleContext(TipoContext.class,i);
		}
		public AtributosContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_atributos; }
	}

	public final AtributosContext atributos() throws RecognitionException {
		AtributosContext _localctx = new AtributosContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_atributos);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(274);
			match(ID);
			setState(275);
			tipo();
			setState(277);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__0) {
				{
				setState(276);
				match(T__0);
				}
			}

			setState(286);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==ID) {
				{
				{
				setState(279);
				match(ID);
				setState(280);
				tipo();
				setState(282);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(281);
					match(T__0);
					}
				}

				}
				}
				setState(288);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ArgsAContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ArgsAContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_argsA; }
	}

	public final ArgsAContext argsA() throws RecognitionException {
		ArgsAContext _localctx = new ArgsAContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_argsA);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(289);
			match(ID);
			setState(290);
			match(T__23);
			setState(291);
			expr(0);
			setState(298);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__18) {
				{
				{
				setState(292);
				match(T__18);
				setState(293);
				match(ID);
				setState(294);
				match(T__23);
				setState(295);
				expr(0);
				}
				}
				setState(300);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CaseBlockContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public CaseBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_caseBlock; }
	}

	public final CaseBlockContext caseBlock() throws RecognitionException {
		CaseBlockContext _localctx = new CaseBlockContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_caseBlock);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(301);
			match(T__24);
			setState(302);
			expr(0);
			setState(303);
			match(T__23);
			setState(307);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (((((_la - 7)) & ~0x3f) == 0 && ((1L << (_la - 7)) & 1126178495604575649L) != 0)) {
				{
				{
				setState(304);
				stmt();
				}
				}
				setState(309);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DefaultBlockContext extends ParserRuleContext {
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public DefaultBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_defaultBlock; }
	}

	public final DefaultBlockContext defaultBlock() throws RecognitionException {
		DefaultBlockContext _localctx = new DefaultBlockContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_defaultBlock);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(310);
			match(T__25);
			setState(311);
			match(T__23);
			setState(315);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (((((_la - 7)) & ~0x3f) == 0 && ((1L << (_la - 7)) & 1126178495604575649L) != 0)) {
				{
				{
				setState(312);
				stmt();
				}
				}
				setState(317);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprContext extends ParserRuleContext {
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructItemAssignContext extends ExprContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StructItemAssignContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ItemMatrixAssignContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ItemMatrixAssignContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceJoinContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SliceJoinContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ItemAssignContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ItemAssignContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParensContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParensContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LogicalContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public LogicalContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceAppendContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SliceAppendContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BooleanoContext extends ExprContext {
		public TerminalNode BOOL() { return getToken(LanguageParser.BOOL, 0); }
		public BooleanoContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NilllContext extends ExprContext {
		public NilllContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MatrixAccessContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MatrixAccessContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructAccessContext extends ExprContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public StructAccessContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MulDivModContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MulDivModContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceAssignContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TipoContext tipo() {
			return getRuleContext(TipoContext.class,0);
		}
		public ArgsContext args() {
			return getRuleContext(ArgsContext.class,0);
		}
		public SliceAssignContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentifierContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public IdentifierContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DecimalContext extends ExprContext {
		public TerminalNode DOUBLE() { return getToken(LanguageParser.DOUBLE, 0); }
		public DecimalContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NumberContext extends ExprContext {
		public TerminalNode INT() { return getToken(LanguageParser.INT, 0); }
		public NumberContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructMethodCallContext extends ExprContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public CallContext call() {
			return getRuleContext(CallContext.class,0);
		}
		public StructMethodCallContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IncrementContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public IncrementContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class EqualityContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public EqualityContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceAccessContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SliceAccessContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DecrementContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public DecrementContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceIndexContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SliceIndexContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AddSubContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AddSubContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CallFuncContext extends ExprContext {
		public EmbebidaexContext embebidaex() {
			return getRuleContext(EmbebidaexContext.class,0);
		}
		public CallContext call() {
			return getRuleContext(CallContext.class,0);
		}
		public CallFuncContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CadenaContext extends ExprContext {
		public TerminalNode STRING() { return getToken(LanguageParser.STRING, 0); }
		public CadenaContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RelationalContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public RelationalContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NotContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public NotContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CaracterContext extends ExprContext {
		public TerminalNode RUNE() { return getToken(LanguageParser.RUNE, 0); }
		public CaracterContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceLenContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SliceLenContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AssignContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NegateContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public NegateContext(ExprContext ctx) { copyFrom(ctx); }
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 34;
		enterRecursionRule(_localctx, 34, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(435);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,39,_ctx) ) {
			case 1:
				{
				_localctx = new NegateContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(319);
				match(T__26);
				setState(320);
				expr(31);
				}
				break;
			case 2:
				{
				_localctx = new NilllContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(321);
				match(T__27);
				}
				break;
			case 3:
				{
				_localctx = new StructMethodCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(322);
				match(ID);
				setState(323);
				match(T__28);
				setState(324);
				match(ID);
				setState(325);
				call();
				}
				break;
			case 4:
				{
				_localctx = new CallFuncContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(326);
				embebidaex();
				setState(327);
				call();
				}
				break;
			case 5:
				{
				_localctx = new IncrementContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(329);
				match(ID);
				setState(330);
				match(T__29);
				}
				break;
			case 6:
				{
				_localctx = new DecrementContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(331);
				match(ID);
				setState(332);
				match(T__30);
				}
				break;
			case 7:
				{
				_localctx = new ItemMatrixAssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(333);
				match(ID);
				setState(334);
				match(T__4);
				setState(335);
				expr(0);
				setState(336);
				match(T__5);
				setState(337);
				match(T__4);
				setState(338);
				expr(0);
				setState(339);
				match(T__5);
				setState(340);
				match(T__2);
				setState(341);
				expr(21);
				}
				break;
			case 8:
				{
				_localctx = new ItemAssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(343);
				match(ID);
				setState(344);
				match(T__4);
				setState(345);
				expr(0);
				setState(346);
				match(T__5);
				setState(347);
				match(T__2);
				setState(348);
				expr(20);
				}
				break;
			case 9:
				{
				_localctx = new AssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(350);
				match(ID);
				setState(351);
				match(T__2);
				setState(352);
				expr(19);
				}
				break;
			case 10:
				{
				_localctx = new StructAccessContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(353);
				match(ID);
				setState(356); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(354);
						match(T__28);
						setState(355);
						match(ID);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(358); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,36,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(361);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,37,_ctx) ) {
				case 1:
					{
					setState(360);
					match(T__0);
					}
					break;
				}
				}
				break;
			case 11:
				{
				_localctx = new StructItemAssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(363);
				match(ID);
				setState(364);
				match(T__28);
				setState(365);
				match(ID);
				setState(366);
				match(T__2);
				setState(367);
				expr(0);
				setState(369);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,38,_ctx) ) {
				case 1:
					{
					setState(368);
					match(T__0);
					}
					break;
				}
				}
				break;
			case 12:
				{
				_localctx = new SliceAssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(371);
				match(ID);
				setState(372);
				match(T__2);
				setState(373);
				match(T__4);
				setState(374);
				match(T__5);
				setState(375);
				tipo();
				setState(376);
				match(T__6);
				setState(377);
				args();
				setState(378);
				match(T__7);
				}
				break;
			case 13:
				{
				_localctx = new BooleanoContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(380);
				match(BOOL);
				}
				break;
			case 14:
				{
				_localctx = new NotContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(381);
				match(T__43);
				setState(382);
				expr(13);
				}
				break;
			case 15:
				{
				_localctx = new DecimalContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(383);
				match(DOUBLE);
				}
				break;
			case 16:
				{
				_localctx = new CaracterContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(384);
				match(RUNE);
				}
				break;
			case 17:
				{
				_localctx = new CadenaContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(385);
				match(STRING);
				}
				break;
			case 18:
				{
				_localctx = new NumberContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(386);
				match(INT);
				}
				break;
			case 19:
				{
				_localctx = new SliceIndexContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(387);
				match(T__44);
				setState(388);
				match(T__28);
				setState(389);
				match(T__45);
				setState(390);
				match(T__11);
				setState(391);
				match(ID);
				setState(392);
				match(T__18);
				setState(393);
				expr(0);
				setState(394);
				match(T__12);
				}
				break;
			case 20:
				{
				_localctx = new SliceJoinContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(396);
				match(T__46);
				setState(397);
				match(T__28);
				setState(398);
				match(T__47);
				setState(399);
				match(T__11);
				setState(400);
				match(ID);
				setState(401);
				match(T__18);
				setState(402);
				expr(0);
				setState(403);
				match(T__12);
				}
				break;
			case 21:
				{
				_localctx = new SliceLenContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(405);
				match(T__48);
				setState(406);
				match(T__11);
				setState(407);
				expr(0);
				setState(408);
				match(T__12);
				}
				break;
			case 22:
				{
				_localctx = new SliceAppendContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(410);
				match(T__49);
				setState(411);
				match(T__11);
				setState(412);
				match(ID);
				setState(413);
				match(T__18);
				setState(414);
				expr(0);
				setState(415);
				match(T__12);
				}
				break;
			case 23:
				{
				_localctx = new SliceAccessContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(417);
				match(ID);
				setState(418);
				match(T__4);
				setState(419);
				expr(0);
				setState(420);
				match(T__5);
				}
				break;
			case 24:
				{
				_localctx = new MatrixAccessContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(422);
				match(ID);
				setState(423);
				match(T__4);
				setState(424);
				expr(0);
				setState(425);
				match(T__5);
				setState(426);
				match(T__4);
				setState(427);
				expr(0);
				setState(428);
				match(T__5);
				}
				break;
			case 25:
				{
				_localctx = new IdentifierContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(430);
				match(ID);
				}
				break;
			case 26:
				{
				_localctx = new ParensContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(431);
				match(T__11);
				setState(432);
				expr(0);
				setState(433);
				match(T__12);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(454);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,41,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(452);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,40,_ctx) ) {
					case 1:
						{
						_localctx = new MulDivModContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(437);
						if (!(precpred(_ctx, 25))) throw new FailedPredicateException(this, "precpred(_ctx, 25)");
						setState(438);
						((MulDivModContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 30064771072L) != 0)) ) {
							((MulDivModContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(439);
						expr(26);
						}
						break;
					case 2:
						{
						_localctx = new AddSubContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(440);
						if (!(precpred(_ctx, 24))) throw new FailedPredicateException(this, "precpred(_ctx, 24)");
						setState(441);
						((AddSubContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__26 || _la==T__34) ) {
							((AddSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(442);
						expr(25);
						}
						break;
					case 3:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(443);
						if (!(precpred(_ctx, 23))) throw new FailedPredicateException(this, "precpred(_ctx, 23)");
						setState(444);
						((RelationalContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 1030792151040L) != 0)) ) {
							((RelationalContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(445);
						expr(24);
						}
						break;
					case 4:
						{
						_localctx = new EqualityContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(446);
						if (!(precpred(_ctx, 22))) throw new FailedPredicateException(this, "precpred(_ctx, 22)");
						setState(447);
						((EqualityContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__39 || _la==T__40) ) {
							((EqualityContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(448);
						expr(23);
						}
						break;
					case 5:
						{
						_localctx = new LogicalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(449);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(450);
						((LogicalContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__41 || _la==T__42) ) {
							((LogicalContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(451);
						expr(15);
						}
						break;
					}
					} 
				}
				setState(456);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,41,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class EmbebidaexContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public EmbebidaexContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_embebidaex; }
	}

	public final EmbebidaexContext embebidaex() throws RecognitionException {
		EmbebidaexContext _localctx = new EmbebidaexContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_embebidaex);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(457);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & -9189595039649497088L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CallContext extends ParserRuleContext {
		public ArgsContext args() {
			return getRuleContext(ArgsContext.class,0);
		}
		public CallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_call; }
	}

	public final CallContext call() throws RecognitionException {
		CallContext _localctx = new CallContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_call);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(459);
			match(T__11);
			setState(461);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (((((_la - 12)) & ~0x3f) == 0 && ((1L << (_la - 12)) & 35193077987639297L) != 0)) {
				{
				setState(460);
				args();
				}
			}

			setState(463);
			match(T__12);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TipoContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TipoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_tipo; }
	}

	public final TipoContext tipo() throws RecognitionException {
		TipoContext _localctx = new TipoContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_tipo);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(465);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & -8106479328998457344L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 17:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 25);
		case 1:
			return precpred(_ctx, 24);
		case 2:
			return precpred(_ctx, 23);
		case 3:
			return precpred(_ctx, 22);
		case 4:
			return precpred(_ctx, 14);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001D\u01d4\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0001\u0000\u0005\u0000"+
		",\b\u0000\n\u0000\f\u0000/\t\u0000\u0001\u0001\u0001\u0001\u0003\u0001"+
		"3\b\u0001\u0001\u0001\u0001\u0001\u0003\u00017\b\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0003\u0001<\b\u0001\u0001\u0001\u0001\u0001\u0003"+
		"\u0001@\b\u0001\u0001\u0001\u0001\u0001\u0003\u0001D\b\u0001\u0001\u0001"+
		"\u0001\u0001\u0003\u0001H\b\u0001\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0003\u0002M\b\u0002\u0001\u0002\u0001\u0002\u0003\u0002Q\b\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0003\u0002V\b\u0002\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0003\u0003f\b\u0003\u0001\u0004\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0003\u0007\u0085\b\u0007\u0001\u0007\u0001\u0007\u0003"+
		"\u0007\u0089\b\u0007\u0001\u0007\u0001\u0007\u0005\u0007\u008d\b\u0007"+
		"\n\u0007\f\u0007\u0090\t\u0007\u0001\u0007\u0001\u0007\u0001\b\u0001\b"+
		"\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0003\b\u009c\b\b\u0001"+
		"\b\u0001\b\u0003\b\u00a0\b\b\u0001\b\u0001\b\u0005\b\u00a4\b\b\n\b\f\b"+
		"\u00a7\t\b\u0001\b\u0001\b\u0001\t\u0001\t\u0003\t\u00ad\b\t\u0001\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0001\t\u0005\t\u00b5\b\t\n\t\f\t\u00b8\t\t"+
		"\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0003\t\u00c0\b\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0004\t\u00c6\b\t\u000b\t\f\t\u00c7\u0001\t"+
		"\u0003\t\u00cb\b\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0003"+
		"\t\u00e5\b\t\u0001\t\u0001\t\u0003\t\u00e9\b\t\u0001\t\u0001\t\u0003\t"+
		"\u00ed\b\t\u0001\t\u0003\t\u00f0\b\t\u0003\t\u00f2\b\t\u0001\n\u0001\n"+
		"\u0001\n\u0001\n\u0001\n\u0005\n\u00f9\b\n\n\n\f\n\u00fc\t\n\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0005\u000b\u0101\b\u000b\n\u000b\f\u000b\u0104"+
		"\t\u000b\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0005\f\u010e\b\f\n\f\f\f\u0111\t\f\u0001\r\u0001\r\u0001\r\u0003\r"+
		"\u0116\b\r\u0001\r\u0001\r\u0001\r\u0003\r\u011b\b\r\u0005\r\u011d\b\r"+
		"\n\r\f\r\u0120\t\r\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0005\u000e\u0129\b\u000e\n\u000e\f\u000e"+
		"\u012c\t\u000e\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0005\u000f"+
		"\u0132\b\u000f\n\u000f\f\u000f\u0135\t\u000f\u0001\u0010\u0001\u0010\u0001"+
		"\u0010\u0005\u0010\u013a\b\u0010\n\u0010\f\u0010\u013d\t\u0010\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0004\u0011\u0165\b\u0011\u000b\u0011\f\u0011\u0166\u0001"+
		"\u0011\u0003\u0011\u016a\b\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0003\u0011\u0172\b\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0003\u0011\u01b4\b\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0005\u0011\u01c5\b\u0011\n\u0011\f\u0011\u01c8\t\u0011"+
		"\u0001\u0012\u0001\u0012\u0001\u0013\u0001\u0013\u0003\u0013\u01ce\b\u0013"+
		"\u0001\u0013\u0001\u0013\u0001\u0014\u0001\u0014\u0001\u0014\u0000\u0001"+
		"\"\u0015\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018"+
		"\u001a\u001c\u001e \"$&(\u0000\u0007\u0001\u0000 \"\u0002\u0000\u001b"+
		"\u001b##\u0001\u0000$\'\u0001\u0000()\u0001\u0000*+\u0002\u000036??\u0003"+
		"\u0000\u001c\u001c7;??\u0213\u0000-\u0001\u0000\u0000\u0000\u0002G\u0001"+
		"\u0000\u0000\u0000\u0004U\u0001\u0000\u0000\u0000\u0006e\u0001\u0000\u0000"+
		"\u0000\bg\u0001\u0000\u0000\u0000\nr\u0001\u0000\u0000\u0000\fy\u0001"+
		"\u0000\u0000\u0000\u000e\u0080\u0001\u0000\u0000\u0000\u0010\u0093\u0001"+
		"\u0000\u0000\u0000\u0012\u00f1\u0001\u0000\u0000\u0000\u0014\u00f3\u0001"+
		"\u0000\u0000\u0000\u0016\u00fd\u0001\u0000\u0000\u0000\u0018\u0105\u0001"+
		"\u0000\u0000\u0000\u001a\u0112\u0001\u0000\u0000\u0000\u001c\u0121\u0001"+
		"\u0000\u0000\u0000\u001e\u012d\u0001\u0000\u0000\u0000 \u0136\u0001\u0000"+
		"\u0000\u0000\"\u01b3\u0001\u0000\u0000\u0000$\u01c9\u0001\u0000\u0000"+
		"\u0000&\u01cb\u0001\u0000\u0000\u0000(\u01d1\u0001\u0000\u0000\u0000*"+
		",\u0003\u0002\u0001\u0000+*\u0001\u0000\u0000\u0000,/\u0001\u0000\u0000"+
		"\u0000-+\u0001\u0000\u0000\u0000-.\u0001\u0000\u0000\u0000.\u0001\u0001"+
		"\u0000\u0000\u0000/-\u0001\u0000\u0000\u000002\u0003\u0004\u0002\u0000"+
		"13\u0005\u0001\u0000\u000021\u0001\u0000\u0000\u000023\u0001\u0000\u0000"+
		"\u00003H\u0001\u0000\u0000\u000046\u0003\u0006\u0003\u000057\u0005\u0001"+
		"\u0000\u000065\u0001\u0000\u0000\u000067\u0001\u0000\u0000\u00007H\u0001"+
		"\u0000\u0000\u00008H\u0003\u0012\t\u00009;\u0003\b\u0004\u0000:<\u0005"+
		"\u0001\u0000\u0000;:\u0001\u0000\u0000\u0000;<\u0001\u0000\u0000\u0000"+
		"<H\u0001\u0000\u0000\u0000=?\u0003\n\u0005\u0000>@\u0005\u0001\u0000\u0000"+
		"?>\u0001\u0000\u0000\u0000?@\u0001\u0000\u0000\u0000@H\u0001\u0000\u0000"+
		"\u0000AC\u0003\f\u0006\u0000BD\u0005\u0001\u0000\u0000CB\u0001\u0000\u0000"+
		"\u0000CD\u0001\u0000\u0000\u0000DH\u0001\u0000\u0000\u0000EH\u0003\u000e"+
		"\u0007\u0000FH\u0003\u0010\b\u0000G0\u0001\u0000\u0000\u0000G4\u0001\u0000"+
		"\u0000\u0000G8\u0001\u0000\u0000\u0000G9\u0001\u0000\u0000\u0000G=\u0001"+
		"\u0000\u0000\u0000GA\u0001\u0000\u0000\u0000GE\u0001\u0000\u0000\u0000"+
		"GF\u0001\u0000\u0000\u0000H\u0003\u0001\u0000\u0000\u0000IJ\u0005\u0002"+
		"\u0000\u0000JL\u0005?\u0000\u0000KM\u0003(\u0014\u0000LK\u0001\u0000\u0000"+
		"\u0000LM\u0001\u0000\u0000\u0000MP\u0001\u0000\u0000\u0000NO\u0005\u0003"+
		"\u0000\u0000OQ\u0003\"\u0011\u0000PN\u0001\u0000\u0000\u0000PQ\u0001\u0000"+
		"\u0000\u0000QV\u0001\u0000\u0000\u0000RS\u0005?\u0000\u0000ST\u0005\u0004"+
		"\u0000\u0000TV\u0003\"\u0011\u0000UI\u0001\u0000\u0000\u0000UR\u0001\u0000"+
		"\u0000\u0000V\u0005\u0001\u0000\u0000\u0000WX\u0005?\u0000\u0000XY\u0005"+
		"\u0004\u0000\u0000YZ\u0005\u0005\u0000\u0000Z[\u0005\u0006\u0000\u0000"+
		"[\\\u0003(\u0014\u0000\\]\u0005\u0007\u0000\u0000]^\u0003\u0016\u000b"+
		"\u0000^_\u0005\b\u0000\u0000_f\u0001\u0000\u0000\u0000`a\u0005\u0002\u0000"+
		"\u0000ab\u0005?\u0000\u0000bc\u0005\u0005\u0000\u0000cd\u0005\u0006\u0000"+
		"\u0000df\u0003(\u0014\u0000eW\u0001\u0000\u0000\u0000e`\u0001\u0000\u0000"+
		"\u0000f\u0007\u0001\u0000\u0000\u0000gh\u0005?\u0000\u0000hi\u0005\u0004"+
		"\u0000\u0000ij\u0005\u0005\u0000\u0000jk\u0005\u0006\u0000\u0000kl\u0005"+
		"\u0005\u0000\u0000lm\u0005\u0006\u0000\u0000mn\u0003(\u0014\u0000no\u0005"+
		"\u0007\u0000\u0000op\u0003\u0018\f\u0000pq\u0005\b\u0000\u0000q\t\u0001"+
		"\u0000\u0000\u0000rs\u0005\t\u0000\u0000st\u0005?\u0000\u0000tu\u0005"+
		"\n\u0000\u0000uv\u0005\u0007\u0000\u0000vw\u0003\u001a\r\u0000wx\u0005"+
		"\b\u0000\u0000x\u000b\u0001\u0000\u0000\u0000yz\u0005?\u0000\u0000z{\u0005"+
		"?\u0000\u0000{|\u0005\u0003\u0000\u0000|}\u0005\u0007\u0000\u0000}~\u0003"+
		"\u001c\u000e\u0000~\u007f\u0005\b\u0000\u0000\u007f\r\u0001\u0000\u0000"+
		"\u0000\u0080\u0081\u0005\u000b\u0000\u0000\u0081\u0082\u0005?\u0000\u0000"+
		"\u0082\u0084\u0005\f\u0000\u0000\u0083\u0085\u0003\u0014\n\u0000\u0084"+
		"\u0083\u0001\u0000\u0000\u0000\u0084\u0085\u0001\u0000\u0000\u0000\u0085"+
		"\u0086\u0001\u0000\u0000\u0000\u0086\u0088\u0005\r\u0000\u0000\u0087\u0089"+
		"\u0003(\u0014\u0000\u0088\u0087\u0001\u0000\u0000\u0000\u0088\u0089\u0001"+
		"\u0000\u0000\u0000\u0089\u008a\u0001\u0000\u0000\u0000\u008a\u008e\u0005"+
		"\u0007\u0000\u0000\u008b\u008d\u0003\u0002\u0001\u0000\u008c\u008b\u0001"+
		"\u0000\u0000\u0000\u008d\u0090\u0001\u0000\u0000\u0000\u008e\u008c\u0001"+
		"\u0000\u0000\u0000\u008e\u008f\u0001\u0000\u0000\u0000\u008f\u0091\u0001"+
		"\u0000\u0000\u0000\u0090\u008e\u0001\u0000\u0000\u0000\u0091\u0092\u0005"+
		"\b\u0000\u0000\u0092\u000f\u0001\u0000\u0000\u0000\u0093\u0094\u0005\u000b"+
		"\u0000\u0000\u0094\u0095\u0005\f\u0000\u0000\u0095\u0096\u0005?\u0000"+
		"\u0000\u0096\u0097\u0005?\u0000\u0000\u0097\u0098\u0005\r\u0000\u0000"+
		"\u0098\u0099\u0005?\u0000\u0000\u0099\u009b\u0005\f\u0000\u0000\u009a"+
		"\u009c\u0003\u0014\n\u0000\u009b\u009a\u0001\u0000\u0000\u0000\u009b\u009c"+
		"\u0001\u0000\u0000\u0000\u009c\u009d\u0001\u0000\u0000\u0000\u009d\u009f"+
		"\u0005\r\u0000\u0000\u009e\u00a0\u0003(\u0014\u0000\u009f\u009e\u0001"+
		"\u0000\u0000\u0000\u009f\u00a0\u0001\u0000\u0000\u0000\u00a0\u00a1\u0001"+
		"\u0000\u0000\u0000\u00a1\u00a5\u0005\u0007\u0000\u0000\u00a2\u00a4\u0003"+
		"\u0002\u0001\u0000\u00a3\u00a2\u0001\u0000\u0000\u0000\u00a4\u00a7\u0001"+
		"\u0000\u0000\u0000\u00a5\u00a3\u0001\u0000\u0000\u0000\u00a5\u00a6\u0001"+
		"\u0000\u0000\u0000\u00a6\u00a8\u0001\u0000\u0000\u0000\u00a7\u00a5\u0001"+
		"\u0000\u0000\u0000\u00a8\u00a9\u0005\b\u0000\u0000\u00a9\u0011\u0001\u0000"+
		"\u0000\u0000\u00aa\u00ac\u0003\"\u0011\u0000\u00ab\u00ad\u0005\u0001\u0000"+
		"\u0000\u00ac\u00ab\u0001\u0000\u0000\u0000\u00ac\u00ad\u0001\u0000\u0000"+
		"\u0000\u00ad\u00f2\u0001\u0000\u0000\u0000\u00ae\u00af\u0005\u000e\u0000"+
		"\u0000\u00af\u00b0\u0003\"\u0011\u0000\u00b0\u00b1\u0005\r\u0000\u0000"+
		"\u00b1\u00f2\u0001\u0000\u0000\u0000\u00b2\u00b6\u0005\u0007\u0000\u0000"+
		"\u00b3\u00b5\u0003\u0002\u0001\u0000\u00b4\u00b3\u0001\u0000\u0000\u0000"+
		"\u00b5\u00b8\u0001\u0000\u0000\u0000\u00b6\u00b4\u0001\u0000\u0000\u0000"+
		"\u00b6\u00b7\u0001\u0000\u0000\u0000\u00b7\u00b9\u0001\u0000\u0000\u0000"+
		"\u00b8\u00b6\u0001\u0000\u0000\u0000\u00b9\u00f2\u0005\b\u0000\u0000\u00ba"+
		"\u00bb\u0005\u000f\u0000\u0000\u00bb\u00bc\u0003\"\u0011\u0000\u00bc\u00bf"+
		"\u0003\u0012\t\u0000\u00bd\u00be\u0005\u0010\u0000\u0000\u00be\u00c0\u0003"+
		"\u0012\t\u0000\u00bf\u00bd\u0001\u0000\u0000\u0000\u00bf\u00c0\u0001\u0000"+
		"\u0000\u0000\u00c0\u00f2\u0001\u0000\u0000\u0000\u00c1\u00c2\u0005\u0011"+
		"\u0000\u0000\u00c2\u00c3\u0003\"\u0011\u0000\u00c3\u00c5\u0005\u0007\u0000"+
		"\u0000\u00c4\u00c6\u0003\u001e\u000f\u0000\u00c5\u00c4\u0001\u0000\u0000"+
		"\u0000\u00c6\u00c7\u0001\u0000\u0000\u0000\u00c7\u00c5\u0001\u0000\u0000"+
		"\u0000\u00c7\u00c8\u0001\u0000\u0000\u0000\u00c8\u00ca\u0001\u0000\u0000"+
		"\u0000\u00c9\u00cb\u0003 \u0010\u0000\u00ca\u00c9\u0001\u0000\u0000\u0000"+
		"\u00ca\u00cb\u0001\u0000\u0000\u0000\u00cb\u00cc\u0001\u0000\u0000\u0000"+
		"\u00cc\u00cd\u0005\b\u0000\u0000\u00cd\u00f2\u0001\u0000\u0000\u0000\u00ce"+
		"\u00cf\u0005\u0012\u0000\u0000\u00cf\u00d0\u0003\"\u0011\u0000\u00d0\u00d1"+
		"\u0003\u0012\t\u0000\u00d1\u00f2\u0001\u0000\u0000\u0000\u00d2\u00d3\u0005"+
		"\u0012\u0000\u0000\u00d3\u00d4\u0003\u0004\u0002\u0000\u00d4\u00d5\u0005"+
		"\u0001\u0000\u0000\u00d5\u00d6\u0003\"\u0011\u0000\u00d6\u00d7\u0005\u0001"+
		"\u0000\u0000\u00d7\u00d8\u0003\"\u0011\u0000\u00d8\u00d9\u0003\u0012\t"+
		"\u0000\u00d9\u00f2\u0001\u0000\u0000\u0000\u00da\u00db\u0005\u0012\u0000"+
		"\u0000\u00db\u00dc\u0005?\u0000\u0000\u00dc\u00dd\u0005\u0013\u0000\u0000"+
		"\u00dd\u00de\u0005?\u0000\u0000\u00de\u00df\u0005\u0004\u0000\u0000\u00df"+
		"\u00e0\u0005\u0014\u0000\u0000\u00e0\u00e1\u0005?\u0000\u0000\u00e1\u00f2"+
		"\u0003\u0012\t\u0000\u00e2\u00e4\u0005\u0015\u0000\u0000\u00e3\u00e5\u0005"+
		"\u0001\u0000\u0000\u00e4\u00e3\u0001\u0000\u0000\u0000\u00e4\u00e5\u0001"+
		"\u0000\u0000\u0000\u00e5\u00f2\u0001\u0000\u0000\u0000\u00e6\u00e8\u0005"+
		"\u0016\u0000\u0000\u00e7\u00e9\u0005\u0001\u0000\u0000\u00e8\u00e7\u0001"+
		"\u0000\u0000\u0000\u00e8\u00e9\u0001\u0000\u0000\u0000\u00e9\u00f2\u0001"+
		"\u0000\u0000\u0000\u00ea\u00ec\u0005\u0017\u0000\u0000\u00eb\u00ed\u0003"+
		"\"\u0011\u0000\u00ec\u00eb\u0001\u0000\u0000\u0000\u00ec\u00ed\u0001\u0000"+
		"\u0000\u0000\u00ed\u00ef\u0001\u0000\u0000\u0000\u00ee\u00f0\u0005\u0001"+
		"\u0000\u0000\u00ef\u00ee\u0001\u0000\u0000\u0000\u00ef\u00f0\u0001\u0000"+
		"\u0000\u0000\u00f0\u00f2\u0001\u0000\u0000\u0000\u00f1\u00aa\u0001\u0000"+
		"\u0000\u0000\u00f1\u00ae\u0001\u0000\u0000\u0000\u00f1\u00b2\u0001\u0000"+
		"\u0000\u0000\u00f1\u00ba\u0001\u0000\u0000\u0000\u00f1\u00c1\u0001\u0000"+
		"\u0000\u0000\u00f1\u00ce\u0001\u0000\u0000\u0000\u00f1\u00d2\u0001\u0000"+
		"\u0000\u0000\u00f1\u00da\u0001\u0000\u0000\u0000\u00f1\u00e2\u0001\u0000"+
		"\u0000\u0000\u00f1\u00e6\u0001\u0000\u0000\u0000\u00f1\u00ea\u0001\u0000"+
		"\u0000\u0000\u00f2\u0013\u0001\u0000\u0000\u0000\u00f3\u00f4\u0005?\u0000"+
		"\u0000\u00f4\u00fa\u0003(\u0014\u0000\u00f5\u00f6\u0005\u0013\u0000\u0000"+
		"\u00f6\u00f7\u0005?\u0000\u0000\u00f7\u00f9\u0003(\u0014\u0000\u00f8\u00f5"+
		"\u0001\u0000\u0000\u0000\u00f9\u00fc\u0001\u0000\u0000\u0000\u00fa\u00f8"+
		"\u0001\u0000\u0000\u0000\u00fa\u00fb\u0001\u0000\u0000\u0000\u00fb\u0015"+
		"\u0001\u0000\u0000\u0000\u00fc\u00fa\u0001\u0000\u0000\u0000\u00fd\u0102"+
		"\u0003\"\u0011\u0000\u00fe\u00ff\u0005\u0013\u0000\u0000\u00ff\u0101\u0003"+
		"\"\u0011\u0000\u0100\u00fe\u0001\u0000\u0000\u0000\u0101\u0104\u0001\u0000"+
		"\u0000\u0000\u0102\u0100\u0001\u0000\u0000\u0000\u0102\u0103\u0001\u0000"+
		"\u0000\u0000\u0103\u0017\u0001\u0000\u0000\u0000\u0104\u0102\u0001\u0000"+
		"\u0000\u0000\u0105\u0106\u0005\u0007\u0000\u0000\u0106\u0107\u0003\u0016"+
		"\u000b\u0000\u0107\u010f\u0005\b\u0000\u0000\u0108\u0109\u0005\u0013\u0000"+
		"\u0000\u0109\u010a\u0005\u0007\u0000\u0000\u010a\u010b\u0003\u0016\u000b"+
		"\u0000\u010b\u010c\u0005\b\u0000\u0000\u010c\u010e\u0001\u0000\u0000\u0000"+
		"\u010d\u0108\u0001\u0000\u0000\u0000\u010e\u0111\u0001\u0000\u0000\u0000"+
		"\u010f\u010d\u0001\u0000\u0000\u0000\u010f\u0110\u0001\u0000\u0000\u0000"+
		"\u0110\u0019\u0001\u0000\u0000\u0000\u0111\u010f\u0001\u0000\u0000\u0000"+
		"\u0112\u0113\u0005?\u0000\u0000\u0113\u0115\u0003(\u0014\u0000\u0114\u0116"+
		"\u0005\u0001\u0000\u0000\u0115\u0114\u0001\u0000\u0000\u0000\u0115\u0116"+
		"\u0001\u0000\u0000\u0000\u0116\u011e\u0001\u0000\u0000\u0000\u0117\u0118"+
		"\u0005?\u0000\u0000\u0118\u011a\u0003(\u0014\u0000\u0119\u011b\u0005\u0001"+
		"\u0000\u0000\u011a\u0119\u0001\u0000\u0000\u0000\u011a\u011b\u0001\u0000"+
		"\u0000\u0000\u011b\u011d\u0001\u0000\u0000\u0000\u011c\u0117\u0001\u0000"+
		"\u0000\u0000\u011d\u0120\u0001\u0000\u0000\u0000\u011e\u011c\u0001\u0000"+
		"\u0000\u0000\u011e\u011f\u0001\u0000\u0000\u0000\u011f\u001b\u0001\u0000"+
		"\u0000\u0000\u0120\u011e\u0001\u0000\u0000\u0000\u0121\u0122\u0005?\u0000"+
		"\u0000\u0122\u0123\u0005\u0018\u0000\u0000\u0123\u012a\u0003\"\u0011\u0000"+
		"\u0124\u0125\u0005\u0013\u0000\u0000\u0125\u0126\u0005?\u0000\u0000\u0126"+
		"\u0127\u0005\u0018\u0000\u0000\u0127\u0129\u0003\"\u0011\u0000\u0128\u0124"+
		"\u0001\u0000\u0000\u0000\u0129\u012c\u0001\u0000\u0000\u0000\u012a\u0128"+
		"\u0001\u0000\u0000\u0000\u012a\u012b\u0001\u0000\u0000\u0000\u012b\u001d"+
		"\u0001\u0000\u0000\u0000\u012c\u012a\u0001\u0000\u0000\u0000\u012d\u012e"+
		"\u0005\u0019\u0000\u0000\u012e\u012f\u0003\"\u0011\u0000\u012f\u0133\u0005"+
		"\u0018\u0000\u0000\u0130\u0132\u0003\u0012\t\u0000\u0131\u0130\u0001\u0000"+
		"\u0000\u0000\u0132\u0135\u0001\u0000\u0000\u0000\u0133\u0131\u0001\u0000"+
		"\u0000\u0000\u0133\u0134\u0001\u0000\u0000\u0000\u0134\u001f\u0001\u0000"+
		"\u0000\u0000\u0135\u0133\u0001\u0000\u0000\u0000\u0136\u0137\u0005\u001a"+
		"\u0000\u0000\u0137\u013b\u0005\u0018\u0000\u0000\u0138\u013a\u0003\u0012"+
		"\t\u0000\u0139\u0138\u0001\u0000\u0000\u0000\u013a\u013d\u0001\u0000\u0000"+
		"\u0000\u013b\u0139\u0001\u0000\u0000\u0000\u013b\u013c\u0001\u0000\u0000"+
		"\u0000\u013c!\u0001\u0000\u0000\u0000\u013d\u013b\u0001\u0000\u0000\u0000"+
		"\u013e\u013f\u0006\u0011\uffff\uffff\u0000\u013f\u0140\u0005\u001b\u0000"+
		"\u0000\u0140\u01b4\u0003\"\u0011\u001f\u0141\u01b4\u0005\u001c\u0000\u0000"+
		"\u0142\u0143\u0005?\u0000\u0000\u0143\u0144\u0005\u001d\u0000\u0000\u0144"+
		"\u0145\u0005?\u0000\u0000\u0145\u01b4\u0003&\u0013\u0000\u0146\u0147\u0003"+
		"$\u0012\u0000\u0147\u0148\u0003&\u0013\u0000\u0148\u01b4\u0001\u0000\u0000"+
		"\u0000\u0149\u014a\u0005?\u0000\u0000\u014a\u01b4\u0005\u001e\u0000\u0000"+
		"\u014b\u014c\u0005?\u0000\u0000\u014c\u01b4\u0005\u001f\u0000\u0000\u014d"+
		"\u014e\u0005?\u0000\u0000\u014e\u014f\u0005\u0005\u0000\u0000\u014f\u0150"+
		"\u0003\"\u0011\u0000\u0150\u0151\u0005\u0006\u0000\u0000\u0151\u0152\u0005"+
		"\u0005\u0000\u0000\u0152\u0153\u0003\"\u0011\u0000\u0153\u0154\u0005\u0006"+
		"\u0000\u0000\u0154\u0155\u0005\u0003\u0000\u0000\u0155\u0156\u0003\"\u0011"+
		"\u0015\u0156\u01b4\u0001\u0000\u0000\u0000\u0157\u0158\u0005?\u0000\u0000"+
		"\u0158\u0159\u0005\u0005\u0000\u0000\u0159\u015a\u0003\"\u0011\u0000\u015a"+
		"\u015b\u0005\u0006\u0000\u0000\u015b\u015c\u0005\u0003\u0000\u0000\u015c"+
		"\u015d\u0003\"\u0011\u0014\u015d\u01b4\u0001\u0000\u0000\u0000\u015e\u015f"+
		"\u0005?\u0000\u0000\u015f\u0160\u0005\u0003\u0000\u0000\u0160\u01b4\u0003"+
		"\"\u0011\u0013\u0161\u0164\u0005?\u0000\u0000\u0162\u0163\u0005\u001d"+
		"\u0000\u0000\u0163\u0165\u0005?\u0000\u0000\u0164\u0162\u0001\u0000\u0000"+
		"\u0000\u0165\u0166\u0001\u0000\u0000\u0000\u0166\u0164\u0001\u0000\u0000"+
		"\u0000\u0166\u0167\u0001\u0000\u0000\u0000\u0167\u0169\u0001\u0000\u0000"+
		"\u0000\u0168\u016a\u0005\u0001\u0000\u0000\u0169\u0168\u0001\u0000\u0000"+
		"\u0000\u0169\u016a\u0001\u0000\u0000\u0000\u016a\u01b4\u0001\u0000\u0000"+
		"\u0000\u016b\u016c\u0005?\u0000\u0000\u016c\u016d\u0005\u001d\u0000\u0000"+
		"\u016d\u016e\u0005?\u0000\u0000\u016e\u016f\u0005\u0003\u0000\u0000\u016f"+
		"\u0171\u0003\"\u0011\u0000\u0170\u0172\u0005\u0001\u0000\u0000\u0171\u0170"+
		"\u0001\u0000\u0000\u0000\u0171\u0172\u0001\u0000\u0000\u0000\u0172\u01b4"+
		"\u0001\u0000\u0000\u0000\u0173\u0174\u0005?\u0000\u0000\u0174\u0175\u0005"+
		"\u0003\u0000\u0000\u0175\u0176\u0005\u0005\u0000\u0000\u0176\u0177\u0005"+
		"\u0006\u0000\u0000\u0177\u0178\u0003(\u0014\u0000\u0178\u0179\u0005\u0007"+
		"\u0000\u0000\u0179\u017a\u0003\u0016\u000b\u0000\u017a\u017b\u0005\b\u0000"+
		"\u0000\u017b\u01b4\u0001\u0000\u0000\u0000\u017c\u01b4\u0005>\u0000\u0000"+
		"\u017d\u017e\u0005,\u0000\u0000\u017e\u01b4\u0003\"\u0011\r\u017f\u01b4"+
		"\u0005@\u0000\u0000\u0180\u01b4\u0005B\u0000\u0000\u0181\u01b4\u0005A"+
		"\u0000\u0000\u0182\u01b4\u0005<\u0000\u0000\u0183\u0184\u0005-\u0000\u0000"+
		"\u0184\u0185\u0005\u001d\u0000\u0000\u0185\u0186\u0005.\u0000\u0000\u0186"+
		"\u0187\u0005\f\u0000\u0000\u0187\u0188\u0005?\u0000\u0000\u0188\u0189"+
		"\u0005\u0013\u0000\u0000\u0189\u018a\u0003\"\u0011\u0000\u018a\u018b\u0005"+
		"\r\u0000\u0000\u018b\u01b4\u0001\u0000\u0000\u0000\u018c\u018d\u0005/"+
		"\u0000\u0000\u018d\u018e\u0005\u001d\u0000\u0000\u018e\u018f\u00050\u0000"+
		"\u0000\u018f\u0190\u0005\f\u0000\u0000\u0190\u0191\u0005?\u0000\u0000"+
		"\u0191\u0192\u0005\u0013\u0000\u0000\u0192\u0193\u0003\"\u0011\u0000\u0193"+
		"\u0194\u0005\r\u0000\u0000\u0194\u01b4\u0001\u0000\u0000\u0000\u0195\u0196"+
		"\u00051\u0000\u0000\u0196\u0197\u0005\f\u0000\u0000\u0197\u0198\u0003"+
		"\"\u0011\u0000\u0198\u0199\u0005\r\u0000\u0000\u0199\u01b4\u0001\u0000"+
		"\u0000\u0000\u019a\u019b\u00052\u0000\u0000\u019b\u019c\u0005\f\u0000"+
		"\u0000\u019c\u019d\u0005?\u0000\u0000\u019d\u019e\u0005\u0013\u0000\u0000"+
		"\u019e\u019f\u0003\"\u0011\u0000\u019f\u01a0\u0005\r\u0000\u0000\u01a0"+
		"\u01b4\u0001\u0000\u0000\u0000\u01a1\u01a2\u0005?\u0000\u0000\u01a2\u01a3"+
		"\u0005\u0005\u0000\u0000\u01a3\u01a4\u0003\"\u0011\u0000\u01a4\u01a5\u0005"+
		"\u0006\u0000\u0000\u01a5\u01b4\u0001\u0000\u0000\u0000\u01a6\u01a7\u0005"+
		"?\u0000\u0000\u01a7\u01a8\u0005\u0005\u0000\u0000\u01a8\u01a9\u0003\""+
		"\u0011\u0000\u01a9\u01aa\u0005\u0006\u0000\u0000\u01aa\u01ab\u0005\u0005"+
		"\u0000\u0000\u01ab\u01ac\u0003\"\u0011\u0000\u01ac\u01ad\u0005\u0006\u0000"+
		"\u0000\u01ad\u01b4\u0001\u0000\u0000\u0000\u01ae\u01b4\u0005?\u0000\u0000"+
		"\u01af\u01b0\u0005\f\u0000\u0000\u01b0\u01b1\u0003\"\u0011\u0000\u01b1"+
		"\u01b2\u0005\r\u0000\u0000\u01b2\u01b4\u0001\u0000\u0000\u0000\u01b3\u013e"+
		"\u0001\u0000\u0000\u0000\u01b3\u0141\u0001\u0000\u0000\u0000\u01b3\u0142"+
		"\u0001\u0000\u0000\u0000\u01b3\u0146\u0001\u0000\u0000\u0000\u01b3\u0149"+
		"\u0001\u0000\u0000\u0000\u01b3\u014b\u0001\u0000\u0000\u0000\u01b3\u014d"+
		"\u0001\u0000\u0000\u0000\u01b3\u0157\u0001\u0000\u0000\u0000\u01b3\u015e"+
		"\u0001\u0000\u0000\u0000\u01b3\u0161\u0001\u0000\u0000\u0000\u01b3\u016b"+
		"\u0001\u0000\u0000\u0000\u01b3\u0173\u0001\u0000\u0000\u0000\u01b3\u017c"+
		"\u0001\u0000\u0000\u0000\u01b3\u017d\u0001\u0000\u0000\u0000\u01b3\u017f"+
		"\u0001\u0000\u0000\u0000\u01b3\u0180\u0001\u0000\u0000\u0000\u01b3\u0181"+
		"\u0001\u0000\u0000\u0000\u01b3\u0182\u0001\u0000\u0000\u0000\u01b3\u0183"+
		"\u0001\u0000\u0000\u0000\u01b3\u018c\u0001\u0000\u0000\u0000\u01b3\u0195"+
		"\u0001\u0000\u0000\u0000\u01b3\u019a\u0001\u0000\u0000\u0000\u01b3\u01a1"+
		"\u0001\u0000\u0000\u0000\u01b3\u01a6\u0001\u0000\u0000\u0000\u01b3\u01ae"+
		"\u0001\u0000\u0000\u0000\u01b3\u01af\u0001\u0000\u0000\u0000\u01b4\u01c6"+
		"\u0001\u0000\u0000\u0000\u01b5\u01b6\n\u0019\u0000\u0000\u01b6\u01b7\u0007"+
		"\u0000\u0000\u0000\u01b7\u01c5\u0003\"\u0011\u001a\u01b8\u01b9\n\u0018"+
		"\u0000\u0000\u01b9\u01ba\u0007\u0001\u0000\u0000\u01ba\u01c5\u0003\"\u0011"+
		"\u0019\u01bb\u01bc\n\u0017\u0000\u0000\u01bc\u01bd\u0007\u0002\u0000\u0000"+
		"\u01bd\u01c5\u0003\"\u0011\u0018\u01be\u01bf\n\u0016\u0000\u0000\u01bf"+
		"\u01c0\u0007\u0003\u0000\u0000\u01c0\u01c5\u0003\"\u0011\u0017\u01c1\u01c2"+
		"\n\u000e\u0000\u0000\u01c2\u01c3\u0007\u0004\u0000\u0000\u01c3\u01c5\u0003"+
		"\"\u0011\u000f\u01c4\u01b5\u0001\u0000\u0000\u0000\u01c4\u01b8\u0001\u0000"+
		"\u0000\u0000\u01c4\u01bb\u0001\u0000\u0000\u0000\u01c4\u01be\u0001\u0000"+
		"\u0000\u0000\u01c4\u01c1\u0001\u0000\u0000\u0000\u01c5\u01c8\u0001\u0000"+
		"\u0000\u0000\u01c6\u01c4\u0001\u0000\u0000\u0000\u01c6\u01c7\u0001\u0000"+
		"\u0000\u0000\u01c7#\u0001\u0000\u0000\u0000\u01c8\u01c6\u0001\u0000\u0000"+
		"\u0000\u01c9\u01ca\u0007\u0005\u0000\u0000\u01ca%\u0001\u0000\u0000\u0000"+
		"\u01cb\u01cd\u0005\f\u0000\u0000\u01cc\u01ce\u0003\u0016\u000b\u0000\u01cd"+
		"\u01cc\u0001\u0000\u0000\u0000\u01cd\u01ce\u0001\u0000\u0000\u0000\u01ce"+
		"\u01cf\u0001\u0000\u0000\u0000\u01cf\u01d0\u0005\r\u0000\u0000\u01d0\'"+
		"\u0001\u0000\u0000\u0000\u01d1\u01d2\u0007\u0006\u0000\u0000\u01d2)\u0001"+
		"\u0000\u0000\u0000+-26;?CGLPUe\u0084\u0088\u008e\u009b\u009f\u00a5\u00ac"+
		"\u00b6\u00bf\u00c7\u00ca\u00e4\u00e8\u00ec\u00ef\u00f1\u00fa\u0102\u010f"+
		"\u0115\u011a\u011e\u012a\u0133\u013b\u0166\u0169\u0171\u01b3\u01c4\u01c6"+
		"\u01cd";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}