package ru.rocketbank.core.utils;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.StringTokenizer;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.text.Typography;

public class MathEval {
    public static final FunctionHandler DFT_FUNCTION_HANDLER = DefaultImpl.INSTANCE;
    public static final OperatorHandler DFT_OPERATOR_HANDLER = DefaultImpl.INSTANCE;
    public static final int LEFT_SIDE = 76;
    public static final List<Character> MATH_OPERATORS = Arrays.asList(new Character[]{Character.valueOf('+'), Character.valueOf('-'), Character.valueOf(Typography.times), Character.valueOf('÷'), Character.valueOf('('), Character.valueOf(')')});
    public static final int NO_SIDE = 66;
    private static final Operator OPERAND = new Operator('\u0000', 0, 0, 66, false, null);
    public static final int RIGHT_SIDE = 82;
    private final SortedMap<String, Double> constants;
    private String expression;
    private final SortedMap<String, FunctionHandler> impureFunctions;
    private boolean isConstant;
    private int offset;
    private Operator[] operators;
    private final SortedMap<String, FunctionHandler> pureFunctions;
    private boolean relaxed;
    private String separators;
    private final SortedMap<String, Double> variables;

    public final class ArgParser {
        final int exEnd;
        int index;

        ArgParser(int i, int i2) {
            this.exEnd = i2;
            this.index = i + 1;
            this.index = MathEval.this.skipWhitespace(MathEval.this.expression, this.index, this.exEnd - 1);
        }

        public final double next() {
            if (hasNext()) {
                return _next();
            }
            throw MathEval.this.exception(this.index, "Function has too few arguments");
        }

        public final double next(double d) {
            if (hasNext()) {
                return _next();
            }
            return d;
        }

        private double _next() {
            if (MathEval.this.expression.charAt(this.index) == ',') {
                this.index++;
            }
            double access$300 = MathEval.this._evaluate(this.index, this.exEnd);
            this.index = MathEval.this.offset;
            return access$300;
        }

        public final boolean hasNext() {
            return MathEval.this.expression.charAt(this.index) != ')';
        }

        final int getIndex() {
            return this.index;
        }
    }

    public interface FunctionHandler {
        double evaluateFunction(String str, ArgParser argParser) throws ArithmeticException;
    }

    public static final class Operator {
        final OperatorHandler handler;
        final boolean internal;
        final int precedenceL;
        final int precedenceR;
        final char symbol;
        final int unary;

        public Operator(char c, int i, OperatorHandler operatorHandler) {
            this(c, i, i, 66, false, operatorHandler);
        }

        public Operator(char c, int i, int i2, int i3, OperatorHandler operatorHandler) {
            this(c, i, i2, i3, false, operatorHandler);
            if (i >= 0) {
                if (i <= 99) {
                    if (i2 >= 0) {
                        if (i2 <= 99) {
                            if (this.handler == '\u0000') {
                                throw new IllegalArgumentException("Operator handler is required");
                            }
                            return;
                        }
                    }
                    throw new IllegalArgumentException("Operator precendence must be 0 - 99");
                }
            }
            throw new IllegalArgumentException("Operator precendence must be 0 - 99");
        }

        Operator(char c, int i, int i2, int i3, boolean z, OperatorHandler operatorHandler) {
            this.symbol = c;
            this.precedenceL = i;
            this.precedenceR = i2;
            this.unary = i3;
            this.internal = z;
            this.handler = operatorHandler;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("MathOperator['");
            stringBuilder.append(this.symbol);
            stringBuilder.append("']");
            return stringBuilder.toString();
        }
    }

    public interface OperatorHandler {
        double evaluateOperator(double d, char c, double d2) throws ArithmeticException;
    }

    static class DefaultImpl implements FunctionHandler, OperatorHandler {
        static final DefaultImpl INSTANCE = new DefaultImpl();
        private static final Operator OPR_ADD = new Operator('+', 20, INSTANCE);
        private static final Operator OPR_BKT = new Operator('(', 40, INSTANCE);
        private static final Operator OPR_DIV1 = new Operator('/', 40, INSTANCE);
        private static final Operator OPR_DIV2 = new Operator('÷', 40, INSTANCE);
        private static final Operator OPR_EQU = new Operator('=', 99, 99, 82, true, INSTANCE);
        private static final Operator OPR_MLT1 = new Operator('*', 40, INSTANCE);
        private static final Operator OPR_MLT2 = new Operator(Typography.times, 40, INSTANCE);
        private static final Operator OPR_MLT3 = new Operator(Typography.middleDot, 40, INSTANCE);
        private static final Operator OPR_MOD = new Operator('%', 40, INSTANCE);
        private static final Operator OPR_NEG = new Operator(Typography.plusMinus, 60, 60, 82, true, INSTANCE);
        private static final Operator OPR_PWR = new Operator('^', 80, 81, 66, false, INSTANCE);
        private static final Operator OPR_SUB = new Operator('-', 20, INSTANCE);

