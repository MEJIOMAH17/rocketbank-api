package android.support.v7.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.C0219R;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.widget.AppCompatAutoCompleteTextView;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.AppCompatCheckedTextView;
import android.support.v7.widget.AppCompatEditText;
import android.support.v7.widget.AppCompatImageButton;
import android.support.v7.widget.AppCompatImageView;
import android.support.v7.widget.AppCompatMultiAutoCompleteTextView;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.AppCompatRatingBar;
import android.support.v7.widget.AppCompatSeekBar;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.TintContextWrapper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Map;

public class AppCompatViewInflater {
    private static final String[] sClassPrefixList = new String[]{"android.widget.", "android.view.", "android.webkit."};
    private static final Map<String, Constructor<? extends View>> sConstructorMap = new ArrayMap();
    private static final Class<?>[] sConstructorSignature = new Class[]{Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = new int[]{16843375};
    private final Object[] mConstructorArgs = new Object[2];

    static class DeclaredOnClickListener implements OnClickListener {
        private final View mHostView;
        private final String mMethodName;
        private Context mResolvedContext;
        private Method mResolvedMethod;

        public DeclaredOnClickListener(View view, String str) {
            this.mHostView = view;
            this.mMethodName = str;
        }

        public final void onClick(android.view.View r8) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r7 = this;
            r0 = r7.mResolvedMethod;
            r1 = 0;
            r2 = 1;
            if (r0 != 0) goto L_0x008c;
        L_0x0006:
            r0 = r7.mHostView;
            r0 = r0.getContext();
        L_0x000c:
            if (r0 == 0) goto L_0x0038;
        L_0x000e:
            r3 = r0.isRestricted();	 Catch:{ NoSuchMethodException -> 0x002b }
            if (r3 != 0) goto L_0x002b;	 Catch:{ NoSuchMethodException -> 0x002b }
        L_0x0014:
            r3 = r0.getClass();	 Catch:{ NoSuchMethodException -> 0x002b }
            r4 = r7.mMethodName;	 Catch:{ NoSuchMethodException -> 0x002b }
            r5 = new java.lang.Class[r2];	 Catch:{ NoSuchMethodException -> 0x002b }
            r6 = android.view.View.class;	 Catch:{ NoSuchMethodException -> 0x002b }
            r5[r1] = r6;	 Catch:{ NoSuchMethodException -> 0x002b }
            r3 = r3.getMethod(r4, r5);	 Catch:{ NoSuchMethodException -> 0x002b }
            if (r3 == 0) goto L_0x002b;	 Catch:{ NoSuchMethodException -> 0x002b }
        L_0x0026:
            r7.mResolvedMethod = r3;	 Catch:{ NoSuchMethodException -> 0x002b }
            r7.mResolvedContext = r0;	 Catch:{ NoSuchMethodException -> 0x002b }
            goto L_0x008c;
        L_0x002b:
            r3 = r0 instanceof android.content.ContextWrapper;
            if (r3 == 0) goto L_0x0036;
        L_0x002f:
            r0 = (android.content.ContextWrapper) r0;
            r0 = r0.getBaseContext();
            goto L_0x000c;
        L_0x0036:
            r0 = 0;
            goto L_0x000c;
        L_0x0038:
            r8 = r7.mHostView;
            r8 = r8.getId();
            r0 = -1;
            if (r8 != r0) goto L_0x0044;
        L_0x0041:
            r8 = "";
            goto L_0x0065;
        L_0x0044:
            r0 = new java.lang.StringBuilder;
            r1 = " with id '";
            r0.<init>(r1);
            r1 = r7.mHostView;
            r1 = r1.getContext();
            r1 = r1.getResources();
            r8 = r1.getResourceEntryName(r8);
            r0.append(r8);
            r8 = "'";
            r0.append(r8);
            r8 = r0.toString();
        L_0x0065:
            r0 = new java.lang.IllegalStateException;
            r1 = new java.lang.StringBuilder;
            r2 = "Could not find method ";
            r1.<init>(r2);
            r2 = r7.mMethodName;
            r1.append(r2);
            r2 = "(View) in a parent or ancestor Context for android:onClick attribute defined on view ";
            r1.append(r2);
            r2 = r7.mHostView;
            r2 = r2.getClass();
            r1.append(r2);
            r1.append(r8);
            r8 = r1.toString();
            r0.<init>(r8);
            throw r0;
        L_0x008c:
            r0 = r7.mResolvedMethod;	 Catch:{ IllegalAccessException -> 0x00a1, InvocationTargetException -> 0x0098 }
            r3 = r7.mResolvedContext;	 Catch:{ IllegalAccessException -> 0x00a1, InvocationTargetException -> 0x0098 }
            r2 = new java.lang.Object[r2];	 Catch:{ IllegalAccessException -> 0x00a1, InvocationTargetException -> 0x0098 }
            r2[r1] = r8;	 Catch:{ IllegalAccessException -> 0x00a1, InvocationTargetException -> 0x0098 }
            r0.invoke(r3, r2);	 Catch:{ IllegalAccessException -> 0x00a1, InvocationTargetException -> 0x0098 }
            return;
        L_0x0098:
            r8 = move-exception;
            r0 = new java.lang.IllegalStateException;
            r1 = "Could not execute method for android:onClick";
            r0.<init>(r1, r8);
            throw r0;
        L_0x00a1:
            r8 = move-exception;
            r0 = new java.lang.IllegalStateException;
            r1 = "Could not execute non-public method for android:onClick";
            r0.<init>(r1, r8);
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatViewInflater.DeclaredOnClickListener.onClick(android.view.View):void");
        }
    }

