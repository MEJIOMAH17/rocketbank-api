package com.mikepenz.materialdrawer.icons;

import android.graphics.Typeface;
import com.mikepenz.iconics.typeface.IIcon;
import com.mikepenz.iconics.typeface.ITypeface;

public final class MaterialDrawerFont implements ITypeface {
    private static Typeface typeface;

    public enum Icon implements IIcon {
        mdf_person(''),
        mdf_arrow_drop_up(''),
        mdf_arrow_drop_down('');
        
        private static ITypeface typeface;
        char character;

        private Icon(char c) {
            this.character = c;
        }

        public final String getFormattedName() {
            StringBuilder stringBuilder = new StringBuilder("{");
            stringBuilder.append(name());
            stringBuilder.append("}");
            return stringBuilder.toString();
        }

        public final char getCharacter() {
            return this.character;
        }

        public final String getName() {
            return name();
        }

        public final ITypeface getTypeface() {
            if (typeface == null) {
                typeface = new MaterialDrawerFont();
            }
            return typeface;
        }
    }

    public final String getMappingPrefix() {
        return "mdf";
    }

    public final IIcon getIcon(String str) {
        return Icon.valueOf(str);
    }

    public final android.graphics.Typeface getTypeface(android.content.Context r2) {
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
        r1 = this;
        r0 = typeface;
        if (r0 != 0) goto L_0x0013;
    L_0x0004:
        r2 = r2.getAssets();	 Catch:{ Exception -> 0x0011 }
        r0 = "fonts/materialdrawerfont.ttf";	 Catch:{ Exception -> 0x0011 }
        r2 = android.graphics.Typeface.createFromAsset(r2, r0);	 Catch:{ Exception -> 0x0011 }
        typeface = r2;	 Catch:{ Exception -> 0x0011 }
        goto L_0x0013;
    L_0x0011:
        r2 = 0;
        return r2;
    L_0x0013:
        r2 = typeface;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.materialdrawer.icons.MaterialDrawerFont.getTypeface(android.content.Context):android.graphics.Typeface");
    }
}