        private DefaultImpl() {
        }

        public double evaluateOperator(double d, char c, double d2) {
            switch (c) {
                case '%':
                    return d % d2;
                case '(':
                    return d * d2;
                case '*':
                    return d * d2;
                case '+':
                    return d + d2;
                case '-':
                    return d - d2;
                case '/':
                    return d / d2;
                case '=':
                    return d2;
                case '^':
                    return Math.pow(d, d2);
                case '±':
                    return -d2;
                case '·':
                    return d * d2;
                case '×':
                    return d * d2;
                case '÷':
                    return d / d2;
                default:
                    StringBuilder stringBuilder = new StringBuilder("MathEval internal operator setup is incorrect - internal operator \"");
                    stringBuilder.append(c);
                    stringBuilder.append("\" not handled");
                    throw new UnsupportedOperationException(stringBuilder.toString());
            }
        }

        public double evaluateFunction(String str, ArgParser argParser) throws ArithmeticException {
            switch (Character.toLowerCase(str.charAt(0))) {
                case 'a':
                    if (str.equalsIgnoreCase("abs")) {
                        return Math.abs(argParser.next());
                    }
                    if (str.equalsIgnoreCase("acos")) {
                        return Math.acos(argParser.next());
                    }
                    if (str.equalsIgnoreCase("asin")) {
                        return Math.asin(argParser.next());
                    }
                    if (str.equalsIgnoreCase("atan")) {
                        return Math.atan(argParser.next());
                    }
                    break;
                case 'c':
                    if (str.equalsIgnoreCase("cbrt")) {
                        return Math.cbrt(argParser.next());
                    }
                    if (str.equalsIgnoreCase("ceil")) {
                        return Math.ceil(argParser.next());
                    }
                    if (str.equalsIgnoreCase("cos")) {
                        return Math.cos(argParser.next());
                    }
                    if (str.equalsIgnoreCase("cosh")) {
                        return Math.cosh(argParser.next());
                    }
                    break;
                case 'e':
                    if (str.equalsIgnoreCase("exp")) {
                        return Math.exp(argParser.next());
                    }
                    if (str.equalsIgnoreCase("expm1")) {
                        return Math.expm1(argParser.next());
                    }
                    break;
                case 'f':
                    if (str.equalsIgnoreCase("floor")) {
                        return Math.floor(argParser.next());
                    }
                    break;
                case 'g':
                case 'n':
                    break;
                case 'l':
                    if (str.equalsIgnoreCase("log")) {
                        return Math.log(argParser.next());
                    }
                    if (str.equalsIgnoreCase("log10")) {
                        return Math.log10(argParser.next());
                    }
                    if (str.equalsIgnoreCase("log1p")) {
                        return Math.log1p(argParser.next());
                    }
                    break;
                case 'm':
                    if (str.equalsIgnoreCase("max")) {
                        return Math.max(argParser.next(), argParser.next());
                    }
                    if (str.equalsIgnoreCase("min")) {
                        return Math.min(argParser.next(), argParser.next());
                    }
                    break;
                case 'r':
                    if (str.equalsIgnoreCase("random")) {
                        return Math.random();
                    }
                    if (str.equalsIgnoreCase("round")) {
                        return (double) Math.round(argParser.next());
                    }
                    if (str.equalsIgnoreCase("roundHE")) {
                        return Math.rint(argParser.next());
                    }
                    break;
                case 's':
                    if (str.equalsIgnoreCase("signum")) {
                        return Math.signum(argParser.next());
                    }
                    if (str.equalsIgnoreCase("sin")) {
                        return Math.sin(argParser.next());
                    }
                    if (str.equalsIgnoreCase("sinh")) {
                        return Math.sinh(argParser.next());
                    }
                    if (str.equalsIgnoreCase("sqrt")) {
                        return Math.sqrt(argParser.next());
                    }
                    break;
                case 't':
                    if (str.equalsIgnoreCase("tan")) {
                        return Math.tan(argParser.next());
                    }
                    if (str.equalsIgnoreCase("tanh")) {
                        return Math.tanh(argParser.next());
                    }
                    if (str.equalsIgnoreCase("toDegrees")) {
                        return Math.toDegrees(argParser.next());
                    }
                    if (str.equalsIgnoreCase("toRadians")) {
                        return Math.toRadians(argParser.next());
                    }
                    break;
                case 'u':
                    if (str.equalsIgnoreCase("ulp")) {
                        return Math.ulp(argParser.next());
                    }
                    break;
                default:
                    break;
            }
            StringBuilder stringBuilder = new StringBuilder("MathEval internal function setup is incorrect - internal function \"");
            stringBuilder.append(str);
            stringBuilder.append("\" not handled");
            throw new UnsupportedOperationException(stringBuilder.toString());
        }

