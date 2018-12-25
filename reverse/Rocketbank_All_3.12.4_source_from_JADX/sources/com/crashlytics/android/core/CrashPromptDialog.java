package com.crashlytics.android.core;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.databinding.library.baseAdapters.C0292R;
import java.util.concurrent.CountDownLatch;

final class CrashPromptDialog {
    private final Builder dialog;
    private final OptInLatch latch;

    interface AlwaysSendCallback {
        void sendUserReportsWithoutPrompting$1385ff();
    }

    static class OptInLatch {
        private final CountDownLatch latch;
        private boolean send;

        private OptInLatch() {
            this.send = false;
            this.latch = new CountDownLatch(1);
        }

        final void setOptIn(boolean z) {
            this.send = z;
            this.latch.countDown();
        }

        final boolean getOptIn() {
            return this.send;
        }

        final void await() {
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
            r1 = this;
            r0 = r1.latch;	 Catch:{ InterruptedException -> 0x0006 }
            r0.await();	 Catch:{ InterruptedException -> 0x0006 }
            return;
        L_0x0006:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.core.CrashPromptDialog.OptInLatch.await():void");
        }
    }

    public static CrashPromptDialog create$70c3dcb6(Activity activity, C0292R c0292r, final AlwaysSendCallback alwaysSendCallback) {
        final OptInLatch optInLatch = new OptInLatch();
        DialogStringResolver dialogStringResolver = new DialogStringResolver(activity, c0292r);
        Builder builder = new Builder(activity);
        CharSequence message = dialogStringResolver.getMessage();
        float f = activity.getResources().getDisplayMetrics().density;
        int i = (int) (5.0f * f);
        View textView = new TextView(activity);
        textView.setAutoLinkMask(15);
        textView.setText(message);
        textView.setTextAppearance(activity, 16973892);
        textView.setPadding(i, i, i, i);
        textView.setFocusable(false);
        View scrollView = new ScrollView(activity);
        scrollView.setPadding((int) (1096810496 * f), (int) (2.0f * f), (int) (10.0f * f), (int) (f * 12.0f));
        scrollView.addView(textView);
        builder.setView(scrollView).setTitle(dialogStringResolver.getTitle()).setCancelable(false).setNeutralButton(dialogStringResolver.getSendButtonTitle(), new OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                optInLatch.setOptIn(true);
                dialogInterface.dismiss();
            }
        });
        if (c0292r.showCancelButton != null) {
            builder.setNegativeButton(dialogStringResolver.getCancelButtonTitle(), new OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    optInLatch.setOptIn(false);
                    dialogInterface.dismiss();
                }
            });
        }
        if (c0292r.showAlwaysSendButton != null) {
            builder.setPositiveButton(dialogStringResolver.getAlwaysSendButtonTitle(), new OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    alwaysSendCallback.sendUserReportsWithoutPrompting$1385ff();
                    optInLatch.setOptIn(true);
                    dialogInterface.dismiss();
                }
            });
        }
        return new CrashPromptDialog(builder, optInLatch);
    }

    private CrashPromptDialog(Builder builder, OptInLatch optInLatch) {
        this.latch = optInLatch;
        this.dialog = builder;
    }

    public final void show() {
        this.dialog.show();
    }

    public final void await() {
        this.latch.await();
    }

    public final boolean getOptIn() {
        return this.latch.getOptIn();
    }
}
