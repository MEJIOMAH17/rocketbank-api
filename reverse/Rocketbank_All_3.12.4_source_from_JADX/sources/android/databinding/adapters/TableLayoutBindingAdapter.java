package android.databinding.adapters;

import android.databinding.BindingAdapter;
import android.support.annotation.RestrictTo;
import android.widget.TableLayout;
import java.util.regex.Pattern;

@RestrictTo
public class TableLayoutBindingAdapter {
    private static final int MAX_COLUMNS = 20;
    private static Pattern sColumnPattern = Pattern.compile("\\s*,\\s*");

    @BindingAdapter({"android:collapseColumns"})
    public static void setCollapseColumns(TableLayout tableLayout, CharSequence charSequence) {
        charSequence = parseColumns(charSequence);
        for (int i = 0; i < 20; i++) {
            boolean z = charSequence.get(i, false);
            if (z != tableLayout.isColumnCollapsed(i)) {
                tableLayout.setColumnCollapsed(i, z);
            }
        }
    }

    @BindingAdapter({"android:shrinkColumns"})
    public static void setShrinkColumns(TableLayout tableLayout, CharSequence charSequence) {
        int i = 0;
        if (charSequence == null || charSequence.length() <= 0 || charSequence.charAt(0) != '*') {
            tableLayout.setShrinkAllColumns(false);
            charSequence = parseColumns(charSequence);
            int size = charSequence.size();
            while (i < size) {
                int keyAt = charSequence.keyAt(i);
                boolean valueAt = charSequence.valueAt(i);
                if (valueAt) {
                    tableLayout.setColumnShrinkable(keyAt, valueAt);
                }
                i++;
            }
            return;
        }
        tableLayout.setShrinkAllColumns(true);
    }

    @BindingAdapter({"android:stretchColumns"})
    public static void setStretchColumns(TableLayout tableLayout, CharSequence charSequence) {
        int i = 0;
        if (charSequence == null || charSequence.length() <= 0 || charSequence.charAt(0) != '*') {
            tableLayout.setStretchAllColumns(false);
            charSequence = parseColumns(charSequence);
            int size = charSequence.size();
            while (i < size) {
                int keyAt = charSequence.keyAt(i);
                boolean valueAt = charSequence.valueAt(i);
                if (valueAt) {
                    tableLayout.setColumnStretchable(keyAt, valueAt);
                }
                i++;
            }
            return;
        }
        tableLayout.setStretchAllColumns(true);
    }

    private static android.util.SparseBooleanArray parseColumns(java.lang.CharSequence r5) {
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
        r0 = new android.util.SparseBooleanArray;
        r0.<init>();
        if (r5 != 0) goto L_0x0008;
    L_0x0007:
        return r0;
    L_0x0008:
        r1 = sColumnPattern;
        r5 = r1.split(r5);
        r1 = r5.length;
        r2 = 0;
    L_0x0010:
        if (r2 >= r1) goto L_0x0021;
    L_0x0012:
        r3 = r5[r2];
        r3 = java.lang.Integer.parseInt(r3);	 Catch:{ NumberFormatException -> 0x001e }
        if (r3 < 0) goto L_0x001e;	 Catch:{ NumberFormatException -> 0x001e }
    L_0x001a:
        r4 = 1;	 Catch:{ NumberFormatException -> 0x001e }
        r0.put(r3, r4);	 Catch:{ NumberFormatException -> 0x001e }
    L_0x001e:
        r2 = r2 + 1;
        goto L_0x0010;
    L_0x0021:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.databinding.adapters.TableLayoutBindingAdapter.parseColumns(java.lang.CharSequence):android.util.SparseBooleanArray");
    }
}
