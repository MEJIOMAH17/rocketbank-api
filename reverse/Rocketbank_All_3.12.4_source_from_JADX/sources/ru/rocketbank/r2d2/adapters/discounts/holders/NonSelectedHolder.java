package ru.rocketbank.r2d2.adapters.discounts.holders;

import android.os.Build.VERSION;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import de.hdodenhof.circleimageview.CircleImageView;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.ViewAnimationUtils;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.model.dto.operations.Merchant;
import ru.rocketbank.core.model.dto.operations.MonthlyMerchant;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.adapters.discounts.ItemWrapper;
import ru.rocketbank.r2d2.data.binding.discount.NonSelectedDiscountsData;
import ru.rocketbank.r2d2.data.binding.discount.SelectedDiscountsListener;
import ru.rocketbank.r2d2.databinding.DiscountsNotSelectedBinding;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: NonSelectedHolder.kt */
public final class NonSelectedHolder extends AbstractDiscountHolder implements SelectedDiscountsListener {
    private final DiscountsNotSelectedBinding binding;
    private final RocketTextView confirmView;
    private final LinearLayout container;
    private final NonSelectedDiscountsData data;
    private FeedManager feedManager = RocketApplication.Companion.getInjector().getFeedManager();
    private final RocketTextView headerTextView;
    private final int needToSelectCount = 3;
    private Set<Long> selectedIds = new LinkedHashSet();
    private final RocketTextView selectionStatusView;

