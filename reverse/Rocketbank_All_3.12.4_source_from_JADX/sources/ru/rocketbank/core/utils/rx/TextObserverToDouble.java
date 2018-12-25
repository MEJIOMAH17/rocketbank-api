package ru.rocketbank.core.utils.rx;

import com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent;
import rx.functions.Func1;

public class TextObserverToDouble implements Func1<TextViewAfterTextChangeEvent, Double> {
    private static java.lang.Double call(com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent r6) {
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
        r6 = r6.view();
        r6 = (android.widget.TextView) r6;
        r6 = r6.getText();
        r6 = r6.toString();
        r0 = new java.text.DecimalFormatSymbols;	 Catch:{ Throwable -> 0x0069 }
        r0.<init>();	 Catch:{ Throwable -> 0x0069 }
        r1 = r6.isEmpty();	 Catch:{ Throwable -> 0x0069 }
        r2 = 0;	 Catch:{ Throwable -> 0x0069 }
        if (r1 == 0) goto L_0x001c;	 Catch:{ Throwable -> 0x0069 }
    L_0x001b:
        goto L_0x0064;	 Catch:{ Throwable -> 0x0069 }
    L_0x001c:
        r1 = r0.getDecimalSeparator();	 Catch:{ Throwable -> 0x0069 }
        r4 = r0.getGroupingSeparator();	 Catch:{ Throwable -> 0x0069 }
        r0 = r0.getMonetaryDecimalSeparator();	 Catch:{ Throwable -> 0x0069 }
        r5 = 32;	 Catch:{ Throwable -> 0x0069 }
        r6 = r6.replace(r4, r5);	 Catch:{ Throwable -> 0x0069 }
        r4 = 46;	 Catch:{ Throwable -> 0x0069 }
        r6 = r6.replace(r0, r4);	 Catch:{ Throwable -> 0x0069 }
        r6 = r6.replace(r1, r4);	 Catch:{ Throwable -> 0x0069 }
        r0 = "(\\s)";	 Catch:{ Throwable -> 0x0069 }
        r1 = "";	 Catch:{ Throwable -> 0x0069 }
        r6 = r6.replaceAll(r0, r1);	 Catch:{ Throwable -> 0x0069 }
        r0 = r6.length();	 Catch:{ Throwable -> 0x0069 }
        r1 = 1;	 Catch:{ Throwable -> 0x0069 }
        r0 = r0 - r1;	 Catch:{ Throwable -> 0x0069 }
        r0 = r6.charAt(r0);	 Catch:{ Throwable -> 0x0069 }
        r0 = java.lang.Character.isDigit(r0);	 Catch:{ Throwable -> 0x0069 }
        if (r0 != 0) goto L_0x0060;	 Catch:{ Throwable -> 0x0069 }
    L_0x0050:
        r0 = r6.length();	 Catch:{ Throwable -> 0x0069 }
        if (r0 <= r1) goto L_0x0064;	 Catch:{ Throwable -> 0x0069 }
    L_0x0056:
        r0 = 0;	 Catch:{ Throwable -> 0x0069 }
        r2 = r6.length();	 Catch:{ Throwable -> 0x0069 }
        r2 = r2 - r1;	 Catch:{ Throwable -> 0x0069 }
        r6 = r6.substring(r0, r2);	 Catch:{ Throwable -> 0x0069 }
    L_0x0060:
        r2 = java.lang.Double.parseDouble(r6);	 Catch:{ Throwable -> 0x0069 }
    L_0x0064:
        r6 = java.lang.Double.valueOf(r2);	 Catch:{ Throwable -> 0x0069 }
        return r6;
    L_0x0069:
        r6 = "0";
        r6 = java.lang.Double.valueOf(r6);
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.utils.rx.TextObserverToDouble.call(com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent):java.lang.Double");
    }
}
