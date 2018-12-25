package ru.rocketbank.r2d2.activities;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.support.v7.graphics.Palette;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestListener;
import com.facebook.share.internal.ShareConstants;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.slf4j.Marker;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.discounts.Discount;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.data.binding.discount.DiscountData;
import ru.rocketbank.r2d2.data.binding.discount.DiscountListener;
import ru.rocketbank.r2d2.databinding.ActivityDiscountDetailsBinding;
import ru.rocketbank.r2d2.helpers.UIHelper;

/* compiled from: DiscountDetailsActivity.kt */
public final class DiscountDetailsActivity extends SecuredActivity implements ObservableScrollViewCallbacks, DiscountListener {
    public static final Companion Companion = new Companion();
    private static final String DISCOUNT = "discount";
    private HashMap _$_findViewCache;
    private DrawerArrowDrawable arrow;
    private ActivityDiscountDetailsBinding binding;
    private DiscountData data;
    private Discount discount;
    private float height;
    private ImageView imageView;
    private ObservableScrollView observableScrollView;
    private Toolbar toolbar;
    private int toolbarBackground = -1;

    /* compiled from: DiscountDetailsActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context, Discount discount) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, DiscountDetailsActivity.class);
            if (discount != null) {
                intent.putExtra(DiscountDetailsActivity.DISCOUNT, discount);
                context.startActivity(intent);
                return;
            }
            Toast.makeText(context, C0859R.string.discount_info_not_exists, 1).show();
        }
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

    public final void onDownMotionEvent() {
    }

    public final void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    public static final /* synthetic */ DrawerArrowDrawable access$getArrow$p(DiscountDetailsActivity discountDetailsActivity) {
        discountDetailsActivity = discountDetailsActivity.arrow;
        if (discountDetailsActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("arrow");
        }
        return discountDetailsActivity;
    }

    public static final /* synthetic */ ImageView access$getImageView$p(DiscountDetailsActivity discountDetailsActivity) {
        discountDetailsActivity = discountDetailsActivity.imageView;
        if (discountDetailsActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageView");
        }
        return discountDetailsActivity;
    }

    public static final /* synthetic */ ObservableScrollView access$getObservableScrollView$p(DiscountDetailsActivity discountDetailsActivity) {
        discountDetailsActivity = discountDetailsActivity.observableScrollView;
        if (discountDetailsActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observableScrollView");
        }
        return discountDetailsActivity;
    }

