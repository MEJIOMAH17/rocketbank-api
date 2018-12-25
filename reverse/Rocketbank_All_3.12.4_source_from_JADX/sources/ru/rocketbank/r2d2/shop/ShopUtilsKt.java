package ru.rocketbank.r2d2.shop;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: ShopUtils.kt */
public final class ShopUtilsKt {
    private static int screenHeight;

    public static /* bridge */ /* synthetic */ SpannableStringBuilder createShopItemAmountText$default(Context context, ShopItem shopItem, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = shopItem.getTextColor();
        }
        return createShopItemAmountText(context, shopItem, i);
    }

    public static final SpannableStringBuilder createShopItemAmountText(Context context, ShopItem shopItem, int i) {
        boolean z;
        MoneyFormatter moneyFormatter;
        SpannableStringBuilder spannableStringBuilder;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(shopItem, "shopItem");
        CharSequence price_replacement = shopItem.getPrice_replacement();
        if (price_replacement != null) {
            if (!StringsKt.isBlank(price_replacement)) {
                z = false;
                if (!z) {
                    return new SpannableStringBuilder(shopItem.getPrice_replacement());
                }
                Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
                moneyFormatter = new MoneyFormatter(context, authorization, RocketApplication.Companion.getInjector().getCurrencyManager());
                spannableStringBuilder = new SpannableStringBuilder();
                if (shopItem.getPrice_old() == null) {
                    Double price_old = shopItem.getPrice_old();
                    spannableStringBuilder.append(moneyFormatter.format(price_old == null ? price_old.doubleValue() : shopItem.getPrice(), "", false));
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), 0, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.argb(128, Color.red(i), Color.green(i), Color.blue(i))), 0, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.append(" ").append(moneyFormatter.format(shopItem.getPrice(), "", false));
                } else {
                    spannableStringBuilder.append(moneyFormatter.format(shopItem.getPrice(), "", false));
                }
                i = spannableStringBuilder.append(" ");
                context = context.getResources();
                UserData userData = authorization.getUserData();
                Intrinsics.checkParameterIsNotNull(userData, "userData");
                i.append(context.getQuantityString(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMoney(), (int) shopItem.getPrice()));
                return spannableStringBuilder;
            }
        }
        z = true;
        if (!z) {
            return new SpannableStringBuilder(shopItem.getPrice_replacement());
        }
        Authorization authorization2 = RocketApplication.Companion.getInjector().getAuthorization();
        moneyFormatter = new MoneyFormatter(context, authorization2, RocketApplication.Companion.getInjector().getCurrencyManager());
        spannableStringBuilder = new SpannableStringBuilder();
        if (shopItem.getPrice_old() == null) {
            spannableStringBuilder.append(moneyFormatter.format(shopItem.getPrice(), "", false));
        } else {
            Double price_old2 = shopItem.getPrice_old();
            if (price_old2 == null) {
            }
            spannableStringBuilder.append(moneyFormatter.format(price_old2 == null ? price_old2.doubleValue() : shopItem.getPrice(), "", false));
            spannableStringBuilder.setSpan(new StrikethroughSpan(), 0, spannableStringBuilder.length(), 33);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.argb(128, Color.red(i), Color.green(i), Color.blue(i))), 0, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append(" ").append(moneyFormatter.format(shopItem.getPrice(), "", false));
        }
        i = spannableStringBuilder.append(" ");
        context = context.getResources();
        UserData userData2 = authorization2.getUserData();
        Intrinsics.checkParameterIsNotNull(userData2, "userData");
        i.append(context.getQuantityString(Cobrand.Companion.fromCobrandName(userData2.realmGet$cobrandName()).getMoney(), (int) shopItem.getPrice()));
        return spannableStringBuilder;
    }

    public static final ValueAnimator amountAnimation(RocketTextView rocketTextView, double d, double d2) {
        Intrinsics.checkParameterIsNotNull(rocketTextView, "textView");
        CurrencyManager currencyManager = new CurrencyManager();
        Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
        Context context = RocketApplication.Companion.getContext();
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        MoneyFormatter moneyFormatter = new MoneyFormatter(context, authorization, currencyManager);
        moneyFormatter.setFloorAmount(true);
        Function1 shopUtilsKt$amountAnimation$format$1 = new ShopUtilsKt$amountAnimation$format$1(moneyFormatter);
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(new int[]{(int) d, (int) d2});
        valueAnimator.setInterpolator((TimeInterpolator) new AccelerateInterpolator());
        valueAnimator.setDuration(500);
        d = rocketTextView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(d, "textView.context");
        d = d.getResources();
        UserData userData = authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        valueAnimator.addUpdateListener(new ShopUtilsKt$amountAnimation$1(rocketTextView, shopUtilsKt$amountAnimation$format$1, d.getQuantityString(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMoney(), 0)));
        valueAnimator.addListener(new ShopUtilsKt$amountAnimation$2(rocketTextView, shopUtilsKt$amountAnimation$format$1, d2, authorization));
        return valueAnimator;
    }

    public static final String createCartItemAmountText(Context context, double d) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        MoneyFormatter moneyFormatter = new MoneyFormatter(context, RocketApplication.Companion.getInjector().getAuthorization(), RocketApplication.Companion.getInjector().getCurrencyManager());
        context = MoneyFormatter.Companion;
        context = moneyFormatter.formatAmount(d, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), false);
        d = new StringBuilder();
        d.append(context.getAmountString());
        d.append(' ');
        d.append(context.getSuffix());
        return d.toString();
    }

    public static final int getScreenHeight(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "c");
        if (screenHeight == 0) {
            context = context.getSystemService("window");
            if (context == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
            }
            context = ((WindowManager) context).getDefaultDisplay();
            Point point = new Point();
            context.getSize(point);
            screenHeight = point.y;
        }
        return screenHeight;
    }

    public static final void createColorCircle(ImageView imageView, String str) {
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        Intrinsics.checkParameterIsNotNull(str, "color");
        Observable.create((OnSubscribe) new ShopUtilsKt$createColorCircle$1(str, imageView)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new ShopUtilsKt$createColorCircle$2(imageView), (Action1) ShopUtilsKt$createColorCircle$3.INSTANCE);
    }

    public static final void bringPromoText(boolean z, View view, View view2, ViewGroup viewGroup, int... iArr) {
        Intrinsics.checkParameterIsNotNull(view, "textViewPromo");
        Intrinsics.checkParameterIsNotNull(view2, "imageView");
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        Intrinsics.checkParameterIsNotNull(iArr, "ignoreIDS");
        if (z) {
            view.bringToFront();
            return;
        }
        view2.bringToFront();
        Iterable iterable = (Iterable) new IntRange(0, viewGroup.getChildCount() - 1);
        Collection collection = (Collection) new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        z = iterable.iterator();
        while (z.hasNext()) {
            collection.add(viewGroup.getChildAt(((IntIterator) z).nextInt()));
        }
        Collection collection2 = (Collection) new ArrayList();
        for (ViewGroup viewGroup2 : (List) collection) {
            View view3 = viewGroup2;
            Intrinsics.checkExpressionValueIsNotNull(view3, "it");
            int i = (ArraysKt___ArraysKt.contains(iArr, view3.getId()) || view3.getId() == C0859R.id.textViewPromo || view3.getId() == C0859R.id.imageView || view3.getId() == C0859R.id.textureView) ? 0 : 1;
            if (i != 0) {
                collection2.add(viewGroup2);
            }
        }
        for (View view4 : (List) collection2) {
            view4.bringToFront();
        }
    }

    public static final int calculateNumOfColumns(Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Resources resources = context.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "context.resources");
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        context = (int) (((((float) displayMetrics.widthPixels) / displayMetrics.density) - ((context.getResources().getDimension(C0859R.dimen.shop_attribute_margin) / displayMetrics.density) * 2.0f)) / ((context.getResources().getDimension(C0859R.dimen.radio_button_size) / displayMetrics.density) + ((context.getResources().getDimension(C0859R.dimen.shop_radio_button_min_margin) / displayMetrics.density) * 2.0f)));
        if (context > i) {
            context = i;
        }
        return context < 5 ? 5 : context;
    }
}
