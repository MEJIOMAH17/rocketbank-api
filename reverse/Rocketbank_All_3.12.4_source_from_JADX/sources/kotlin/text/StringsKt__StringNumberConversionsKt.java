package kotlin.text;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StringNumberConversions.kt */
class StringsKt__StringNumberConversionsKt extends StringsKt__StringBuilderKt {
    private static final String toString(byte b, int i) {
        b = Integer.toString(b, CharsKt__CharJVMKt.checkRadix(CharsKt__CharJVMKt.checkRadix(i)));
        Intrinsics.checkExpressionValueIsNotNull(b, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return b;
    }

    private static final String toString(short s, int i) {
        s = Integer.toString(s, CharsKt__CharJVMKt.checkRadix(CharsKt__CharJVMKt.checkRadix(i)));
        Intrinsics.checkExpressionValueIsNotNull(s, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return s;
    }

    private static final String toString(int i, int i2) {
        i = Integer.toString(i, CharsKt__CharJVMKt.checkRadix(i2));
        Intrinsics.checkExpressionValueIsNotNull(i, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return i;
    }

    private static final String toString(long j, int i) {
        j = Long.toString(j, CharsKt__CharJVMKt.checkRadix(i));
        Intrinsics.checkExpressionValueIsNotNull(j, "java.lang.Long.toString(this, checkRadix(radix))");
        return j;
    }

    private static final boolean toBoolean(String str) {
        return Boolean.parseBoolean(str);
    }

    private static final byte toByte(String str) {
        return Byte.parseByte(str);
    }

    private static final byte toByte(String str, int i) {
        return Byte.parseByte(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    private static final short toShort(String str) {
        return Short.parseShort(str);
    }

    private static final short toShort(String str, int i) {
        return Short.parseShort(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    private static final int toInt(String str) {
        return Integer.parseInt(str);
    }

    private static final int toInt(String str, int i) {
        return Integer.parseInt(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    private static final long toLong(String str) {
        return Long.parseLong(str);
    }

    private static final long toLong(String str, int i) {
        return Long.parseLong(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    private static final float toFloat(String str) {
        return Float.parseFloat(str);
    }

    private static final double toDouble(String str) {
        return Double.parseDouble(str);
    }

    public static final Byte toByteOrNull(String str) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        return toByteOrNull(str, 10);
    }

    public static final Byte toByteOrNull(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        str = toIntOrNull(str, i);
        if (str == null) {
            return null;
        }
        str = str.intValue();
        if (str >= -128) {
            if (str <= 127) {
                return Byte.valueOf((byte) str);
            }
        }
        return null;
    }

    public static final Short toShortOrNull(String str) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        return toShortOrNull(str, 10);
    }

    public static final Short toShortOrNull(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        str = toIntOrNull(str, i);
        if (str == null) {
            return null;
        }
        str = str.intValue();
        if (str >= -32768) {
            if (str <= 32767) {
                return Short.valueOf((short) str);
            }
        }
        return null;
    }

    public static final Integer toIntOrNull(String str) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        return toIntOrNull(str, 10);
    }

    public static final Integer toIntOrNull(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2;
        int i3;
        int i4;
        int digitOf;
        int i5 = 0;
        char charAt = str.charAt(0);
        int i6 = -2147483647;
        if (charAt >= '0') {
            i2 = 0;
        } else if (length == 1) {
            return null;
        } else {
            if (charAt == '-') {
                i6 = Integer.MIN_VALUE;
                i2 = 1;
            } else if (charAt != '+') {
                return null;
            } else {
                i3 = 0;
                i2 = 1;
                i4 = i6 / i;
                length--;
                if (i2 <= length) {
                    while (true) {
                        digitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
                        if (digitOf < 0 && i5 >= i4) {
                            i5 *= i;
                            if (i5 >= i6 + digitOf) {
                                i5 -= digitOf;
                                if (i2 != length) {
                                    break;
                                }
                                i2++;
                            } else {
                                return null;
                            }
                        }
                        return null;
                    }
                }
                return i3 == 0 ? Integer.valueOf(i5) : Integer.valueOf(-i5);
            }
        }
        i3 = i2;
        i4 = i6 / i;
        length--;
        if (i2 <= length) {
            while (true) {
                digitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
                if (digitOf < 0) {
                    return null;
                }
                i5 *= i;
                if (i5 >= i6 + digitOf) {
                    return null;
                }
                i5 -= digitOf;
                if (i2 != length) {
                    break;
                }
                i2++;
            }
        }
        if (i3 == 0) {
        }
    }

    public static final Long toLongOrNull(String str) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        return toLongOrNull(str, 10);
    }

    public static final Long toLongOrNull(String str, int i) {
        String str2 = str;
        int i2 = i;
        Intrinsics.checkParameterIsNotNull(str2, "$receiver");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        Long l = null;
        if (length == 0) {
            return null;
        }
        int i3;
        long j;
        long j2;
        long j3;
        int digitOf;
        int i4;
        long j4;
        long j5;
        int i5 = 0;
        char charAt = str2.charAt(0);
        long j6 = -9223372036854775807L;
        if (charAt < '0') {
            if (length == 1) {
                return null;
            }
            if (charAt == '-') {
                j6 = Long.MIN_VALUE;
                i5 = 1;
            } else if (charAt != '+') {
                return null;
            } else {
                i3 = 0;
                i5 = 1;
                j = (long) i2;
                j2 = j6 / j;
                j3 = 0;
                length--;
                if (i5 <= length) {
                    while (true) {
                        digitOf = CharsKt__CharJVMKt.digitOf(str2.charAt(i5), i2);
                        if (digitOf < 0 && j3 >= j2) {
                            j3 *= j;
                            i4 = i5;
                            j4 = (long) digitOf;
                            if (j3 >= j6 + j4) {
                                j5 = j3 - j4;
                                i5 = i4;
                                if (i5 != length) {
                                    break;
                                }
                                i5++;
                                l = null;
                                j3 = j5;
                            } else {
                                return null;
                            }
                        }
                        return l;
                    }
                    j3 = j5;
                }
                return i3 == 0 ? Long.valueOf(j3) : Long.valueOf(-j3);
            }
        }
        i3 = i5;
        j = (long) i2;
        j2 = j6 / j;
        j3 = 0;
        length--;
        if (i5 <= length) {
            while (true) {
                digitOf = CharsKt__CharJVMKt.digitOf(str2.charAt(i5), i2);
                if (digitOf < 0) {
                    return l;
                }
                j3 *= j;
                i4 = i5;
                j4 = (long) digitOf;
                if (j3 >= j6 + j4) {
                    return null;
                }
                j5 = j3 - j4;
                i5 = i4;
                if (i5 != length) {
                    break;
                }
                i5++;
                l = null;
                j3 = j5;
            }
            j3 = j5;
        }
        if (i3 == 0) {
        }
    }

    private static final BigInteger toBigInteger(String str) {
        return new BigInteger(str);
    }

    private static final BigInteger toBigInteger(String str, int i) {
        return new BigInteger(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    public static final BigInteger toBigIntegerOrNull(String str) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        return toBigIntegerOrNull(str, 10);
    }

    public static final BigInteger toBigIntegerOrNull(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        int i2 = 0;
        switch (length) {
            case 0:
                return null;
            case 1:
                if (CharsKt__CharJVMKt.digitOf(str.charAt(0), i) < 0) {
                    return null;
                }
                break;
            default:
                if (str.charAt(0) == '-') {
                    i2 = 1;
                }
                while (i2 < length) {
                    if (CharsKt__CharJVMKt.digitOf(str.charAt(i2), i) < 0) {
                        return null;
                    }
                    i2++;
                }
                break;
        }
        return new BigInteger(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    private static final BigDecimal toBigDecimal(String str) {
        return new BigDecimal(str);
    }

    private static final BigDecimal toBigDecimal(String str, MathContext mathContext) {
        return new BigDecimal(str, mathContext);
    }

    private static final <T> T screenFloatValue$StringsKt__StringNumberConversionsKt(java.lang.String r3, kotlin.jvm.functions.Function1<? super java.lang.String, ? extends T> r4) {
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
        r0 = 0;
        r1 = kotlin.text.ScreenFloatValueRegEx.value;	 Catch:{ NumberFormatException -> 0x0011 }
        r2 = r3;	 Catch:{ NumberFormatException -> 0x0011 }
        r2 = (java.lang.CharSequence) r2;	 Catch:{ NumberFormatException -> 0x0011 }
        r1 = r1.matches(r2);	 Catch:{ NumberFormatException -> 0x0011 }
        if (r1 == 0) goto L_0x0011;	 Catch:{ NumberFormatException -> 0x0011 }
    L_0x000c:
        r3 = r4.invoke(r3);	 Catch:{ NumberFormatException -> 0x0011 }
        r0 = r3;
    L_0x0011:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringNumberConversionsKt.screenFloatValue$StringsKt__StringNumberConversionsKt(java.lang.String, kotlin.jvm.functions.Function1):T");
    }

    public static final java.lang.Float toFloatOrNull(java.lang.String r3) {
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
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = 0;
        r1 = kotlin.text.ScreenFloatValueRegEx.value;	 Catch:{ NumberFormatException -> 0x001a }
        r2 = r3;	 Catch:{ NumberFormatException -> 0x001a }
        r2 = (java.lang.CharSequence) r2;	 Catch:{ NumberFormatException -> 0x001a }
        r1 = r1.matches(r2);	 Catch:{ NumberFormatException -> 0x001a }
        if (r1 == 0) goto L_0x001a;	 Catch:{ NumberFormatException -> 0x001a }
    L_0x0011:
        r3 = java.lang.Float.parseFloat(r3);	 Catch:{ NumberFormatException -> 0x001a }
        r3 = java.lang.Float.valueOf(r3);	 Catch:{ NumberFormatException -> 0x001a }
        r0 = r3;
    L_0x001a:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringNumberConversionsKt.toFloatOrNull(java.lang.String):java.lang.Float");
    }

    public static final java.lang.Double toDoubleOrNull(java.lang.String r3) {
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
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = 0;
        r1 = kotlin.text.ScreenFloatValueRegEx.value;	 Catch:{ NumberFormatException -> 0x001a }
        r2 = r3;	 Catch:{ NumberFormatException -> 0x001a }
        r2 = (java.lang.CharSequence) r2;	 Catch:{ NumberFormatException -> 0x001a }
        r1 = r1.matches(r2);	 Catch:{ NumberFormatException -> 0x001a }
        if (r1 == 0) goto L_0x001a;	 Catch:{ NumberFormatException -> 0x001a }
    L_0x0011:
        r1 = java.lang.Double.parseDouble(r3);	 Catch:{ NumberFormatException -> 0x001a }
        r3 = java.lang.Double.valueOf(r1);	 Catch:{ NumberFormatException -> 0x001a }
        r0 = r3;
    L_0x001a:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringNumberConversionsKt.toDoubleOrNull(java.lang.String):java.lang.Double");
    }

    public static final java.math.BigDecimal toBigDecimalOrNull(java.lang.String r3) {
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
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = 0;
        r1 = kotlin.text.ScreenFloatValueRegEx.value;	 Catch:{ NumberFormatException -> 0x0017 }
        r2 = r3;	 Catch:{ NumberFormatException -> 0x0017 }
        r2 = (java.lang.CharSequence) r2;	 Catch:{ NumberFormatException -> 0x0017 }
        r1 = r1.matches(r2);	 Catch:{ NumberFormatException -> 0x0017 }
        if (r1 == 0) goto L_0x0017;	 Catch:{ NumberFormatException -> 0x0017 }
    L_0x0011:
        r1 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x0017 }
        r1.<init>(r3);	 Catch:{ NumberFormatException -> 0x0017 }
        r0 = r1;
    L_0x0017:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringNumberConversionsKt.toBigDecimalOrNull(java.lang.String):java.math.BigDecimal");
    }

    public static final java.math.BigDecimal toBigDecimalOrNull(java.lang.String r3, java.math.MathContext r4) {
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
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = "mathContext";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0);
        r0 = 0;
        r1 = kotlin.text.ScreenFloatValueRegEx.value;	 Catch:{ NumberFormatException -> 0x001c }
        r2 = r3;	 Catch:{ NumberFormatException -> 0x001c }
        r2 = (java.lang.CharSequence) r2;	 Catch:{ NumberFormatException -> 0x001c }
        r1 = r1.matches(r2);	 Catch:{ NumberFormatException -> 0x001c }
        if (r1 == 0) goto L_0x001c;	 Catch:{ NumberFormatException -> 0x001c }
    L_0x0016:
        r1 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x001c }
        r1.<init>(r3, r4);	 Catch:{ NumberFormatException -> 0x001c }
        r0 = r1;
    L_0x001c:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringNumberConversionsKt.toBigDecimalOrNull(java.lang.String, java.math.MathContext):java.math.BigDecimal");
    }
}