    public static final /* synthetic */ Toolbar access$getToolbar$p(DiscountDetailsActivity discountDetailsActivity) {
        discountDetailsActivity = discountDetailsActivity.toolbar;
        if (discountDetailsActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        return discountDetailsActivity;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, C0859R.layout.activity_discount_details);
        Intrinsics.checkExpressionValueIsNotNull(contentView, "DataBindingUtil.setConte…ctivity_discount_details)");
        this.binding = (ActivityDiscountDetailsBinding) contentView;
        Parcelable parcelableExtra = getIntent().getParcelableExtra(DISCOUNT);
        Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtra<Discount>(DISCOUNT)");
        this.discount = (Discount) parcelableExtra;
        ActivityDiscountDetailsBinding activityDiscountDetailsBinding = this.binding;
        if (activityDiscountDetailsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = activityDiscountDetailsBinding.imageView;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.imageView");
        r1.imageView = imageView;
        activityDiscountDetailsBinding = r1.binding;
        if (activityDiscountDetailsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ObservableScrollView observableScrollView = activityDiscountDetailsBinding.observableScrollView;
        Intrinsics.checkExpressionValueIsNotNull(observableScrollView, "binding.observableScrollView");
        r1.observableScrollView = observableScrollView;
        observableScrollView = r1.observableScrollView;
        if (observableScrollView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observableScrollView");
        }
        UIHelper.setPadding(false, observableScrollView.getChildAt(0), true, false, false);
        observableScrollView = r1.observableScrollView;
        if (observableScrollView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observableScrollView");
        }
        observableScrollView.setScrollViewCallbacks(r1);
        observableScrollView = r1.observableScrollView;
        if (observableScrollView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observableScrollView");
        }
        observableScrollView.post(new DiscountDetailsActivity$onCreate$1(r1));
        activityDiscountDetailsBinding = r1.binding;
        if (activityDiscountDetailsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityDiscountDetailsBinding.setListener(r1);
        Discount discount = r1.discount;
        if (discount == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        String str = discount.body;
        Intrinsics.checkExpressionValueIsNotNull(str, "discount.body");
        String replace$default = StringsKt__StringsJVMKt.replace$default(str, "* ", "", false, 4, null);
        StringBuilder stringBuilder = new StringBuilder();
        Discount discount2 = r1.discount;
        if (discount2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        stringBuilder.append(discount2.promoTitle);
        stringBuilder.append("\n");
        stringBuilder.append(getString(C0859R.string.copy_clipboard));
        String stringBuilder2 = stringBuilder.toString();
        discount2 = r1.discount;
        if (discount2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        String str2 = discount2.name;
        Intrinsics.checkExpressionValueIsNotNull(str2, "discount.name");
        if (((CharSequence) str2).length() == 0) {
            discount2 = r1.discount;
            if (discount2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
            }
            String str3 = discount2.name;
            Intrinsics.checkExpressionValueIsNotNull(str3, "discount.name");
            str2 = StringsKt__StringsJVMKt.replace$default(str3, Marker.ANY_NON_NULL_MARKER, "", false, 4, null);
        } else {
            discount2 = r1.discount;
            if (discount2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
            }
            str2 = discount2.shortTitle;
        }
        String str4 = str2;
        Intrinsics.checkExpressionValueIsNotNull(str4, "if (discount.name.isEmpt… else discount.shortTitle");
        discount2 = r1.discount;
        if (discount2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        str2 = discount2.linkTitle;
        Intrinsics.checkExpressionValueIsNotNull(str2, "discount.linkTitle");
        Discount discount3 = r1.discount;
        if (discount3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        str = discount3.promoCode;
        Discount discount4 = r1.discount;
        if (discount4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        r1.data = new DiscountData(str4, replace$default, stringBuilder2, str2, str, discount4.promoCode != null);
        activityDiscountDetailsBinding = r1.binding;
        if (activityDiscountDetailsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        DiscountData discountData = r1.data;
        if (discountData == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
        }
        activityDiscountDetailsBinding.setData(discountData);
        try {
            imageView = r1.imageView;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageView");
            }
            Discount discount5 = r1.discount;
            if (discount5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
            }
            imageView.setImageDrawable(new ColorDrawable(Color.parseColor(discount5.color)));
        } catch (Exception e) {
            AnalyticsManager.logException(e);
        }
        discount = r1.discount;
        if (discount == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        String str5 = discount.mainLink;
        if (str5 == null) {
            discount = r1.discount;
            if (discount == null) {
                Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
            }
            str5 = discount.prewiewLink;
        }
        loadImage(str5);
        setupToolbar();
    }

    public final void loadImage(String str) {
        if (str != null) {
            str = Glide.with((FragmentActivity) this).load(str).asBitmap().centerCrop().listener((RequestListener) new DiscountDetailsActivity$loadImage$$inlined$let$lambda$1(this, str)).error((Drawable) new ColorDrawable(-7829368));
            ImageView imageView = this.imageView;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageView");
            }
            str.into(imageView);
        }
    }

    public final void discountButtonClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view.setEnabled(false);
        Object systemService = getSystemService("clipboard");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
        }
        ClipboardManager clipboardManager = (ClipboardManager) systemService;
        CharSequence charSequence = NotificationCompat.CATEGORY_PROMO;
        DiscountData discountData = this.data;
        if (discountData == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
        }
        clipboardManager.setPrimaryClip(ClipData.newPlainText(charSequence, (CharSequence) discountData.promoCode.get()));
        Toast.makeText(this, C0859R.string.coped, 0).show();
        view.setEnabled(true);
    }

    public final void linkClicked(View view) {
        Context context;
        Discount discount;
        Intrinsics.checkParameterIsNotNull(view, "v");
        view = this.discount;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        if (Intrinsics.areEqual(view.linkType, "url") == null) {
            view = this.discount;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
            }
            if (Intrinsics.areEqual(view.linkType, "external_url") == null) {
                view = this.discount;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
                }
                if (Intrinsics.areEqual(view.linkType, "address") != null) {
                    context = this;
                    discount = this.discount;
                    if (discount == null) {
                        Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
                    }
                    Utils.openAddress(context, discount.link);
                }
                return;
            }
        }
        context = this;
        discount = this.discount;
        if (discount == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        Utils.openUrl(context, discount.link);
    }

    public final void setupToolbar() {
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
        r0 = r3.binding;
        if (r0 != 0) goto L_0x0009;
    L_0x0004:
        r1 = "binding";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x0009:
        r0 = r0.include;
        if (r0 != 0) goto L_0x0010;
    L_0x000d:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0010:
        r0 = r0.toolbar;
        r1 = "binding.include!!.toolbar";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r3.toolbar = r0;
        r0 = r3.toolbar;
        if (r0 != 0) goto L_0x0022;
    L_0x001d:
        r1 = "toolbar";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x0022:
        r0 = (android.view.View) r0;
        r1 = 0;
        r2 = 1;
        ru.rocketbank.r2d2.helpers.UIHelper.setPadding(r2, r0, r1, r1, r2);
        r0 = r3.toolbar;
        if (r0 != 0) goto L_0x0032;
    L_0x002d:
        r1 = "toolbar";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x0032:
        r3.setSupportActionBar(r0);
        r0 = r3.getSupportActionBar();
        if (r0 == 0) goto L_0x003e;
    L_0x003b:
        r0.setDisplayHomeAsUpEnabled(r2);
    L_0x003e:
        r0 = r3.toolbar;
        if (r0 != 0) goto L_0x0047;
    L_0x0042:
        r1 = "toolbar";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x0047:
        r1 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r0.setTitleTextColor(r1);
        r0 = new android.support.v7.graphics.drawable.DrawerArrowDrawable;
        r2 = r3;
        r2 = (android.content.Context) r2;
        r0.<init>(r2);
        r3.arrow = r0;
        r0 = r3.arrow;
        if (r0 != 0) goto L_0x005f;
    L_0x005a:
        r2 = "arrow";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2);
    L_0x005f:
        r0.setDirection$13462e();
        r0 = r3.arrow;
        if (r0 != 0) goto L_0x006b;
    L_0x0066:
        r2 = "arrow";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2);
    L_0x006b:
        r2 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0.setProgress(r2);
        r0 = r3.arrow;
        if (r0 != 0) goto L_0x0079;
    L_0x0074:
        r2 = "arrow";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2);
    L_0x0079:
        r0.setColor(r1);
        r0 = r3.discount;	 Catch:{ Exception -> 0x008d }
        if (r0 != 0) goto L_0x0085;	 Catch:{ Exception -> 0x008d }
    L_0x0080:
        r1 = "discount";	 Catch:{ Exception -> 0x008d }
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);	 Catch:{ Exception -> 0x008d }
    L_0x0085:
        r0 = r0.color;	 Catch:{ Exception -> 0x008d }
        r0 = android.graphics.Color.parseColor(r0);	 Catch:{ Exception -> 0x008d }
        r3.toolbarBackground = r0;	 Catch:{ Exception -> 0x008d }
    L_0x008d:
        r0 = r3.toolbar;
        if (r0 != 0) goto L_0x0096;
    L_0x0091:
        r1 = "toolbar";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x0096:
        r1 = r3.arrow;
        if (r1 != 0) goto L_0x009f;
    L_0x009a:
        r2 = "arrow";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2);
    L_0x009f:
        r1 = (android.graphics.drawable.Drawable) r1;
        r0.setNavigationIcon(r1);
        r0 = r3.discount;
        if (r0 != 0) goto L_0x00ad;
    L_0x00a8:
        r1 = "discount";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x00ad:
        r0 = r0.shortTitle;
        r0 = (java.lang.CharSequence) r0;
        r3.setTitle(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.DiscountDetailsActivity.setupToolbar():void");
    }

    public final void changeToolbar(Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(bitmap, "bmp");
        Palette.from(bitmap).generate(new DiscountDetailsActivity$changeToolbar$1(this));
    }

    public final void onScrollChanged(int i, boolean z, boolean z2) {
        z = true - (Math.max(0, this.height - ((float) i)) / this.height);
        i = this.imageView;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("imageView");
        }
        z2 = this.imageView;
        if (!z2) {
            Intrinsics.throwUninitializedPropertyAccessException("imageView");
        }
        i.setPadding(0, (int) ((((float) z2.getHeight()) * z) / true), 0, 0);
        i = this.toolbar;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        i.setBackgroundColor((Math.min(255, Math.max(0, (int) (z * true))) << 24) + (this.toolbarBackground & true));
    }

    public final boolean onCreateOptionsMenu(Menu menu) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        Discount discount = this.discount;
        if (discount == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        if (discount.videoLink != null) {
            discount = this.discount;
            if (discount == null) {
                Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
            }
            if ((Intrinsics.areEqual(discount.videoLink, "") ^ 1) != 0) {
                getMenuInflater().inflate(C0859R.menu.menu_discount, menu);
                return true;
            }
        }
        return super.onCreateOptionsMenu(menu);
    }

    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        Intrinsics.checkParameterIsNotNull(menuItem, "item");
        if (menuItem.getItemId() != C0859R.id.videoItem) {
            return super.onOptionsItemSelected(menuItem);
        }
        Context context = this;
        Discount discount = this.discount;
        if (discount == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DISCOUNT);
        }
        VideoActivity.start(context, discount.videoLink);
        return true;
    }
}
