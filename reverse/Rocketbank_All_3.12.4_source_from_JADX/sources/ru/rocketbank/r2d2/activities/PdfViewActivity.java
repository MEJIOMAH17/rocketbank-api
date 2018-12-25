package ru.rocketbank.r2d2.activities;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.ViewAnimationUtils;
import java.io.File;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.ActivityPdfViewBinding;

/* compiled from: PdfViewActivity.kt */
public final class PdfViewActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_CX = "KEY_CX";
    private static final String KEY_CY = "KEY_CY";
    private static final String KEY_FILE = "KEY_FILE";
    private static final String KEY_REVEAL = "KEY_REVEAL";
    private static final String KEY_SHOW_SEND = "KEY_SHOW_SEND";
    private HashMap _$_findViewCache;
    private SupportAnimator animator;
    private ActivityPdfViewBinding binding;
    private int cx;
    private int cy;
    private String filePath;
    private boolean isReveal;
    private boolean showSend;

    /* compiled from: PdfViewActivity.kt */
    public static final class Companion {
        private static /* synthetic */ void KEY_CX$annotations() {
        }

        private static /* synthetic */ void KEY_CY$annotations() {
        }

        private static /* synthetic */ void KEY_FILE$annotations() {
        }

        private static /* synthetic */ void KEY_REVEAL$annotations() {
        }

        private static /* synthetic */ void KEY_SHOW_SEND$annotations() {
        }

        private Companion() {
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, boolean z, String str, int i, int i2, boolean z2, int i3, Object obj) {
            companion.start(context, (i3 & 2) != 0 ? false : z, str, (i3 & 8) != 0 ? 0 : i, (i3 & 16) != 0 ? 0 : i2, (i3 & 32) != 0 ? false : z2);
        }

        public final void start(Context context, boolean z, String str, int i, int i2, boolean z2) {
            Intrinsics.checkParameterIsNotNull(context, "c");
            Intrinsics.checkParameterIsNotNull(str, "filePath");
            Intent intent = new Intent(context, PdfViewActivity.class);
            intent.putExtra(PdfViewActivity.KEY_REVEAL, z);
            intent.putExtra(PdfViewActivity.KEY_FILE, str);
            intent.putExtra(PdfViewActivity.KEY_CX, i);
            intent.putExtra(PdfViewActivity.KEY_CY, i2);
            intent.putExtra(PdfViewActivity.KEY_SHOW_SEND, z2);
            context.startActivity(intent);
        }
    }

    public static final void start(Context context, boolean z, String str, int i, int i2, boolean z2) {
        Companion.start(context, z, str, i, i2, z2);
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public static final /* synthetic */ ActivityPdfViewBinding access$getBinding$p(PdfViewActivity pdfViewActivity) {
        pdfViewActivity = pdfViewActivity.binding;
        if (pdfViewActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return pdfViewActivity;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, C0859R.layout.activity_pdf_view);
        Intrinsics.checkExpressionValueIsNotNull(contentView, "DataBindingUtil.setConte…layout.activity_pdf_view)");
        this.binding = (ActivityPdfViewBinding) contentView;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        Intent intent = getIntent();
        this.showSend = intent.getBooleanExtra(KEY_SHOW_SEND, false);
        this.filePath = intent.getStringExtra(KEY_FILE);
        if (this.filePath == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(intent.getClass().getCanonicalName());
            stringBuilder.append(" file path can not be null");
            throw ((Throwable) new IllegalStateException(stringBuilder.toString()));
        }
        this.isReveal = intent.getBooleanExtra(KEY_REVEAL, false);
        if (this.isReveal && bundle == null) {
            this.cx = intent.getIntExtra(KEY_CX, 0);
            this.cy = intent.getIntExtra(KEY_CY, 0);
        }
    }

    protected final void onStart() {
        super.onStart();
        String str = this.filePath;
        if (str == null) {
            Intrinsics.throwNpe();
        }
        showPdf(str);
    }

    public final void showPdf(String str) {
        Intrinsics.checkParameterIsNotNull(str, "path");
        File file = new File(str);
        if (file.exists() != null) {
            str = this.binding;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            str.pdfView.fromFile(file).enableSwipe$5da59061().enableDoubletap$5da59061().defaultPage$1978f8f0().swipeHorizontal$5da59061().onLoad(new PdfViewActivity$showPdf$1(this)).load();
            return;
        }
        Toast.makeText(this, C0859R.string.file_not_found, 1).show();
    }

    private final void revealOpen(int i, int i2) {
        ActivityPdfViewBinding activityPdfViewBinding = this.binding;
        if (activityPdfViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FrameLayout frameLayout = activityPdfViewBinding.container;
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, "binding.container");
        this.animator = createAnimator(frameLayout, i, i2);
        i = this.animator;
        if (i == 0) {
            Intrinsics.throwNpe();
        }
        i.start();
    }

    public final void onBackPressed() {
        if (this.isReveal) {
            SupportAnimator supportAnimator = this.animator;
            if (supportAnimator != null) {
                if (supportAnimator.isRunning()) {
                    supportAnimator.cancel();
                    finish();
                    return;
                }
                supportAnimator = supportAnimator.reverse();
                Intrinsics.checkExpressionValueIsNotNull(supportAnimator, "animator.reverse()");
                supportAnimator.addListener(new PdfViewActivity$onBackPressed$1(this));
                supportAnimator.start();
                return;
            }
            return;
        }
        super.onBackPressed();
    }

    private final SupportAnimator createAnimator(View view, int i, int i2) {
        view = ViewAnimationUtils.createCircularReveal(view, i, i2, BitmapDescriptorFactory.HUE_RED, (float) Math.hypot((double) Math.max(i, view.getWidth() - i), (double) Math.max(i2, view.getHeight() - i2)));
        Intrinsics.checkExpressionValueIsNotNull(view, "animator");
        view.setInterpolator((TimeInterpolator) new AccelerateDecelerateInterpolator());
        view.setDuration(500);
        return view;
    }

    public final boolean onCreateOptionsMenu(Menu menu) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        if (this.showSend) {
            getMenuInflater().inflate(C0859R.menu.pdf_view_menu, menu);
        }
        return super.onCreateOptionsMenu(menu);
    }

    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        Intrinsics.checkParameterIsNotNull(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            onBackPressed();
            return true;
        } else if (itemId != C0859R.id.share_pdf) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            sharePdf();
            return true;
        }
    }

    private final void sharePdf() {
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
        r3 = this;
        r0 = new java.io.File;
        r1 = r3.filePath;
        r0.<init>(r1);
        r0 = android.net.Uri.fromFile(r0);
        r1 = new android.content.Intent;
        r2 = "android.intent.action.SEND";
        r1.<init>(r2);
        r2 = "android.intent.extra.STREAM";
        r0 = (android.os.Parcelable) r0;
        r1.putExtra(r2, r0);
        r0 = "application/pdf";
        r1.setType(r0);
        r0 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r1.setFlags(r0);
        r0 = 2131821568; // 0x7f110400 float:1.9275883E38 double:1.0532598E-314;
        r0 = r3.getString(r0);	 Catch:{ ActivityNotFoundException -> 0x0034 }
        r0 = (java.lang.CharSequence) r0;	 Catch:{ ActivityNotFoundException -> 0x0034 }
        r0 = android.content.Intent.createChooser(r1, r0);	 Catch:{ ActivityNotFoundException -> 0x0034 }
        r3.startActivity(r0);	 Catch:{ ActivityNotFoundException -> 0x0034 }
        return;
    L_0x0034:
        r0 = r3;
        r0 = (android.content.Context) r0;
        r1 = 2131820591; // 0x7f11002f float:1.9273901E38 double:1.053259317E-314;
        r2 = 0;
        r0 = android.widget.Toast.makeText(r0, r1, r2);
        r0.show();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.PdfViewActivity.sharePdf():void");
    }
}