    final View createView$14a0a30f(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3) {
        Context context2;
        if (!z || view == null) {
            context2 = context;
        } else {
            context2 = view.getContext();
        }
        z = context2.obtainStyledAttributes(attributeSet, C0219R.styleable.View, 0, 0);
        int resourceId = z2 ? z.getResourceId(C0219R.styleable.View_android_theme, 0) : false;
        if (!resourceId != false) {
            resourceId = z.getResourceId(C0219R.styleable.View_theme, 0);
            if (resourceId == true) {
                Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
            }
        }
        z.recycle();
        if (resourceId == true && !((context2 instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context2).getThemeResId() == resourceId)) {
            context2 = new ContextThemeWrapper(context2, resourceId);
        }
        if (z3) {
            context2 = TintContextWrapper.wrap(context2);
        }
        z = true;
        switch (str.hashCode()) {
            case true:
                if (str.equals("RatingBar")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("CheckedTextView")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("MultiAutoCompleteTextView")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("TextView")) {
                    z = false;
                    break;
                }
                break;
            case true:
                if (str.equals("ImageButton")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("SeekBar")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("Spinner")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("RadioButton")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("ImageView")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("AutoCompleteTextView")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("CheckBox")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("EditText")) {
                    z = true;
                    break;
                }
                break;
            case true:
                if (str.equals("Button")) {
                    z = true;
                    break;
                }
                break;
            default:
                break;
        }
        switch (z) {
            case false:
                z = new AppCompatTextView(context2, attributeSet);
                break;
            case true:
                z = new AppCompatImageView(context2, attributeSet);
                break;
            case true:
                z = new AppCompatButton(context2, attributeSet);
                break;
            case true:
                z = new AppCompatEditText(context2, attributeSet);
                break;
            case true:
                z = new AppCompatSpinner(context2, attributeSet);
                break;
            case true:
                z = new AppCompatImageButton(context2, attributeSet);
                break;
            case true:
                z = new AppCompatCheckBox(context2, attributeSet);
                break;
            case true:
                z = new AppCompatRadioButton(context2, attributeSet);
                break;
            case true:
                z = new AppCompatCheckedTextView(context2, attributeSet);
                break;
            case true:
                z = new AppCompatAutoCompleteTextView(context2, attributeSet);
                break;
            case true:
                z = new AppCompatMultiAutoCompleteTextView(context2, attributeSet);
                break;
            case true:
                z = new AppCompatRatingBar(context2, attributeSet);
                break;
            case true:
                z = new AppCompatSeekBar(context2, attributeSet);
                break;
            default:
                z = false;
                break;
        }
        if (!(z || context == context2)) {
            z = createViewFromTag(context2, str, attributeSet);
        }
        if (z) {
            view = z.getContext();
            if ((view instanceof ContextWrapper) != null) {
                if (VERSION.SDK_INT < 15 || ViewCompat.hasOnClickListeners(z) != null) {
                    view = view.obtainStyledAttributes(attributeSet, sOnClickAttrs);
                    str = view.getString(0);
                    if (str != null) {
                        z.setOnClickListener(new DeclaredOnClickListener(z, str));
                    }
                    view.recycle();
                }
            }
        }
        return z;
    }