        static void registerOperators(MathEval mathEval) {
            mathEval.setOperator(OPR_EQU);
            mathEval.setOperator(OPR_PWR);
            mathEval.setOperator(OPR_NEG);
            mathEval.setOperator(OPR_MLT1);
            mathEval.setOperator(OPR_MLT2);
            mathEval.setOperator(OPR_MLT3);
            mathEval.setOperator(OPR_BKT);
            mathEval.setOperator(OPR_DIV1);
            mathEval.setOperator(OPR_DIV2);
            mathEval.setOperator(OPR_MOD);
            mathEval.setOperator(OPR_ADD);
            mathEval.setOperator(OPR_SUB);
        }

        static void registerFunctions(MathEval mathEval) {
            mathEval.setFunctionHandler("abs", INSTANCE);
            mathEval.setFunctionHandler("acos", INSTANCE);
            mathEval.setFunctionHandler("asin", INSTANCE);
            mathEval.setFunctionHandler("atan", INSTANCE);
            mathEval.setFunctionHandler("cbrt", INSTANCE);
            mathEval.setFunctionHandler("ceil", INSTANCE);
            mathEval.setFunctionHandler("cos", INSTANCE);
            mathEval.setFunctionHandler("cosh", INSTANCE);
            mathEval.setFunctionHandler("exp", INSTANCE);
            mathEval.setFunctionHandler("expm1", INSTANCE);
            mathEval.setFunctionHandler("floor", INSTANCE);
            mathEval.setFunctionHandler("log", INSTANCE);
            mathEval.setFunctionHandler("log10", INSTANCE);
            mathEval.setFunctionHandler("log1p", INSTANCE);
            mathEval.setFunctionHandler("max", INSTANCE);
            mathEval.setFunctionHandler("min", INSTANCE);
            mathEval.setFunctionHandler("random", INSTANCE, true);
            mathEval.setFunctionHandler("round", INSTANCE);
            mathEval.setFunctionHandler("roundHE", INSTANCE);
            mathEval.setFunctionHandler("signum", INSTANCE);
            mathEval.setFunctionHandler("sin", INSTANCE);
            mathEval.setFunctionHandler("sinh", INSTANCE);
            mathEval.setFunctionHandler("sqrt", INSTANCE);
            mathEval.setFunctionHandler("tan", INSTANCE);
            mathEval.setFunctionHandler("tanh", INSTANCE);
            mathEval.setFunctionHandler("toDegrees", INSTANCE);
            mathEval.setFunctionHandler("toRadians", INSTANCE);
            mathEval.setFunctionHandler("ulp", INSTANCE);
        }
    }

    public MathEval() {
        this.operators = new Operator[256];
        DefaultImpl.registerOperators(this);
        this.constants = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        this.variables = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        setConstant("E", 2.718281828459045d);
        setConstant("Euler", 0.577215664901533d);
        setConstant("LN2", 0.693147180559945d);
        setConstant("LN10", 2.302585092994046d);
        setConstant("LOG2E", 1.442695040888963d);
        setConstant("LOG10E", 0.434294481903252d);
        setConstant("PHI", 1.618033988749895d);
        setConstant("PI", 3.141592653589793d);
        this.pureFunctions = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        this.impureFunctions = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        DefaultImpl.registerFunctions(this);
        this.relaxed = false;
        this.separators = null;
        this.offset = 0;
        this.isConstant = false;
    }

    public MathEval(MathEval mathEval) {
        this.operators = mathEval.operators;
        this.constants = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        this.constants.putAll(mathEval.constants);
        this.variables = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        this.variables.putAll(mathEval.variables);
        this.pureFunctions = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        this.impureFunctions = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        this.pureFunctions.putAll(mathEval.pureFunctions);
        this.impureFunctions.putAll(mathEval.impureFunctions);
        this.relaxed = mathEval.relaxed;
        this.separators = mathEval.separators;
        this.offset = 0;
        this.isConstant = false;
    }

    public double getConstant(String str) {
        Double d = (Double) this.constants.get(str);
        if (d == null) {
            return 0.0d;
        }
        return d.doubleValue();
    }

    public Iterable<Entry<String, Double>> getConstants() {
        return Collections.unmodifiableMap(this.constants).entrySet();
    }

    public MathEval setConstant(String str, double d) {
        return setConstant(str, Double.valueOf(d));
    }

    public MathEval setConstant(String str, Double d) {
        if (this.constants.get(str) != null) {
            throw new IllegalArgumentException("Constants may not be redefined");
        }
        validateName(str);
        this.constants.put(str, d);
        return this;
    }

