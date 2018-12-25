package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.C0537R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzak;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class SignInButton extends FrameLayout implements OnClickListener {
    public static final int COLOR_AUTO = 2;
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private int mColor;
    private int mSize;
    private View zzayF;
    private OnClickListener zzayG;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ColorScheme {
    }

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzayG = null;
        zzb(context, attributeSet);
        setStyle(this.mSize, this.mColor);
    }

    private void zzaO(android.content.Context r3) {
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
        r2 = this;
        r0 = r2.zzayF;
        if (r0 == 0) goto L_0x0009;
    L_0x0004:
        r0 = r2.zzayF;
        r2.removeView(r0);
    L_0x0009:
        r0 = r2.mSize;	 Catch:{ zza -> 0x0014 }
        r1 = r2.mColor;	 Catch:{ zza -> 0x0014 }
        r0 = com.google.android.gms.common.internal.zzaj.zzd(r3, r0, r1);	 Catch:{ zza -> 0x0014 }
        r2.zzayF = r0;	 Catch:{ zza -> 0x0014 }
        goto L_0x0025;
    L_0x0014:
        r0 = "SignInButton";
        r1 = "Sign in button not found, using placeholder instead";
        android.util.Log.w(r0, r1);
        r0 = r2.mSize;
        r1 = r2.mColor;
        r3 = zzc(r3, r0, r1);
        r2.zzayF = r3;
    L_0x0025:
        r3 = r2.zzayF;
        r2.addView(r3);
        r3 = r2.zzayF;
        r0 = r2.isEnabled();
        r3.setEnabled(r0);
        r3 = r2.zzayF;
        r3.setOnClickListener(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.SignInButton.zzaO(android.content.Context):void");
    }

    private void zzb(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C0537R.styleable.SignInButton, 0, 0);
        try {
            this.mSize = obtainStyledAttributes.getInt(C0537R.styleable.SignInButton_buttonSize, 0);
            this.mColor = obtainStyledAttributes.getInt(C0537R.styleable.SignInButton_colorScheme, 2);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private static Button zzc(Context context, int i, int i2) {
        Button zzak = new zzak(context);
        zzak.zza(context.getResources(), i, i2);
        return zzak;
    }

    public final void onClick(View view) {
        if (this.zzayG != null && view == this.zzayF) {
            this.zzayG.onClick(this);
        }
    }

    public final void setColorScheme(int i) {
        setStyle(this.mSize, i);
    }

    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.zzayF.setEnabled(z);
    }

    public final void setOnClickListener(OnClickListener onClickListener) {
        this.zzayG = onClickListener;
        if (this.zzayF != null) {
            this.zzayF.setOnClickListener(this);
        }
    }

    @Deprecated
    public final void setScopes(Scope[] scopeArr) {
        setStyle(this.mSize, this.mColor);
    }

    public final void setSize(int i) {
        setStyle(i, this.mColor);
    }

    public final void setStyle(int i, int i2) {
        this.mSize = i;
        this.mColor = i2;
        zzaO(getContext());
    }

    @Deprecated
    public final void setStyle(int i, int i2, Scope[] scopeArr) {
        setStyle(i, i2);
    }
}
