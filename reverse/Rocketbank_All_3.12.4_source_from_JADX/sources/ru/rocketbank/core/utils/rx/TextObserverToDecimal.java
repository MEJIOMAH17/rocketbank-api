package ru.rocketbank.core.utils.rx;

import com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent;
import java.math.BigDecimal;
import rx.functions.Func1;

public class TextObserverToDecimal implements Func1<TextViewAfterTextChangeEvent, BigDecimal> {
    private static java.math.BigDecimal call(com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent r0) {
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
        r0 = r0.view();
        r0 = (android.widget.TextView) r0;
        r0 = r0.getText();
        r0 = r0.toString();
        r0 = convertTextToBigDecimal(r0);	 Catch:{ Throwable -> 0x0013 }
        return r0;
    L_0x0013:
        r0 = java.math.BigDecimal.ZERO;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.utils.rx.TextObserverToDecimal.call(com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent):java.math.BigDecimal");
    }

    public static java.math.BigDecimal convertTextToBigDecimal(java.lang.String r4) {
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
        r0 = new java.text.DecimalFormatSymbols;
        r0.<init>();
        r1 = r4.isEmpty();
        if (r1 == 0) goto L_0x000e;
    L_0x000b:
        r4 = java.math.BigDecimal.ZERO;
        return r4;
    L_0x000e:
        r1 = r0.getDecimalSeparator();
        r0 = r0.getMonetaryDecimalSeparator();
        r2 = " ,";
        r3 = ".";
        r4 = r4.replace(r2, r3);
        r2 = 46;
        r4 = r4.replace(r0, r2);
        r4 = r4.replace(r1, r2);
        r0 = 44;
        r4 = r4.replace(r0, r2);
        r0 = "(\\s)";
        r1 = "";
        r4 = r4.replaceAll(r0, r1);
        r0 = r4.length();
        r1 = 1;
        r0 = r0 - r1;
        r0 = r4.charAt(r0);
        r0 = java.lang.Character.isDigit(r0);
        if (r0 != 0) goto L_0x005a;
    L_0x0046:
        r0 = r4.length();
        if (r0 <= r1) goto L_0x0057;
    L_0x004c:
        r0 = 0;
        r2 = r4.length();
        r2 = r2 - r1;
        r4 = r4.substring(r0, r2);
        goto L_0x005a;
    L_0x0057:
        r4 = java.math.BigDecimal.ZERO;
        return r4;
    L_0x005a:
        r0 = new java.math.BigDecimal;	 Catch:{ Throwable -> 0x0064 }
        r1 = java.lang.Double.parseDouble(r4);	 Catch:{ Throwable -> 0x0064 }
        r0.<init>(r1);	 Catch:{ Throwable -> 0x0064 }
        return r0;
    L_0x0064:
        r4 = java.math.BigDecimal.ZERO;
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.utils.rx.TextObserverToDecimal.convertTextToBigDecimal(java.lang.String):java.math.BigDecimal");
    }
}