    public NonSelectedHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        super(view);
        view = DiscountsNotSelectedBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "DiscountsNotSelectedBinding.bind(v)");
        this.binding = view;
        String string = getResources().getString(C0859R.string.month_most_loved_time_to_choose);
        Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.st…ost_loved_time_to_choose)");
        this.data = new NonSelectedDiscountsData(string, null, false, false, 14, null);
        this.binding.setListener(this);
        this.binding.setData(this.data);
        view = this.binding.merchantContainer;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.merchantContainer");
        this.container = view;
        view = this.binding.headerText;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.headerText");
        this.headerTextView = view;
        view = this.binding.selectionStatus;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.selectionStatus");
        this.selectionStatusView = view;
        view = this.binding.confirm;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.confirm");
        this.confirmView = view;
    }

    public final void bind(ItemWrapper itemWrapper) {
        Intrinsics.checkParameterIsNotNull(itemWrapper, ShareConstants.WEB_DIALOG_PARAM_DATA);
        super.bind(itemWrapper);
        this.container.removeAllViews();
        itemWrapper = itemWrapper.getMonthCashback();
        if (itemWrapper == null) {
            Intrinsics.throwNpe();
        }
        for (MonthlyMerchant monthlyMerchant : itemWrapper.getMonthlyMerchants()) {
            Intrinsics.checkExpressionValueIsNotNull(monthlyMerchant, "discount");
            addDiscount(monthlyMerchant);
        }
    }

    private final void addDiscount(MonthlyMerchant monthlyMerchant) {
        getImagesLinks().add(monthlyMerchant.getMerchant().getIcon());
        boolean z = false;
        View inflate = getInflater().inflate(C0859R.layout.layout_item_month_cashback_merchant, this.container, false);
        View findViewById = inflate.findViewById(C0859R.id.merchantIcon);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type de.hdodenhof.circleimageview.CircleImageView");
        }
        CircleImageView circleImageView = (CircleImageView) findViewById;
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
        stringBuilder.append(String.valueOf(monthlyMerchant.getPercent()));
        stringBuilder.append(" %");
        textView2.setText(stringBuilder.toString());
        textView.setText(monthlyMerchant.getMerchant().getName());
        int dimensionPixelSize = getResources().getDimensionPixelSize(C0859R.dimen.rount_merchant_width_height);
        String icon = monthlyMerchant.getMerchant().getIcon();
        CharSequence charSequence = icon;
        if (charSequence == null || charSequence.length() == 0) {
            z = true;
        }
        if (!z) {
            View view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            Glide.with(view.getContext()).load(icon).override(dimensionPixelSize, dimensionPixelSize).centerCrop().crossFade().into(circleImageView);
        }
        View findViewById4 = inflate.findViewById(C0859R.id.okIcon);
        View findViewById5 = inflate.findViewById(C0859R.id.merchant);
        findViewById5.setOnClickListener(new NonSelectedHolder$addDiscount$1(this, findViewById5, findViewById4, monthlyMerchant));
        Merchant merchant;
        if (this.selectedIds.contains(Long.valueOf(monthlyMerchant.getMerchant().getId()))) {
            Intrinsics.checkExpressionValueIsNotNull(findViewById5, "clickView");
            Intrinsics.checkExpressionValueIsNotNull(inflate, "view");
            Intrinsics.checkExpressionValueIsNotNull(findViewById4, "merchantRevealIconView");
            merchant = monthlyMerchant.getMerchant();
            Intrinsics.checkExpressionValueIsNotNull(merchant, "dsc.merchant");
            setSelectedMerchant(findViewById5, inflate, findViewById4, merchant, false);
        } else {
            Intrinsics.checkExpressionValueIsNotNull(findViewById5, "clickView");
            Intrinsics.checkExpressionValueIsNotNull(inflate, "view");
            Intrinsics.checkExpressionValueIsNotNull(findViewById4, "merchantRevealIconView");
            merchant = monthlyMerchant.getMerchant();
            Intrinsics.checkExpressionValueIsNotNull(merchant, "dsc.merchant");
            setUnselectedMerchant(findViewById5, inflate, findViewById4, merchant, false);
        }
        this.container.addView(inflate);
    }

    public final void updateImages() {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        int dimensionPixelSize = view.getResources().getDimensionPixelSize(C0859R.dimen.rount_merchant_width_height);
        int size = getImagesLinks().size();
        for (int i = 0; i < size; i++) {
            View findViewById = this.container.getChildAt(i).findViewById(C0859R.id.game_image);
            if (findViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
            }
            Object obj;
            ImageView imageView = (ImageView) findViewById;
            CharSequence charSequence = (CharSequence) getImagesLinks().get(i);
            if (charSequence != null) {
                if (charSequence.length() != 0) {
                    obj = null;
                    if (obj == null) {
                        View view2 = this.itemView;
                        Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
                        Glide.with(view2.getContext()).load((String) getImagesLinks().get(i)).override(dimensionPixelSize, dimensionPixelSize).centerCrop().crossFade().into(imageView);
                    }
                }
            }
            obj = 1;
            if (obj == null) {
                View view22 = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view22, "itemView");
                Glide.with(view22.getContext()).load((String) getImagesLinks().get(i)).override(dimensionPixelSize, dimensionPixelSize).centerCrop().crossFade().into(imageView);
            }
        }
    }

    public final void onDiscountsSelect(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        this.data.getConfirmEnabled().set(false);
        ArrayList arrayList = new ArrayList(this.selectedIds.size());
        CollectionsKt.addAll(arrayList, this.selectedIds);
        this.feedManager.sendMonthCashBack(arrayList).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new NonSelectedHolder$onDiscountsSelect$1(this, view));
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
            view.setBackground(ContextCompat.getDrawable(view.getContext(), C0859R.drawable.ripple_merchant_white));
        }
        view2.setBackgroundColor(ContextCompat.getColor(view.getContext(), getItemColor(merchant.getId())));
        if (z) {
            enterReveal(view3);
        } else {
            view3.setVisibility(null);
        }
    }

    private final void setUnselectedMerchant(View view, View view2, View view3, Merchant merchant, boolean z) {
        if (VERSION.SDK_INT >= 21) {
            view.setBackground(ContextCompat.getDrawable(view.getContext(), C0859R.drawable.ripple_merchant));
        }
        view2.setBackgroundColor(ContextCompat.getColor(view.getContext(), getItemColor(merchant.getId())));
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

    public final void exitReveal(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        SupportAnimator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, view.getMeasuredWidth() / 2, view.getMeasuredHeight() / 2, (float) (view.getWidth() / 2), BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.addListener(new NonSelectedHolder$exitReveal$1(view));
        createCircularReveal.start();
    }

    private final boolean isLimitReached() {
        return this.selectedIds.size() == this.needToSelectCount;
    }

    private final void updateTexts() {
        this.data.getConfirmEnabled().set(false);
        if (this.selectedIds.isEmpty()) {
            this.data.getTitle().set(getResources().getString(C0859R.string.month_most_loved_time_to_choose));
            this.confirmView.setTextColor(ContextCompat.getColor(this.confirmView.getContext(), C0859R.color.gray));
            this.data.getConfirmEnabled().set(false);
            this.data.getSelectionTextVisibility().set(false);
        } else if (isLimitReached()) {
            this.data.getSelectionTextVisibility().set(false);
            this.data.getConfirmEnabled().set(true);
            this.confirmView.setTextColor(ContextCompat.getColor(this.confirmView.getContext(), C0859R.color.orange_variant_1));
        } else {
            String string;
            this.data.getTitle().set(getResources().getString(C0859R.string.month_most_loved_places));
            this.confirmView.setTextColor(ContextCompat.getColor(this.confirmView.getContext(), C0859R.color.gray));
            int size = this.needToSelectCount - this.selectedIds.size();
            switch (size) {
                case 1:
                    string = getResources().getString(C0859R.string.left_to_choose_ending_1);
                    Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.st….left_to_choose_ending_1)");
                    break;
                case 2:
                    string = getResources().getString(C0859R.string.left_to_choose_ending_2);
                    Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.st….left_to_choose_ending_2)");
                    break;
                default:
                    string = getResources().getString(C0859R.string.left_to_choose_ending_many);
                    Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.st…ft_to_choose_ending_many)");
                    break;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getResources().getString(C0859R.string.left_to_choose));
            stringBuilder.append(" ");
            stringBuilder.append(size);
            stringBuilder.append(" ");
            stringBuilder.append(string);
            this.data.getSelectionStatus().set(stringBuilder.toString());
            this.data.getSelectionTextVisibility().set(true);
        }
    }

    public final int getItemColor(long j) {
        return this.selectedIds.contains(Long.valueOf(j)) != null ? 2131099807 : 2131100244;
    }
}