    public MathEval setOperator(Operator operator) {
        if (operator.symbol >= this.operators.length) {
            Object obj = new Operator[((operator.symbol + (operator.symbol % 255)) + 1)];
            System.arraycopy(this.operators, 0, obj, 0, this.operators.length);
            this.operators = obj;
        }
        this.operators[operator.symbol] = operator;
        return this;
    }

    public MathEval setFunctionHandler(String str, FunctionHandler functionHandler) {
        return setFunctionHandler(str, functionHandler, false);
    }

    public MathEval setFunctionHandler(String str, FunctionHandler functionHandler, boolean z) {
        validateName(str);
        if (functionHandler == null) {
            this.pureFunctions.remove(str);
            this.impureFunctions.remove(str);
        } else if (z) {
            this.pureFunctions.remove(str);
            this.impureFunctions.put(str, functionHandler);
        } else {
            this.pureFunctions.put(str, functionHandler);
            this.impureFunctions.remove(str);
        }
        return this;
    }

    public double getVariable(String str) {
        Double d = (Double) this.variables.get(str);
        if (d == null) {
            return 0.0d;
        }
        return d.doubleValue();
    }

    public Iterable<Entry<String, Double>> getVariables() {
        return Collections.unmodifiableMap(this.variables).entrySet();
    }

    public MathEval setVariable(String str, double d) {
        return setVariable(str, Double.valueOf(d));
    }

    public MathEval setVariable(String str, Double d) {
        validateName(str);
        if (d == null) {
            this.variables.remove(str);
        } else {
            this.variables.put(str, d);
        }
        return this;
    }

    public MathEval clear() {
        this.variables.clear();
        return this;
    }

    public MathEval clear(String str) {
        SortedMap sortedMap = this.variables;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(".");
        String stringBuilder2 = stringBuilder.toString();
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append(str);
        stringBuilder3.append(".￿");
        sortedMap.subMap(stringBuilder2, stringBuilder3.toString()).clear();
        return this;
    }

    public boolean getVariableRequired() {
        return this.relaxed;
    }

    public MathEval setVariableRequired(boolean z) {
        this.relaxed = z ^ 1;
        return this;
    }

    private void validateName(String str) {
        if (Character.isLetter(str.charAt(0))) {
            if (str.indexOf(40) == -1) {
                if (str.indexOf(41) == -1) {
                    return;
                }
            }
            throw new IllegalArgumentException("Names for constants, variables and functions may not contain a parenthesis");
        }
        throw new IllegalArgumentException("Names for constants, variables and functions must start with a letter");
    }

    public double evaluate(String str) throws NumberFormatException, ArithmeticException {
        this.expression = str;
        this.isConstant = true;
        this.offset = 0;
        return _evaluate(0, str.length() - 1);
    }

    public boolean previousExpressionConstant() {
        return this.isConstant;
    }

    public Set<String> getVariablesWithin(String str) {
        Set<String> treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (this.separators == null) {
            StringBuilder stringBuilder = new StringBuilder(10);
            char c = '\u0000';
            while (c < this.operators.length) {
                if (!(this.operators[c] == null || this.operators[c].internal)) {
                    stringBuilder.append(c);
                }
                c = (char) (c + 1);
            }
            stringBuilder.append("()");
            this.separators = stringBuilder.toString();
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, this.separators, true);
        loop1:
        while (true) {
            Object obj = null;
            while (stringTokenizer.hasMoreTokens()) {
                String trim = stringTokenizer.nextToken().trim();
                if (trim.length() != 0 && Character.isLetter(trim.charAt(0))) {
                    obj = trim;
                } else if (trim.length() != 1 || trim.charAt(0) != '(') {
                    if (!(obj == null || this.constants.containsKey(obj))) {
                        treeSet.add(obj);
                    }
                }
            }
            break loop1;
        }
        if (obj != null && this.constants.containsKey(obj) == null) {
            treeSet.add(obj);
        }
        return treeSet;
    }

    private double _evaluate(int i, int i2) throws NumberFormatException, ArithmeticException {
        return _evaluate(i, i2, 0.0d, OPERAND, getOperator('='));
    }

