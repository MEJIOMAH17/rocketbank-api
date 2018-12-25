package ru.rocketbank.r2d2;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.Color;
import android.media.ExifInterface;
import android.support.v4.app.FragmentManager;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.View;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.io.File;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.widgets.text.ClickableHashTagSpan;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.fragments.AlertDialogFragment;
import ru.rocketbank.r2d2.fragments.AlertDialogFragment.OnPositiveListener;

public class Utils {

    public interface OperationListener {
        void onRequestAccepted(Operation operation);

        void onRequestDeclined(Operation operation);

        void onTagClicked(String str);
    }

    public static String extractNumbers(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isDigit(charAt)) {
                stringBuilder.append(charAt);
            }
        }
        return stringBuilder.toString();
    }

    public static String emodjiByUnicode(int i) {
        return new String(Character.toChars(i));
    }

    public static void closeKeyboardIfExists(android.app.Activity r2) {
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
        r0 = "input_method";	 Catch:{ NullPointerException -> 0x0015 }
        r0 = r2.getSystemService(r0);	 Catch:{ NullPointerException -> 0x0015 }
        r0 = (android.view.inputmethod.InputMethodManager) r0;	 Catch:{ NullPointerException -> 0x0015 }
        r2 = r2.getCurrentFocus();	 Catch:{ NullPointerException -> 0x0015 }
        r2 = r2.getWindowToken();	 Catch:{ NullPointerException -> 0x0015 }
        r1 = 0;	 Catch:{ NullPointerException -> 0x0015 }
        r0.hideSoftInputFromWindow(r2, r1);	 Catch:{ NullPointerException -> 0x0015 }
        return;
    L_0x0015:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.Utils.closeKeyboardIfExists(android.app.Activity):void");
    }

    public static String pluralForm(long j, String str, String str2, String str3) {
        j = Math.abs(j) % 100;
        long j2 = j % 10;
        if (j > 10 && j < 20) {
            return str3;
        }
        if (j2 <= 1 || j2 >= 5) {
            return j2 == 1 ? str : str3;
        } else {
            return str2;
        }
    }

    public static void setActionBarUpIndicatorNavigationDrawer(Activity activity) {
        Log.v("Utils", "Drawer: setActionBarUpIndicatorNavigationDrawer");
        if (activity instanceof MainActivity) {
            ((MainActivity) activity).getActionBarDrawerToggle().setDrawerIndicatorEnabled(true);
        }
    }

    public static void setActionBarUpIndicatorBack(Activity activity) {
        if (activity instanceof MainActivity) {
            Log.v("Utils", "Drawer: setActionBarUpIndicatorNavigationDrawer");
            MainActivity mainActivity = (MainActivity) activity;
            if (mainActivity.getActionBarDrawerToggle() != null) {
                mainActivity.getActionBarDrawerToggle().setDrawerIndicatorEnabled(false);
            }
        }
    }

    public static void showAlert(FragmentManager fragmentManager, String str, OnPositiveListener onPositiveListener) {
        AlertDialogFragment.create(str).setOnPositiveListener(onPositiveListener).show(fragmentManager, "dialog");
    }

    public static int dpToPx(Context context, int i) {
        return (int) (((double) (((float) i) * context.getResources().getDisplayMetrics().density)) + 0.5d);
    }

    public static int pxToDp(Context context, int i) {
        return (int) (((double) (((float) i) / context.getResources().getDisplayMetrics().density)) + 0.5d);
    }

    public static SpannableString replaceHashWithUrls(String str, final OperationListener operationListener) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        Matcher matcher = Pattern.compile("#(\\w+)?").matcher(str);
        SpannableString spannableString = new SpannableString(str);
        str = Color.parseColor("#2196f3");
        while (matcher.find()) {
            final String group = matcher.group();
            if (group != null && group.length() > 1) {
                Object c13461;
                if (operationListener != null) {
                    c13461 = new ClickableHashTagSpan(str) {
                        public final void onClick(View view) {
                            operationListener.onTagClicked(group.substring(1, group.length()));
                        }
                    };
                } else {
                    c13461 = new ForegroundColorSpan(str);
                }
                spannableString.setSpan(c13461, matcher.start(), matcher.end(), 18);
            }
        }
        return spannableString;
    }

    public static void openUrl(android.content.Context r2, java.lang.String r3) {
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
        if (r3 == 0) goto L_0x0023;
    L_0x0002:
        r0 = r3.isEmpty();	 Catch:{ ActivityNotFoundException -> 0x0017 }
        if (r0 != 0) goto L_0x0023;	 Catch:{ ActivityNotFoundException -> 0x0017 }
    L_0x0008:
        r0 = new android.content.Intent;	 Catch:{ ActivityNotFoundException -> 0x0017 }
        r1 = "android.intent.action.VIEW";	 Catch:{ ActivityNotFoundException -> 0x0017 }
        r3 = android.net.Uri.parse(r3);	 Catch:{ ActivityNotFoundException -> 0x0017 }
        r0.<init>(r1, r3);	 Catch:{ ActivityNotFoundException -> 0x0017 }
        r2.startActivity(r0);	 Catch:{ ActivityNotFoundException -> 0x0017 }
        goto L_0x0023;
    L_0x0017:
        r3 = "Приложения не найдены";
        r0 = 0;
        r2 = android.widget.Toast.makeText(r2, r3, r0);
        r2.show();
        return;
    L_0x0023:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.Utils.openUrl(android.content.Context, java.lang.String):void");
    }

    public static void openAddress(android.content.Context r3, java.lang.String r4) {
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
        r0 = new android.content.Intent;	 Catch:{ ActivityNotFoundException -> 0x0019 }
        r1 = "android.intent.action.VIEW";	 Catch:{ ActivityNotFoundException -> 0x0019 }
        r2 = "geo:";	 Catch:{ ActivityNotFoundException -> 0x0019 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ ActivityNotFoundException -> 0x0019 }
        r4 = r2.concat(r4);	 Catch:{ ActivityNotFoundException -> 0x0019 }
        r4 = android.net.Uri.parse(r4);	 Catch:{ ActivityNotFoundException -> 0x0019 }
        r0.<init>(r1, r4);	 Catch:{ ActivityNotFoundException -> 0x0019 }
        r3.startActivity(r0);	 Catch:{ ActivityNotFoundException -> 0x0019 }
        return;
    L_0x0019:
        r4 = "Приложения не найдены";
        r0 = 0;
        r3 = android.widget.Toast.makeText(r3, r4, r0);
        r3.show();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.Utils.openAddress(android.content.Context, java.lang.String):void");
    }

    public static void copyTextToClipboard(Context context, String str, String str2) {
        ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(str, str2));
    }

    public static double distanceBetweenMapPoints(double d, double d2, double d3, double d4) {
        double toRadians = Math.toRadians(d3 - d);
        d2 = Math.toRadians(d4 - d2);
        toRadians = Math.pow(Math.sin(toRadians / 2.0d), 2.0d) + ((Math.pow(Math.sin(d2 / 2.0d), 2.0d) * Math.cos(Math.toRadians(d))) * Math.cos(Math.toRadians(d3)));
        return (2.0d * Math.atan2(Math.sqrt(toRadians), Math.sqrt(1.0d - toRadians))) * 6370.99056d;
    }

    public static void shareText(Context context, String str, String str2, String str3) {
        context.startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.SUBJECT", str2).putExtra("android.intent.extra.TEXT", str3), str));
    }

    public static int calculateInSampleSize(Options options, int i, int i2) {
        int i3 = options.outHeight;
        options = options.outWidth;
        int i4 = 1;
        if (i3 > i2 || options > i) {
            i3 /= 2;
            options /= 2;
            while (i3 / i4 > i2 && options / i4 > i) {
                i4 <<= 1;
            }
        }
        return i4;
    }

    public static Bitmap shrinkToSize(Bitmap bitmap, int i) {
        if (bitmap.getWidth() > bitmap.getHeight() && bitmap.getWidth() > i) {
            bitmap = Bitmap.createScaledBitmap(bitmap, i, (int) (((float) bitmap.getHeight()) * (((float) i) / ((float) bitmap.getWidth()))), true);
        }
        if (bitmap.getHeight() <= bitmap.getWidth() || bitmap.getHeight() <= i) {
            return bitmap;
        }
        return Bitmap.createScaledBitmap(bitmap, (int) (((float) bitmap.getWidth()) * (((float) i) / ((float) bitmap.getHeight()))), i, true);
    }

    public static int getImageOrientation(String str) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        try {
            str = new ExifInterface(new File(str).getAbsolutePath()).getAttributeInt("Orientation", 1);
            if (str == 3) {
                i = SubsamplingScaleImageView.ORIENTATION_180;
            } else if (str == 6) {
                i = 90;
            } else if (str == 8) {
                i = SubsamplingScaleImageView.ORIENTATION_270;
            }
        } catch (String str2) {
            Log.e("ExifInterface", "ExifInterface ", str2);
        }
        return i;
    }

    public static String join(Iterable<?> iterable, String str) {
        return iterable == null ? null : join(iterable.iterator(), str);
    }

    public static String join(Iterator<?> it, String str) {
        if (it == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return toString(next);
        }
        StringBuilder stringBuilder = new StringBuilder(256);
        if (next != null) {
            stringBuilder.append(next);
        }
        while (it.hasNext()) {
            if (str != null) {
                stringBuilder.append(str);
            }
            next = it.next();
            if (next != null) {
                stringBuilder.append(next);
            }
        }
        return stringBuilder.toString();
    }

    public static String toString(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static boolean isNotEmpty(CharSequence charSequence) {
        return isEmpty(charSequence) == null ? true : null;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        if (charSequence != null) {
            if (charSequence.length() != null) {
                return null;
            }
        }
        return true;
    }

    public static boolean isBlank(CharSequence charSequence) {
        if (charSequence != null) {
            int length = charSequence.length();
            if (length != 0) {
                for (int i = 0; i < length; i++) {
                    if (!Character.isWhitespace(charSequence.charAt(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return true;
    }

    public static boolean isNotBlank(CharSequence charSequence) {
        return isBlank(charSequence) == null ? true : null;
    }
}
