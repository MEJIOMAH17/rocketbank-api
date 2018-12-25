package ru.rocketbank.r2d2.root.feed.viewholder;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.ViewAnimationUtils;
import java.util.LinkedHashSet;
import java.util.Set;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Merchant;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.FeedPresenter;

/* compiled from: MonthCashBackViewHolder.kt */
public final class MonthCashBackViewHolder extends FeedViewHolder implements OnClickListener {
    private final RocketTextView confirmView;
    private final LinearLayout containerView;
    private final CropCircleTransformation cropCircleTransformation;
    private FeedItem feedItem;
    private final FeedPresenter feedPresenter;
    private final RocketTextView headerTextView;
    private final LayoutInflater layoutInflater;
    private final int needToSelectCount = 3;
    private final Resources resources;
    private Set<Long> selectedIds = ((Set) new LinkedHashSet());
    private final RocketTextView selectionStatusView;
    private String titleText;

    public final CropCircleTransformation getCropCircleTransformation() {
        return this.cropCircleTransformation;
    }

    public MonthCashBackViewHolder(CropCircleTransformation cropCircleTransformation, FeedPresenter feedPresenter, View view) {
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Intrinsics.checkParameterIsNotNull(feedPresenter, "feedPresenter");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.cropCircleTransformation = cropCircleTransformation;
        this.feedPresenter = feedPresenter;
        cropCircleTransformation = view.findViewById(C0859R.id.merchantContainer);
        Intrinsics.checkExpressionValueIsNotNull(cropCircleTransformation, "itemView.findViewById(R.id.merchantContainer)");
        this.containerView = (LinearLayout) cropCircleTransformation;
        cropCircleTransformation = view.findViewById(C0859R.id.headerText);
        Intrinsics.checkExpressionValueIsNotNull(cropCircleTransformation, "itemView.findViewById(R.id.headerText)");
        this.headerTextView = (RocketTextView) cropCircleTransformation;
        cropCircleTransformation = view.findViewById(C0859R.id.selectionStatus);
        Intrinsics.checkExpressionValueIsNotNull(cropCircleTransformation, "itemView.findViewById(R.id.selectionStatus)");
        this.selectionStatusView = (RocketTextView) cropCircleTransformation;
        cropCircleTransformation = view.findViewById(C0859R.id.confirm);
        Intrinsics.checkExpressionValueIsNotNull(cropCircleTransformation, "itemView.findViewById(R.id.confirm)");
        this.confirmView = (RocketTextView) cropCircleTransformation;
        cropCircleTransformation = view.getResources();
        Intrinsics.checkExpressionValueIsNotNull(cropCircleTransformation, "itemView.resources");
        this.resources = cropCircleTransformation;
        this.layoutInflater = LayoutInflater.from(view.getContext());
    }

    public final void clear() {
        this.containerView.removeAllViews();
    }

    public final void setSelectedIds(Set<Long> set) {
        Intrinsics.checkParameterIsNotNull(set, "selectedIds");
        this.selectedIds = set;
    }

    @SuppressLint({"SetTextI18n"})
    public final void addMerchant(Merchant merchant, int i) {
        Intrinsics.checkParameterIsNotNull(merchant, "merchant");
        View inflate = this.layoutInflater.inflate(C0859R.layout.layout_item_month_cashback_merchant, this.containerView, false);
        View findViewById = inflate.findViewById(C0859R.id.merchantIcon);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        ImageView imageView = (ImageView) findViewById;
        View findViewById2 = inflate.findViewById(C0859R.id.merchantName);
        if (findViewById2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView textView = (TextView) findViewById2;
        View findViewById3 = inflate.findViewById(C0859R.id.percent);
        if (findViewById3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView textView2 = (TextView) findViewById3;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(String.valueOf(i));
        stringBuilder.append(" %");
        textView2.setText(stringBuilder.toString());
        textView.setText(merchant.getName());
        i = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(i, "itemView");
        i = i.getResources().getDimensionPixelSize(C0859R.dimen.rount_merchant_width_height);
        String icon = merchant.getIcon();
        if (icon != null) {
            if ((((CharSequence) icon).length() > 0 ? 1 : false) != 0) {
                findViewById3 = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(findViewById3, "itemView");
                Glide.with(findViewById3.getContext()).load(icon).override(i, i).centerCrop().crossFade().bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(imageView);
            }
        }
        i = inflate.findViewById(C0859R.id.okIcon);
        findViewById = inflate.findViewById(C0859R.id.merchant);
        findViewById.setOnClickListener(new MonthCashBackViewHolder$addMerchant$1(this, findViewById, inflate, i, merchant));
        if (this.selectedIds.contains(Long.valueOf(merchant.getId()))) {
            Intrinsics.checkExpressionValueIsNotNull(findViewById, "clickView");
            Intrinsics.checkExpressionValueIsNotNull(inflate, "merchantView");
            Intrinsics.checkExpressionValueIsNotNull(i, "merchantRevealIconView");
            setSelectedMerchant(findViewById, inflate, i, merchant, false);
        } else {
            Intrinsics.checkExpressionValueIsNotNull(findViewById, "clickView");
            Intrinsics.checkExpressionValueIsNotNull(inflate, "merchantView");
            Intrinsics.checkExpressionValueIsNotNull(i, "merchantRevealIconView");
            setUnselectedMerchant(findViewById, inflate, i, merchant, false);
        }
        this.containerView.addView(inflate);
        updateTexts();
    }

    private final void onClickMerchant(View view, View view2, View view3, Merchant merchant) {
        if (this.selectedIds.contains(Long.valueOf(merchant.getId()))) {
            this.selectedIds.remove(Long.valueOf(merchant.getId()));
            setUnselectedMerchant(view, view2, view3, merchant, true);
            updateTexts();
            return;
        }
        if (!isLimitReached()) {
            this.selectedIds.add(Long.valueOf(merchant.getId()));
            setSelectedMerchant(view, view2, view3, merchant, true);
            updateTexts();
        }
    }

    private final void setSelectedMerchant(View view, View view2, View view3, Merchant merchant, boolean z) {
        if (VERSION.SDK_INT >= 21) {
            View view4 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view4, "itemView");
            view.setBackgroundDrawable(ContextCompat.getDrawable(view4.getContext(), C0859R.drawable.ripple_merchant_white));
        }
        view = getItemColor(merchant.getId());
        merchant = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(merchant, "itemView");
        view2.setBackgroundColor(ContextCompat.getColor(merchant.getContext(), view));
        if (z) {
            enterReveal(view3);
        } else {
            view3.setVisibility(null);
        }
    }

    private final void setUnselectedMerchant(View view, View view2, View view3, Merchant merchant, boolean z) {
        if (VERSION.SDK_INT >= 21) {
            View view4 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view4, "itemView");
            view.setBackgroundDrawable(ContextCompat.getDrawable(view4.getContext(), C0859R.drawable.ripple_merchant));
        }
        view = getItemColor(merchant.getId());
        merchant = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(merchant, "itemView");
        view2.setBackgroundColor(ContextCompat.getColor(merchant.getContext(), view));
        if (z) {
            exitReveal(view3);
        } else {
            view3.setVisibility(4);
        }
    }