    private double _evaluate(int r20, int r21, double r22, ru.rocketbank.core.utils.MathEval.Operator r24, ru.rocketbank.core.utils.MathEval.Operator r25) throws java.lang.NumberFormatException, java.lang.ArithmeticException {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r19 = this;
        r7 = r19;
        r8 = r21;
        r0 = OPERAND;
        r2 = r20;
        r10 = r22;
        r9 = r25;
        r1 = r0;
        r0 = r2;
    L_0x000e:
        r3 = r7.expression;
        r12 = r7.skipWhitespace(r3, r0, r8);
        r13 = 76;
        if (r12 > r8) goto L_0x0174;
    L_0x0018:
        r0 = r12;
    L_0x0019:
        if (r0 > r8) goto L_0x003d;
    L_0x001b:
        r1 = r7.expression;
        r1 = r1.charAt(r0);
        r2 = r7.getOperator(r1);
        r3 = OPERAND;
        if (r2 == r3) goto L_0x0030;
    L_0x0029:
        r1 = r2.internal;
        if (r1 == 0) goto L_0x003c;
    L_0x002d:
        r1 = OPERAND;
        goto L_0x0039;
    L_0x0030:
        r3 = 41;
        if (r1 == r3) goto L_0x003c;
    L_0x0034:
        r3 = 44;
        if (r1 == r3) goto L_0x003c;
    L_0x0038:
        r1 = r2;
    L_0x0039:
        r0 = r0 + 1;
        goto L_0x0019;
    L_0x003c:
        r1 = r2;
    L_0x003d:
        r2 = r7.expression;
        r2 = r2.charAt(r12);
        r3 = java.lang.Character.isLetter(r2);
        r4 = r9.unary;
        if (r4 == r13) goto L_0x005e;
    L_0x004b:
        r4 = 43;
        if (r2 == r4) goto L_0x005a;
    L_0x004f:
        r4 = 45;
        if (r2 != r4) goto L_0x005e;
    L_0x0053:
        r1 = 177; // 0xb1 float:2.48E-43 double:8.74E-322;
        r1 = r7.getOperator(r1);
        goto L_0x005e;
    L_0x005a:
        r2 = r24;
        goto L_0x0147;
    L_0x005e:
        r14 = 40;
        r15 = 82;
        if (r12 != r0) goto L_0x0072;
    L_0x0064:
        r4 = r9.unary;
        if (r4 == r13) goto L_0x006c;
    L_0x0068:
        r4 = r1.unary;
        if (r4 != r15) goto L_0x0072;
    L_0x006c:
        r2 = 9221120237041090560; // 0x7ff8000000000000 float:0.0 double:NaN;
    L_0x006e:
        r6 = r1;
        r3 = r2;
        goto L_0x00f2;
    L_0x0072:
        if (r2 != r14) goto L_0x0097;
    L_0x0074:
        r0 = r12 + 1;
        r0 = r7._evaluate(r0, r8);
        r2 = r7.expression;
        r3 = r7.offset;
        r3 = r3 + 1;
        r2 = r7.skipWhitespace(r2, r3, r8);
        if (r2 > r8) goto L_0x0091;
    L_0x0086:
        r3 = r7.expression;
        r3 = r3.charAt(r2);
        r3 = r7.getOperator(r3);
        goto L_0x0093;
    L_0x0091:
        r3 = OPERAND;
    L_0x0093:
        r6 = r3;
        r3 = r0;
        r0 = r2;
        goto L_0x00f2;
    L_0x0097:
        if (r3 == 0) goto L_0x00bb;
    L_0x0099:
        r2 = r1.symbol;
        if (r2 != r14) goto L_0x00bb;
    L_0x009d:
        r0 = r7.doFunction(r12, r8);
        r2 = r7.expression;
        r3 = r7.offset;
        r3 = r3 + 1;
        r2 = r7.skipWhitespace(r2, r3, r8);
        if (r2 > r8) goto L_0x00b8;
    L_0x00ad:
        r3 = r7.expression;
        r3 = r3.charAt(r2);
        r3 = r7.getOperator(r3);
        goto L_0x0093;
    L_0x00b8:
        r3 = OPERAND;
        goto L_0x0093;
    L_0x00bb:
        if (r3 == 0) goto L_0x00c4;
    L_0x00bd:
        r2 = r0 + -1;
        r2 = r7.doNamedVal(r12, r2);
        goto L_0x006e;
    L_0x00c4:
        r2 = r7.expression;	 Catch:{ NumberFormatException -> 0x0152 }
        r3 = "0x";	 Catch:{ NumberFormatException -> 0x0152 }
        r2 = r7.stringOfsEq(r2, r12, r3);	 Catch:{ NumberFormatException -> 0x0152 }
        if (r2 == 0) goto L_0x00e2;	 Catch:{ NumberFormatException -> 0x0152 }
    L_0x00ce:
        r2 = r7.expression;	 Catch:{ NumberFormatException -> 0x0152 }
        r3 = r12 + 2;	 Catch:{ NumberFormatException -> 0x0152 }
        r2 = r2.substring(r3, r0);	 Catch:{ NumberFormatException -> 0x0152 }
        r2 = r2.trim();	 Catch:{ NumberFormatException -> 0x0152 }
        r3 = 16;	 Catch:{ NumberFormatException -> 0x0152 }
        r2 = java.lang.Long.parseLong(r2, r3);	 Catch:{ NumberFormatException -> 0x0152 }
        r2 = (double) r2;	 Catch:{ NumberFormatException -> 0x0152 }
        goto L_0x006e;	 Catch:{ NumberFormatException -> 0x0152 }
    L_0x00e2:
        r2 = r7.expression;	 Catch:{ NumberFormatException -> 0x0152 }
        r2 = r2.substring(r12, r0);	 Catch:{ NumberFormatException -> 0x0152 }
        r2 = r2.trim();	 Catch:{ NumberFormatException -> 0x0152 }
        r2 = java.lang.Double.parseDouble(r2);	 Catch:{ NumberFormatException -> 0x0152 }
        goto L_0x006e;
    L_0x00f2:
        r1 = r7.opPrecedence(r9, r13);
        r2 = r7.opPrecedence(r6, r15);
        if (r1 >= r2) goto L_0x011b;
    L_0x00fc:
        r1 = r0 + 1;
        r0 = r7;
        r2 = r8;
        r5 = r9;
        r0 = r0._evaluate(r1, r2, r3, r5, r6);
        r2 = r7.offset;
        if (r2 > r8) goto L_0x0114;
    L_0x0109:
        r3 = r7.expression;
        r3 = r3.charAt(r2);
        r3 = r7.getOperator(r3);
        goto L_0x0116;
    L_0x0114:
        r3 = OPERAND;
    L_0x0116:
        r5 = r0;
        r16 = r2;
        r4 = r3;
        goto L_0x0122;
    L_0x011b:
        r16 = r0;
        r17 = r3;
        r4 = r6;
        r5 = r17;
    L_0x0122:
        r0 = r7;
        r1 = r12;
        r2 = r10;
        r10 = r4;
        r4 = r9;
        r0 = r0.doOperation(r1, r2, r4, r5);
        r2 = r24;
        r3 = r7.opPrecedence(r2, r13);
        r4 = r7.opPrecedence(r10, r15);
        if (r3 >= r4) goto L_0x014c;
    L_0x0137:
        r3 = r10.symbol;
        if (r3 != r14) goto L_0x0142;
    L_0x013b:
        r3 = r16 + -1;
        r9 = r10;
        r10 = r0;
        r0 = r3;
        r1 = r9;
        goto L_0x0147;
    L_0x0142:
        r9 = r10;
        r10 = r0;
        r1 = r9;
        r0 = r16;
    L_0x0147:
        r0 = r0 + 1;
        r2 = r12;
        goto L_0x000e;
    L_0x014c:
        r2 = r0;
        r4 = r10;
        r1 = r12;
        r12 = r16;
        goto L_0x017b;
    L_0x0152:
        r1 = new java.lang.StringBuilder;
        r2 = "Invalid numeric value \"";
        r1.<init>(r2);
        r2 = r7.expression;
        r0 = r2.substring(r12, r0);
        r0 = r0.trim();
        r1.append(r0);
        r0 = "\"";
        r1.append(r0);
        r0 = r1.toString();
        r0 = r7.exception(r12, r0);
        throw r0;
    L_0x0174:
        r4 = r9;
        r17 = r10;
        r10 = r1;
        r1 = r2;
        r2 = r17;
    L_0x017b:
        if (r12 <= r8) goto L_0x01a7;
    L_0x017d:
        r0 = OPERAND;
        if (r4 == r0) goto L_0x01a7;
    L_0x0181:
        r0 = r4.unary;
        if (r0 != r13) goto L_0x018d;
    L_0x0185:
        r5 = 9221120237041090560; // 0x7ff8000000000000 float:0.0 double:NaN;
        r0 = r7;
        r2 = r0.doOperation(r1, r2, r4, r5);
        goto L_0x01a7;
    L_0x018d:
        r0 = new java.lang.StringBuilder;
        r1 = "Expression ends with a blank operand after operator '";
        r0.<init>(r1);
        r1 = r10.symbol;
        r0.append(r1);
        r1 = "'";
        r0.append(r1);
        r0 = r0.toString();
        r0 = r7.exception(r12, r0);
        throw r0;
    L_0x01a7:
        r7.offset = r12;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.utils.MathEval._evaluate(int, int, double, ru.rocketbank.core.utils.MathEval$Operator, ru.rocketbank.core.utils.MathEval$Operator):double");
    }

