package com.mikepenz.iconics;

import android.arch.lifecycle.MethodCallsLogger;
import android.content.Context;
import android.support.v7.appcompat.C0219R.dimen;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.CharacterStyle;
import com.mikepenz.iconics.typeface.ITypeface;
import com.mikepenz.iconics.utils.IconicsTypefaceSpan;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public final class Iconics {
    private static HashMap<String, ITypeface> FONTS = new HashMap();
    private static boolean INIT_DONE = false;
    public static final String TAG = "Iconics";

    public static class IconicsBuilder {
        private Context ctx;
        private List<ITypeface> fonts = new LinkedList();
        private List<CharacterStyle> styles = new LinkedList();
        private HashMap<String, List<CharacterStyle>> stylesFor = new HashMap();

        public final IconicsBuilder ctx(Context context) {
            this.ctx = context;
            return this;
        }

        public final IconicsBuilderString on(CharSequence charSequence) {
            return new IconicsBuilderString(this.ctx, this.fonts, new SpannableString(charSequence.toString()), this.styles, this.stylesFor);
        }
    }

    public static class IconicsBuilderString {
        private Context ctx;
        private List<ITypeface> fonts;
        private Spanned text;
        private List<CharacterStyle> withStyles;
        private HashMap<String, List<CharacterStyle>> withStylesFor;

        public IconicsBuilderString(Context context, List<ITypeface> list, Spanned spanned, List<CharacterStyle> list2, HashMap<String, List<CharacterStyle>> hashMap) {
            this.ctx = context;
            this.fonts = list;
            this.text = spanned;
            this.withStyles = list2;
            this.withStylesFor = hashMap;
        }

        public final Spanned build() {
            HashMap hashMap = new HashMap();
            for (ITypeface iTypeface : this.fonts) {
                hashMap.put(iTypeface.getMappingPrefix(), iTypeface);
            }
            return Iconics.style(this.ctx, hashMap, this.text, this.withStyles, this.withStylesFor);
        }
    }

    private Iconics() {
    }

    public static Spanned style(Context context, HashMap<String, ITypeface> hashMap, Spanned spanned, List<CharacterStyle> list, HashMap<String, List<CharacterStyle>> hashMap2) {
        hashMap = MethodCallsLogger.findIcons$1da7ef4d(spanned, init(context, hashMap));
        spanned = SpannableString.valueOf(hashMap.spannableStringBuilder);
        hashMap = hashMap.styleContainers.iterator();
        while (hashMap.hasNext()) {
            dimen dimen = (dimen) hashMap.next();
            if (dimen.styleSpan != null) {
                spanned.setSpan(dimen.styleSpan, dimen.startIndex, dimen.endIndex, 33);
            } else {
                spanned.setSpan(new IconicsTypefaceSpan("sans-serif", dimen.font.getTypeface(context)), dimen.startIndex, dimen.endIndex, 33);
            }
            if (hashMap2 != null && hashMap2.containsKey(dimen.icon)) {
                for (CharacterStyle wrap : (List) hashMap2.get(dimen.icon)) {
                    spanned.setSpan(CharacterStyle.wrap(wrap), dimen.startIndex, dimen.endIndex, 33);
                }
            } else if (list != null) {
                for (CharacterStyle wrap2 : list) {
                    spanned.setSpan(CharacterStyle.wrap(wrap2), dimen.startIndex, dimen.endIndex, 33);
                }
            }
        }
        return spanned;
    }

    private static java.util.HashMap<java.lang.String, com.mikepenz.iconics.typeface.ITypeface> init(android.content.Context r6, java.util.HashMap<java.lang.String, com.mikepenz.iconics.typeface.ITypeface> r7) {
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
        r0 = INIT_DONE;
        if (r0 != 0) goto L_0x0037;
    L_0x0004:
        r6 = android.arch.lifecycle.MethodCallsLogger.getFields(r6);
        r0 = r6.length;
        r1 = 0;
    L_0x000a:
        if (r1 >= r0) goto L_0x0034;
    L_0x000c:
        r2 = r6[r1];
        r3 = java.lang.Class.forName(r2);	 Catch:{ Exception -> 0x0022 }
        r3 = r3.newInstance();	 Catch:{ Exception -> 0x0022 }
        r3 = (com.mikepenz.iconics.typeface.ITypeface) r3;	 Catch:{ Exception -> 0x0022 }
        r4 = FONTS;	 Catch:{ Exception -> 0x0022 }
        r5 = r3.getMappingPrefix();	 Catch:{ Exception -> 0x0022 }
        r4.put(r5, r3);	 Catch:{ Exception -> 0x0022 }
        goto L_0x0031;
    L_0x0022:
        r3 = "Android-Iconics";
        r4 = "Can't init: ";
        r2 = java.lang.String.valueOf(r2);
        r2 = r4.concat(r2);
        android.util.Log.e(r3, r2);
    L_0x0031:
        r1 = r1 + 1;
        goto L_0x000a;
    L_0x0034:
        r6 = 1;
        INIT_DONE = r6;
    L_0x0037:
        if (r7 == 0) goto L_0x003f;
    L_0x0039:
        r6 = r7.size();
        if (r6 != 0) goto L_0x0041;
    L_0x003f:
        r7 = FONTS;
    L_0x0041:
        return r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.iconics.Iconics.init(android.content.Context, java.util.HashMap):java.util.HashMap<java.lang.String, com.mikepenz.iconics.typeface.ITypeface>");
    }
}
