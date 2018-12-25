package ru.rocketbank.r2d2.adapters.discounts.holders;

import android.view.View;
import android.widget.ImageView;
import com.facebook.share.internal.ShareConstants;
import de.hdodenhof.circleimageview.CircleImageView;
import java.util.LinkedList;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.MonthCashBack;
import ru.rocketbank.core.model.dto.operations.MonthlyMerchant;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.adapters.discounts.ItemWrapper;
import ru.rocketbank.r2d2.databinding.DiscountsItemSelectedBinding;
import ru.rocketbank.r2d2.databinding.DiscountsSelectedBinding;

/* compiled from: SelectedHolder.kt */
public final class SelectedHolder extends AbstractDiscountHolder {
    private DiscountsSelectedBinding binding;

    public SelectedHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        super(view);
        this.binding = DiscountsSelectedBinding.bind(view);
    }

    public final void bind(ItemWrapper itemWrapper) {
        Intrinsics.checkParameterIsNotNull(itemWrapper, ShareConstants.WEB_DIALOG_PARAM_DATA);
        super.bind(itemWrapper);
        DiscountsSelectedBinding discountsSelectedBinding = this.binding;
        Intrinsics.checkExpressionValueIsNotNull(discountsSelectedBinding, "binding");
        MonthCashBack monthCashback = itemWrapper.getMonthCashback();
        if (monthCashback == null) {
            Intrinsics.throwNpe();
        }
        discountsSelectedBinding.setList(monthCashback.getMonthlyMerchants());
        LinkedList imagesLinks = getImagesLinks();
        Object obj = itemWrapper.getMonthCashback().getMonthlyMerchants().get(0);
        Intrinsics.checkExpressionValueIsNotNull(obj, "data.monthCashback.monthlyMerchants[0]");
        imagesLinks.add(((MonthlyMerchant) obj).getMerchant().getIcon());
        imagesLinks = getImagesLinks();
        obj = itemWrapper.getMonthCashback().getMonthlyMerchants().get(1);
        Intrinsics.checkExpressionValueIsNotNull(obj, "data.monthCashback.monthlyMerchants[1]");
        imagesLinks.add(((MonthlyMerchant) obj).getMerchant().getIcon());
        imagesLinks = getImagesLinks();
        itemWrapper = itemWrapper.getMonthCashback().getMonthlyMerchants().get(2);
        Intrinsics.checkExpressionValueIsNotNull(itemWrapper, "data.monthCashback.monthlyMerchants[2]");
        imagesLinks.add(((MonthlyMerchant) itemWrapper).getMerchant().getIcon());
        loadImages();
    }

    public final void updateImages() {
        loadImages();
    }

    private final void loadImages() {
        DiscountsItemSelectedBinding discountsItemSelectedBinding = this.binding.discountSelect1;
        if (discountsItemSelectedBinding == null) {
            Intrinsics.throwNpe();
        }
        CircleImageView circleImageView = discountsItemSelectedBinding.discountPicture;
        Intrinsics.checkExpressionValueIsNotNull(circleImageView, "binding.discountSelect1!!.discountPicture");
        ImageView imageView = circleImageView;
        String str = (String) getImagesLinks().get(0);
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        ImageHelper.loadRound(imageView, str, new CropCircleTransformation(view.getContext()));
        discountsItemSelectedBinding = this.binding.discountSelect2;
        if (discountsItemSelectedBinding == null) {
            Intrinsics.throwNpe();
        }
        circleImageView = discountsItemSelectedBinding.discountPicture;
        Intrinsics.checkExpressionValueIsNotNull(circleImageView, "binding.discountSelect2!!.discountPicture");
        imageView = circleImageView;
        str = (String) getImagesLinks().get(1);
        view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        ImageHelper.loadRound(imageView, str, new CropCircleTransformation(view.getContext()));
        discountsItemSelectedBinding = this.binding.discountSelect3;
        if (discountsItemSelectedBinding == null) {
            Intrinsics.throwNpe();
        }
        circleImageView = discountsItemSelectedBinding.discountPicture;
        Intrinsics.checkExpressionValueIsNotNull(circleImageView, "binding.discountSelect3!!.discountPicture");
        imageView = circleImageView;
        str = (String) getImagesLinks().get(2);
        view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        ImageHelper.loadRound(imageView, str, new CropCircleTransformation(view.getContext()));
    }
}