    private Operator getOperator(char c) {
        if (c < this.operators.length) {
            c = this.operators[c];
            if (c != '\u0000') {
                return c;
            }
        }
        return OPERAND;
    }

    private int opPrecedence(Operator operator, int i) {
        if (operator == null) {
            return Integer.MIN_VALUE;
        }
        if (operator.unary != 66) {
            if (operator.unary == i) {
                return ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
        }
        return i == 76 ? operator.precedenceL : operator.precedenceR;
    }

    private double doOperation(int r7, double r8, ru.rocketbank.core.utils.MathEval.Operator r10, double r11) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r6 = this;
        r0 = r10.unary;
        r1 = 82;
        if (r0 == r1) goto L_0x0013;
    L_0x0006:
        r0 = java.lang.Double.isNaN(r8);
        if (r0 == 0) goto L_0x0013;
    L_0x000c:
        r8 = "Mathematical NaN detected in right-operand";
        r7 = r6.exception(r7, r8);
        throw r7;
    L_0x0013:
        r0 = r10.unary;
        r1 = 76;
        if (r0 == r1) goto L_0x0026;
    L_0x0019:
        r0 = java.lang.Double.isNaN(r11);
        if (r0 == 0) goto L_0x0026;
    L_0x001f:
        r8 = "Mathematical NaN detected in left-operand";
        r7 = r6.exception(r7, r8);
        throw r7;
    L_0x0026:
        r0 = r10.handler;	 Catch:{ ArithmeticException -> 0x005c, UnsupportedOperationException -> 0x0031 }
        r3 = r10.symbol;	 Catch:{ ArithmeticException -> 0x005c, UnsupportedOperationException -> 0x0031 }
        r1 = r8;	 Catch:{ ArithmeticException -> 0x005c, UnsupportedOperationException -> 0x0031 }
        r4 = r11;	 Catch:{ ArithmeticException -> 0x005c, UnsupportedOperationException -> 0x0031 }
        r8 = r0.evaluateOperator(r1, r3, r4);	 Catch:{ ArithmeticException -> 0x005c, UnsupportedOperationException -> 0x0031 }
        return r8;
    L_0x0031:
        if (r7 <= 0) goto L_0x0042;
    L_0x0033:
        r8 = r6.expression;
        r8 = r8.charAt(r7);
        r8 = r6.getOperator(r8);
        if (r8 != 0) goto L_0x0042;
    L_0x003f:
        r7 = r7 + -1;
        goto L_0x0031;
    L_0x0042:
        r8 = new java.lang.StringBuilder;
        r9 = "Operator \"";
        r8.<init>(r9);
        r9 = r10.symbol;
        r8.append(r9);
        r9 = "\" not handled by math engine (Programmer error: The list of operators is inconsistent within the engine)";
        r8.append(r9);
        r8 = r8.toString();
        r7 = r6.exception(r7, r8);
        throw r7;
    L_0x005c:
        r8 = move-exception;
        r9 = new java.lang.StringBuilder;
        r10 = "Mathematical expression \"";
        r9.<init>(r10);
        r10 = r6.expression;
        r9.append(r10);
        r10 = "\" failed to evaluate";
        r9.append(r10);
        r9 = r9.toString();
        r7 = r6.exception(r7, r9, r8);
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.utils.MathEval.doOperation(int, double, ru.rocketbank.core.utils.MathEval$Operator, double):double");
    }

