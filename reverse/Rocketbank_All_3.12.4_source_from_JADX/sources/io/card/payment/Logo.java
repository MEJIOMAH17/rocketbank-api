package io.card.payment;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

final class Logo {
    private final Context mContext;
    private Bitmap mLogo;
    private final Paint mPaint = new Paint();
    private boolean mUseCardIOLogo;

    public Logo(Context context) {
        this.mPaint.setAntiAlias(true);
        this.mPaint.setAlpha(100);
        this.mLogo = null;
        this.mContext = context;
    }

    final void loadLogo(boolean z) {
        if (this.mLogo == null || z != this.mUseCardIOLogo) {
            this.mUseCardIOLogo = z;
            if (z) {
                this.mLogo = BitmapFactory.decodeResource(this.mContext.getResources(), C0738R.drawable.cio_card_io_logo);
            } else {
                this.mLogo = BitmapFactory.decodeResource(this.mContext.getResources(), C0738R.drawable.cio_paypal_logo);
            }
        }
    }

    public final void draw(Canvas canvas, float f, float f2) {
        if (this.mLogo == null) {
            loadLogo(false);
        }
        canvas.save();
        float height = ((float) this.mLogo.getHeight()) / ((float) this.mLogo.getWidth());
        if (f2 / f < height) {
            f = f2 / height;
        } else {
            f2 = f * height;
        }
        f /= 2.0f;
        f2 /= 2.0f;
        canvas.drawBitmap(this.mLogo, new Rect(0, 0, this.mLogo.getWidth(), this.mLogo.getHeight()), new RectF(-f, -f2, f, f2), this.mPaint);
        canvas.restore();
    }

    public static String formatString(String str, boolean z, CardType cardType) {
        z = z ? getDigitsOnlyString(str) : str;
        if (cardType == null) {
            cardType = CardType.fromCardNumber(z);
        }
        cardType = cardType.numberLength();
        if (z.length() == cardType) {
            if (cardType == 16) {
                str = new StringBuilder();
                cardType = null;
                while (cardType < 16) {
                    if (cardType != null && cardType % 4 == 0) {
                        str.append(' ');
                    }
                    str.append(z.charAt(cardType));
                    cardType++;
                }
                return str.toString();
            } else if (cardType == 15) {
                return formatFifteenString(z);
            }
        }
        return str;
    }

    private static String formatFifteenString(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < 15) {
            if (i == 4 || i == 10) {
                stringBuilder.append(' ');
            }
            stringBuilder.append(str.charAt(i));
            i++;
        }
        return stringBuilder.toString();
    }

    public static java.util.Date getDateForString(java.lang.String r3) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = getDigitsOnlyString(r3);
        r0 = r3.length();
        r1 = 0;
        r2 = 4;
        if (r0 != r2) goto L_0x0014;
    L_0x000c:
        r0 = new java.text.SimpleDateFormat;
        r2 = "MMyy";
        r0.<init>(r2);
        goto L_0x0020;
    L_0x0014:
        r2 = 6;
        if (r0 != r2) goto L_0x001f;
    L_0x0017:
        r0 = new java.text.SimpleDateFormat;
        r2 = "MMyyyy";
        r0.<init>(r2);
        goto L_0x0020;
    L_0x001f:
        r0 = r1;
    L_0x0020:
        if (r0 == 0) goto L_0x002c;
    L_0x0022:
        r2 = 0;
        r0.setLenient(r2);	 Catch:{ ParseException -> 0x002b }
        r3 = r0.parse(r3);	 Catch:{ ParseException -> 0x002b }
        return r3;
    L_0x002b:
        return r1;
    L_0x002c:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.card.payment.Logo.getDateForString(java.lang.String):java.util.Date");
    }

    public static String getDigitsOnlyString(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (char c : str.toCharArray()) {
            if (Character.isDigit(c)) {
                stringBuilder.append(c);
            }
        }
        return stringBuilder.toString();
    }
}
