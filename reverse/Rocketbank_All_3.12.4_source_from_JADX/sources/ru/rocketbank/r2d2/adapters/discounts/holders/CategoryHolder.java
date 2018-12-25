package ru.rocketbank.r2d2.adapters.discounts.holders;

import android.support.v7.widget.GridLayout;
import android.view.View;
import android.widget.ImageView;
import com.facebook.share.internal.ShareConstants;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.discounts.Discount;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.DiscountDetailsActivity;
import ru.rocketbank.r2d2.activities.DiscountDetailsActivity.Companion;
import ru.rocketbank.r2d2.adapters.discounts.ItemWrapper;
import ru.rocketbank.r2d2.data.binding.discount.GridDiscountData;
import ru.rocketbank.r2d2.data.binding.discount.OnDiscountClickListener;
import ru.rocketbank.r2d2.databinding.DiscountsGridContainerBinding;

/* compiled from: CategoryHolder.kt */
public final class CategoryHolder extends AbstractDiscountHolder implements OnDiscountClickListener {
    private final DiscountsGridContainerBinding binding;
    private final GridLayout container;
    private final GridDiscountData data = new GridDiscountData("", false, 2, null);

    public CategoryHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        super(view);
        view = DiscountsGridContainerBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "DiscountsGridContainerBinding.bind(v)");
        this.binding = view;
        this.binding.setData(this.data);
        view = this.binding.container;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.container");
        this.container = view;
        this.container.setColumnCount(2);
        view = getResources().getDimensionPixelSize(C0859R.dimen.categories_padding);
        this.container.setPadding(view, view, view, view);
    }

    public final void bind(ItemWrapper itemWrapper) {
        Intrinsics.checkParameterIsNotNull(itemWrapper, ShareConstants.WEB_DIALOG_PARAM_DATA);
        super.bind(itemWrapper);
        itemWrapper = itemWrapper.getCategory();
        if (itemWrapper != null) {
            this.data.getTitle().set(itemWrapper.getName());
            this.container.removeAllViews();
            List<Discount> discounts = itemWrapper.getDiscounts();
            if (discounts == null) {
                Intrinsics.throwNpe();
            }
            for (Discount discount : discounts) {
                getImagesLinks().add(discount.prewiewLink);
                addView(discount);
            }
            itemWrapper = itemWrapper.getDiscounts();
            if (itemWrapper == null) {
                Intrinsics.throwNpe();
            }
            if (itemWrapper.size() == 1) {
                addView(null);
            }
        }
    }

    private final void addView(ru.rocketbank.core.model.discounts.Discount r5) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r4 = this;
        r0 = r4.getInflater();
        r1 = r4.container;
        r1 = (android.view.ViewGroup) r1;
        r2 = 2131493028; // 0x7f0c00a4 float:1.8609525E38 double:1.0530974795E-314;
        r3 = 0;
        r0 = r0.inflate(r2, r1, r3);
        if (r5 != 0) goto L_0x0021;
    L_0x0012:
        r5 = "view";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r5);
        r5 = 4;
        r0.setVisibility(r5);
        r5 = r4.container;
        r5.addView(r0);
        return;
    L_0x0021:
        r1 = ru.rocketbank.r2d2.databinding.DiscountCategoryItemBinding.bind(r0);
        r2 = "categoryBinding";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r1.setDiscount(r5);
        r2 = r4;
        r2 = (ru.rocketbank.r2d2.data.binding.discount.OnDiscountClickListener) r2;
        r1.setListener(r2);
        r2 = r4.container;
        r2.addView(r0);
        r0 = r5.color;	 Catch:{ Exception -> 0x003f }
        r0 = android.graphics.Color.parseColor(r0);	 Catch:{ Exception -> 0x003f }
        goto L_0x0042;
    L_0x003f:
        r0 = -7829368; // 0xffffffffff888888 float:NaN double:NaN;
    L_0x0042:
        r2 = ru.rocketbank.core.utils.ImageHelper.INSTANCE;
        r1 = r1.imageView;
        r3 = "categoryBinding.imageView";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r3);
        r1 = (android.widget.ImageView) r1;
        r5 = r5.prewiewLink;
        r3 = new android.graphics.drawable.ColorDrawable;
        r3.<init>(r0);
        r3 = (android.graphics.drawable.Drawable) r3;
        r2.load(r1, r5, r3);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.adapters.discounts.holders.CategoryHolder.addView(ru.rocketbank.core.model.discounts.Discount):void");
    }

    public final void updateImages() {
        int size = getImagesLinks().size() - 1;
        if (size >= 0) {
            int i = 0;
            while (true) {
                View findViewById = this.container.getChildAt(i).findViewById(C0859R.id.imageView);
                if (findViewById == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
                }
                ImageHelper.INSTANCE.load((ImageView) findViewById, (String) getImagesLinks().get(i));
                if (i != size) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void onDiscountClick(View view, Discount discount) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Intrinsics.checkParameterIsNotNull(discount, "discount");
        Companion companion = DiscountDetailsActivity.Companion;
        view = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(view, "v.context");
        companion.start(view, discount);
    }
}