    private double doFunction(int r6, int r7) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r5 = this;
        r0 = r6;
    L_0x0001:
        if (r0 > r7) goto L_0x0010;
    L_0x0003:
        r1 = r5.expression;
        r1 = r1.charAt(r0);
        r2 = 40;
        if (r1 == r2) goto L_0x0010;
    L_0x000d:
        r0 = r0 + 1;
        goto L_0x0001;
    L_0x0010:
        r1 = r5.expression;
        r1 = r1.substring(r6, r0);
        r1 = r1.trim();
        r2 = new ru.rocketbank.core.utils.MathEval$ArgParser;
        r2.<init>(r0, r7);
        r7 = 0;
        r0 = r5.pureFunctions;	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        r0 = r0.get(r1);	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        r0 = (ru.rocketbank.core.utils.MathEval.FunctionHandler) r0;	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        if (r0 == 0) goto L_0x0046;	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
    L_0x002a:
        r3 = r0.evaluateFunction(r1, r2);	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        r6 = r2.hasNext();
        if (r6 == 0) goto L_0x003f;
    L_0x0034:
        r6 = r2.getIndex();
        r7 = "Function has too many arguments";
        r6 = r5.exception(r6, r7);
        throw r6;
    L_0x003f:
        r6 = r2.getIndex();
        r5.offset = r6;
        return r3;
    L_0x0046:
        r0 = r5.impureFunctions;	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        r0 = r0.get(r1);	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        r0 = (ru.rocketbank.core.utils.MathEval.FunctionHandler) r0;	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        if (r0 == 0) goto L_0x006f;	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
    L_0x0050:
        r3 = 0;	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        r5.isConstant = r3;	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        r3 = r0.evaluateFunction(r1, r2);	 Catch:{ ArithmeticException -> 0x00b4, NoSuchMethodError -> 0x009c, UnsupportedOperationException -> 0x0092, Throwable -> 0x008a, all -> 0x0087 }
        r6 = r2.hasNext();
        if (r6 == 0) goto L_0x0068;
    L_0x005d:
        r6 = r2.getIndex();
        r7 = "Function has too many arguments";
        r6 = r5.exception(r6, r7);
        throw r6;
    L_0x0068:
        r6 = r2.getIndex();
        r5.offset = r6;
        return r3;
    L_0x006f:
        r7 = new java.lang.StringBuilder;
        r0 = "Function \"";
        r7.<init>(r0);
        r7.append(r1);
        r0 = "\" not recognized";
        r7.append(r0);
        r7 = r7.toString();
        r6 = r5.exception(r6, r7);
        throw r6;
    L_0x0087:
        r6 = move-exception;
        r7 = r2;
        goto L_0x00b7;
    L_0x008a:
        r0 = move-exception;
        r1 = "Unexpected exception parsing function arguments";	 Catch:{ all -> 0x00b6 }
        r6 = r5.exception(r6, r1, r0);	 Catch:{ all -> 0x00b6 }
        throw r6;	 Catch:{ all -> 0x00b6 }
    L_0x0092:
        r0 = move-exception;	 Catch:{ all -> 0x00b6 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x00b6 }
        r6 = r5.exception(r6, r0);	 Catch:{ all -> 0x00b6 }
        throw r6;	 Catch:{ all -> 0x00b6 }
    L_0x009c:
        r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00b6 }
        r2 = "Function not supported in this JVM: \"";	 Catch:{ all -> 0x00b6 }
        r0.<init>(r2);	 Catch:{ all -> 0x00b6 }
        r0.append(r1);	 Catch:{ all -> 0x00b6 }
        r1 = "\"";	 Catch:{ all -> 0x00b6 }
        r0.append(r1);	 Catch:{ all -> 0x00b6 }
        r0 = r0.toString();	 Catch:{ all -> 0x00b6 }
        r6 = r5.exception(r6, r0);	 Catch:{ all -> 0x00b6 }
        throw r6;	 Catch:{ all -> 0x00b6 }
    L_0x00b4:
        r6 = move-exception;	 Catch:{ all -> 0x00b6 }
        throw r6;	 Catch:{ all -> 0x00b6 }
    L_0x00b6:
        r6 = move-exception;
    L_0x00b7:
        if (r7 == 0) goto L_0x00d0;
    L_0x00b9:
        r0 = r7.hasNext();
        if (r0 == 0) goto L_0x00ca;
    L_0x00bf:
        r6 = r7.getIndex();
        r7 = "Function has too many arguments";
        r6 = r5.exception(r6, r7);
        throw r6;
    L_0x00ca:
        r7 = r7.getIndex();
        r5.offset = r7;
    L_0x00d0:
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.utils.MathEval.doFunction(int, int):double");
    }

    private double doNamedVal(int i, int i2) {
        while (i < i2 && Character.isWhitespace(this.expression.charAt(i2))) {
            i2--;
        }
        i2 = this.expression.substring(i, i2 + 1);
        Double d = (Double) this.constants.get(i2);
        if (d != null) {
            return d.doubleValue();
        }
        d = (Double) this.variables.get(i2);
        if (d != null) {
            this.isConstant = false;
            return d.doubleValue();
        } else if (this.relaxed) {
            this.isConstant = false;
            return 0;
        } else {
            StringBuilder stringBuilder = new StringBuilder("Unrecognized constant or variable \"");
            stringBuilder.append(i2);
            stringBuilder.append("\"");
            throw exception(i, stringBuilder.toString());
        }
    }

    private ArithmeticException exception(int i, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" at offset ");
        stringBuilder.append(i);
        stringBuilder.append(" in expression \"");
        stringBuilder.append(this.expression);
        stringBuilder.append("\"");
        return new ArithmeticException(stringBuilder.toString());
    }

    private ArithmeticException exception(int i, String str, Throwable th) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" at offset ");
        stringBuilder.append(i);
        stringBuilder.append(" in expression \"");
        stringBuilder.append(this.expression);
        stringBuilder.append("\" (Cause: ");
        stringBuilder.append(th.getMessage() != 0 ? th.getMessage() : th.toString());
        stringBuilder.append(")");
        return new ArithmeticException(stringBuilder.toString());
    }

    private boolean stringOfsEq(String str, int i, String str2) {
        return str.regionMatches(true, i, str2, 0, str2.length());
    }

    private int skipWhitespace(String str, int i, int i2) {
        while (i <= i2 && Character.isWhitespace(str.charAt(i))) {
            i++;
        }
        return i;
    }
}
