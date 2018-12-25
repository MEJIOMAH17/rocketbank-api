package kotlin.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.sequences.TransformingSequence;

/* compiled from: Indent.kt */
class StringsKt__IndentKt {
    public static /* synthetic */ String trimMargin$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "|";
        }
        return trimMargin(str, str2);
    }

    public static final String trimMargin(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "marginPrefix");
        return replaceIndentByMargin(str, "", str2);
    }

    public static /* synthetic */ String replaceIndentByMargin$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != null) {
            str2 = "";
        }
        if ((i & 2) != 0) {
            str3 = "|";
        }
        return replaceIndentByMargin(str, str2, str3);
    }

    public static final String replaceIndentByMargin(String str, String str2, String str3) {
        String str4 = str;
        String str5 = str3;
        Intrinsics.checkParameterIsNotNull(str4, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "newIndent");
        Intrinsics.checkParameterIsNotNull(str5, "marginPrefix");
        if ((StringsKt__StringsJVMKt.isBlank(str5) ^ 1) == 0) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
        }
        List<Object> lines = StringsKt__StringsKt.lines(str4);
        int length = str.length() + (str2.length() * lines.size());
        Function1 indentFunction$StringsKt__IndentKt = getIndentFunction$StringsKt__IndentKt(str2);
        int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(lines);
        Collection arrayList = new ArrayList();
        int i = 0;
        for (Object obj : lines) {
            Object obj2;
            int i2 = i + 1;
            Object obj3 = null;
            if ((i == 0 || i == lastIndex) && StringsKt__StringsJVMKt.isBlank((CharSequence) obj2)) {
                obj2 = null;
            } else {
                int i3;
                CharSequence charSequence = (CharSequence) obj2;
                int length2 = charSequence.length();
                for (int i4 = 0; i4 < length2; i4++) {
                    if ((CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(i4)) ^ 1) != 0) {
                        i3 = i4;
                        break;
                    }
                }
                i3 = -1;
                if (i3 != -1) {
                    int i5 = i3;
                    if (StringsKt__StringsJVMKt.startsWith$default(obj2, str5, i3, false, 4, null)) {
                        i3 = i5 + str3.length();
                        if (obj2 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                        }
                        obj3 = obj2.substring(i3);
                        Intrinsics.checkExpressionValueIsNotNull(obj3, "(this as java.lang.String).substring(startIndex)");
                    }
                }
                if (obj3 != null) {
                    str4 = (String) indentFunction$StringsKt__IndentKt.invoke(obj3);
                    if (str4 != null) {
                        obj2 = str4;
                    }
                }
            }
            if (obj2 != null) {
                arrayList.add(obj2);
            }
            i = i2;
        }
        str4 = ((StringBuilder) CollectionsKt___CollectionsKt.joinTo$default$1296cf06$70ef4b96((List) arrayList, new StringBuilder(length), "\n")).toString();
        Intrinsics.checkExpressionValueIsNotNull(str4, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return str4;
    }

    public static final String trimIndent(String str) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        return replaceIndent(str, "");
    }

    public static /* synthetic */ String replaceIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        return replaceIndent(str, str2);
    }

    public static final String replaceIndent(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "newIndent");
        List lines = StringsKt__StringsKt.lines(str);
        Iterable<Object> iterable = lines;
        Collection arrayList = new ArrayList();
        for (Object next : iterable) {
            if ((StringsKt__StringsJVMKt.isBlank((String) next) ^ 1) != 0) {
                arrayList.add(next);
            }
        }
        Iterable<String> iterable2 = (List) arrayList;
        Collection arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable2));
        for (String indentWidth$StringsKt__IndentKt : iterable2) {
            arrayList2.add(Integer.valueOf(indentWidth$StringsKt__IndentKt(indentWidth$StringsKt__IndentKt)));
        }
        Integer num = (Integer) CollectionsKt___CollectionsKt.min((List) arrayList2);
        int i = 0;
        int intValue = num != null ? num.intValue() : 0;
        str = str.length() + (str2.length() * lines.size());
        str2 = getIndentFunction$StringsKt__IndentKt(str2);
        int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(lines);
        Collection arrayList3 = new ArrayList();
        for (Object obj : iterable) {
            Object obj2;
            int i2 = i + 1;
            if ((i == 0 || i == lastIndex) && StringsKt__StringsJVMKt.isBlank((CharSequence) obj2)) {
                obj2 = null;
            } else {
                String drop = StringsKt___StringsKt.drop((String) obj2, intValue);
                if (drop != null) {
                    drop = (String) str2.invoke(drop);
                    if (drop != null) {
                        obj2 = drop;
                    }
                }
            }
            if (obj2 != null) {
                arrayList3.add(obj2);
            }
            i = i2;
        }
        str = ((StringBuilder) CollectionsKt___CollectionsKt.joinTo$default$1296cf06$70ef4b96((List) arrayList3, (Appendable) new StringBuilder(str), "\n")).toString();
        Intrinsics.checkExpressionValueIsNotNull(str, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return str;
    }

    public static /* synthetic */ String prependIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "    ";
        }
        return prependIndent(str, str2);
    }

    public static final String prependIndent(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "indent");
        str = StringsKt__StringsKt.lineSequence(str);
        Function1 stringsKt__IndentKt$prependIndent$1 = new StringsKt__IndentKt$prependIndent$1(str2);
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(stringsKt__IndentKt$prependIndent$1, "transform");
        return SequencesKt___SequencesKt.joinToString$default$5488afc2$3cafef9e((Sequence) new TransformingSequence(str, stringsKt__IndentKt$prependIndent$1), "\n");
    }

    private static final int indentWidth$StringsKt__IndentKt(String str) {
        CharSequence charSequence = str;
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            if ((CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(i)) ^ 1) != 0) {
                break;
            }
            i++;
        }
        i = -1;
        return i == -1 ? str.length() : i;
    }

    private static final Function1<String, String> getIndentFunction$StringsKt__IndentKt(String str) {
        if ((((CharSequence) str).length() == 0 ? 1 : null) != null) {
            return (Function1) StringsKt__IndentKt$getIndentFunction$1.INSTANCE;
        }
        return new StringsKt__IndentKt$getIndentFunction$2(str);
    }

    private static final String reindent$StringsKt__IndentKt(List<String> list, int i, Function1<? super String, String> function1, Function1<? super String, String> function12) {
        int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        Collection arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : list) {
            Object obj2;
            int i3 = i2 + 1;
            if ((i2 == 0 || i2 == lastIndex) && StringsKt__StringsJVMKt.isBlank((CharSequence) obj2)) {
                obj2 = null;
            } else {
                String str = (String) function12.invoke(obj2);
                if (str != null) {
                    str = (String) function1.invoke(str);
                    if (str != null) {
                        obj2 = str;
                    }
                }
            }
            if (obj2 != null) {
                arrayList.add(obj2);
            }
            i2 = i3;
        }
        list = ((StringBuilder) CollectionsKt___CollectionsKt.joinTo$default$1296cf06$70ef4b96((List) arrayList, (Appendable) new StringBuilder(i), "\n")).toString();
        Intrinsics.checkExpressionValueIsNotNull(list, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return list;
    }
}