    private final void enterReveal(View view) {
        int left = (view.getLeft() + view.getRight()) / 2;
        int top = (view.getTop() + view.getBottom()) / 2;
        float hypot = (float) Math.hypot((double) Math.max(left, view.getWidth() - left), (double) Math.max(top, view.getHeight() - top));
        view.setVisibility(0);
        view = ViewAnimationUtils.createCircularReveal(view, left, top, BitmapDescriptorFactory.HUE_RED, hypot);
        view.setInterpolator(new AccelerateDecelerateInterpolator());
        view.setDuration(300);
        view.start();
    }

    private final void exitReveal(View view) {
        SupportAnimator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, view.getMeasuredWidth() / 2, view.getMeasuredHeight() / 2, (float) (view.getWidth() / 2), BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.addListener(new MonthCashBackViewHolder$exitReveal$1(view));
        createCircularReveal.start();
    }

    private final boolean isLimitReached() {
        return this.selectedIds.size() == this.needToSelectCount;
    }

    private final void updateTexts() {
        this.confirmView.setOnClickListener(null);
        View view;
        if (this.selectedIds.isEmpty()) {
            RocketTextView rocketTextView = this.headerTextView;
            String str = this.titleText;
            if (str == null) {
                str = this.resources.getString(C0859R.string.month_most_loved_time_to_choose);
            }
            rocketTextView.setText(str);
            view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            this.confirmView.setTextColor(ContextCompat.getColor(view.getContext(), C0859R.color.gray));
            this.confirmView.setOnClickListener(null);
            this.selectionStatusView.setVisibility(8);
        } else if (isLimitReached()) {
            this.selectionStatusView.setVisibility(8);
            this.confirmView.setOnClickListener(this);
            view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            this.confirmView.setTextColor(ContextCompat.getColor(view.getContext(), C0859R.color.orange_variant_1));
        } else {
            String string;
            this.headerTextView.setText(this.resources.getString(C0859R.string.month_most_loved_places));
            view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            this.confirmView.setTextColor(ContextCompat.getColor(view.getContext(), C0859R.color.gray));
            int size = this.needToSelectCount - this.selectedIds.size();
            switch (size) {
                case 1:
                    string = getString(C0859R.string.left_to_choose_ending_1);
                    break;
                case 2:
                    string = getString(C0859R.string.left_to_choose_ending_2);
                    break;
                default:
                    string = getString(C0859R.string.left_to_choose_ending_many);
                    break;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getString(C0859R.string.left_to_choose));
            stringBuilder.append(" ");
            stringBuilder.append(size);
            stringBuilder.append(" ");
            stringBuilder.append(string);
            this.selectionStatusView.setText(stringBuilder.toString());
            this.selectionStatusView.setVisibility(0);
        }
    }

    private final int getItemColor(long j) {
        return this.selectedIds.contains(Long.valueOf(j)) != null ? 2131099807 : 2131100244;
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        if (view.getId() == C0859R.id.confirm) {
            confirm();
        }
    }

    private final void confirm() {
        FeedPresenter feedPresenter = this.feedPresenter;
        Set set = this.selectedIds;
        FeedItem feedItem = this.feedItem;
        if (feedItem == null) {
            Intrinsics.throwNpe();
        }
        feedPresenter.sendMonthCashBack(set, feedItem);
    }

    public final void setFeedItem(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        this.feedItem = feedItem;
    }

    public final void setTitle(String str) {
        this.titleText = str;
    }
}