    private android.view.View createViewFromTag(android.content.Context r5, java.lang.String r6, android.util.AttributeSet r7) {
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
        r4 = this;
        r0 = "view";
        r0 = r6.equals(r0);
        r1 = 0;
        if (r0 == 0) goto L_0x000f;
    L_0x0009:
        r6 = "class";
        r6 = r7.getAttributeValue(r1, r6);
    L_0x000f:
        r0 = 1;
        r2 = 0;
        r3 = r4.mConstructorArgs;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        r3[r2] = r5;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        r3 = r4.mConstructorArgs;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        r3[r0] = r7;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        r7 = -1;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        r3 = 46;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        r3 = r6.indexOf(r3);	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        if (r7 != r3) goto L_0x0045;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
    L_0x0022:
        r7 = r2;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
    L_0x0023:
        r3 = 3;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        if (r7 >= r3) goto L_0x003c;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
    L_0x0026:
        r3 = sClassPrefixList;	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        r3 = r3[r7];	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        r3 = r4.createViewByPrefix(r5, r6, r3);	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        if (r3 == 0) goto L_0x0039;
    L_0x0030:
        r5 = r4.mConstructorArgs;
        r5[r2] = r1;
        r5 = r4.mConstructorArgs;
        r5[r0] = r1;
        return r3;
    L_0x0039:
        r7 = r7 + 1;
        goto L_0x0023;
    L_0x003c:
        r5 = r4.mConstructorArgs;
        r5[r2] = r1;
        r5 = r4.mConstructorArgs;
        r5[r0] = r1;
        return r1;
    L_0x0045:
        r5 = r4.createViewByPrefix(r5, r6, r1);	 Catch:{ Exception -> 0x005c, all -> 0x0052 }
        r6 = r4.mConstructorArgs;
        r6[r2] = r1;
        r6 = r4.mConstructorArgs;
        r6[r0] = r1;
        return r5;
    L_0x0052:
        r5 = move-exception;
        r6 = r4.mConstructorArgs;
        r6[r2] = r1;
        r6 = r4.mConstructorArgs;
        r6[r0] = r1;
        throw r5;
    L_0x005c:
        r5 = r4.mConstructorArgs;
        r5[r2] = r1;
        r5 = r4.mConstructorArgs;
        r5[r0] = r1;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatViewInflater.createViewFromTag(android.content.Context, java.lang.String, android.util.AttributeSet):android.view.View");
    }

    private android.view.View createViewByPrefix(android.content.Context r2, java.lang.String r3, java.lang.String r4) throws java.lang.ClassNotFoundException, android.view.InflateException {
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
        r0 = sConstructorMap;
        r0 = r0.get(r3);
        r0 = (java.lang.reflect.Constructor) r0;
        if (r0 != 0) goto L_0x0036;
    L_0x000a:
        r2 = r2.getClassLoader();	 Catch:{ Exception -> 0x0043 }
        if (r4 == 0) goto L_0x0020;	 Catch:{ Exception -> 0x0043 }
    L_0x0010:
        r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0043 }
        r0.<init>();	 Catch:{ Exception -> 0x0043 }
        r0.append(r4);	 Catch:{ Exception -> 0x0043 }
        r0.append(r3);	 Catch:{ Exception -> 0x0043 }
        r4 = r0.toString();	 Catch:{ Exception -> 0x0043 }
        goto L_0x0021;	 Catch:{ Exception -> 0x0043 }
    L_0x0020:
        r4 = r3;	 Catch:{ Exception -> 0x0043 }
    L_0x0021:
        r2 = r2.loadClass(r4);	 Catch:{ Exception -> 0x0043 }
        r4 = android.view.View.class;	 Catch:{ Exception -> 0x0043 }
        r2 = r2.asSubclass(r4);	 Catch:{ Exception -> 0x0043 }
        r4 = sConstructorSignature;	 Catch:{ Exception -> 0x0043 }
        r0 = r2.getConstructor(r4);	 Catch:{ Exception -> 0x0043 }
        r2 = sConstructorMap;	 Catch:{ Exception -> 0x0043 }
        r2.put(r3, r0);	 Catch:{ Exception -> 0x0043 }
    L_0x0036:
        r2 = 1;	 Catch:{ Exception -> 0x0043 }
        r0.setAccessible(r2);	 Catch:{ Exception -> 0x0043 }
        r2 = r1.mConstructorArgs;	 Catch:{ Exception -> 0x0043 }
        r2 = r0.newInstance(r2);	 Catch:{ Exception -> 0x0043 }
        r2 = (android.view.View) r2;	 Catch:{ Exception -> 0x0043 }
        return r2;
    L_0x0043:
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatViewInflater.createViewByPrefix(android.content.Context, java.lang.String, java.lang.String):android.view.View");
    }
}
