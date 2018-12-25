package ru.rocketbank.r2d2.adapters.discounts.holders;

import android.support.v7.widget.GridLayout;
import android.view.View;
import android.widget.ImageView;
import com.facebook.share.internal.ShareConstants;
import java.util.Collections;
import java.util.Iterator;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.discounts.Gamer;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.adapters.discounts.ItemWrapper;
import ru.rocketbank.r2d2.data.binding.discount.GameItemData;
import ru.rocketbank.r2d2.data.binding.discount.GridDiscountData;
import ru.rocketbank.r2d2.databinding.DiscountGameItemBinding;
import ru.rocketbank.r2d2.databinding.DiscountsGridContainerBinding;

/* compiled from: GameHolder.kt */
public final class GameHolder extends AbstractDiscountHolder {
    private DiscountsGridContainerBinding binding;
    private final GridLayout container;
    private GridDiscountData data;
    private int maxDiscount;
    private CropCircleTransformation transformation;

    public GameHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        super(view);
        this.transformation = new CropCircleTransformation(view.getContext());
        String string = getResources().getString(C0859R.string.game_mode);
        Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.string.game_mode)");
        this.data = new GridDiscountData(string, false);
        view = DiscountsGridContainerBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "DiscountsGridContainerBinding.bind(v)");
        this.binding = view;
        this.binding.setData(this.data);
        view = this.binding.container;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.container");
        this.container = view;
        this.container.setColumnCount(3);
    }

    public final void bind(ItemWrapper itemWrapper) {
        Intrinsics.checkParameterIsNotNull(itemWrapper, ShareConstants.WEB_DIALOG_PARAM_DATA);
        super.bind(itemWrapper);
        this.container.removeAllViews();
        itemWrapper = itemWrapper.getGames();
        if (itemWrapper != null) {
            int i;
            Collections.sort(itemWrapper);
            this.maxDiscount = ((Gamer) itemWrapper.get(0)).percent;
            Iterator it = itemWrapper.iterator();
            while (true) {
                i = 1;
                if (!it.hasNext()) {
                    break;
                }
                boolean z;
                Gamer gamer = (Gamer) it.next();
                if (gamer.percent != this.maxDiscount) {
                    z = false;
                }
                addView(gamer, z);
                getImagesLinks().add(gamer.merchant.android);
            }
            itemWrapper = itemWrapper.size();
            if (itemWrapper < 3) {
                int i2 = 3 - itemWrapper;
                if (i2 > 0) {
                    while (true) {
                        addView$default(this, null, false, 2, null);
                        if (i == i2) {
                            break;
                        }
                        i++;
                    }
                }
            }
        }
    }

    public final void updateImages() {
        int size = getImagesLinks().size() - 1;
        if (size >= 0) {
            int i = 0;
            while (true) {
                View findViewById = this.container.getChildAt(i).findViewById(C0859R.id.game_image);
                if (findViewById == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
                }
                ImageHelper.loadRound((ImageView) findViewById, (String) getImagesLinks().get(i), this.transformation);
                if (i != size) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    static /* bridge */ /* synthetic */ void addView$default(GameHolder gameHolder, Gamer gamer, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        gameHolder.addView(gamer, z);
    }

    private final void addView(Gamer gamer, boolean z) {
        View inflate = getInflater().inflate(C0859R.layout.discount_game_item, this.container, false);
        if (gamer != null) {
            DiscountGameItemBinding bind = DiscountGameItemBinding.bind(inflate);
            GameItemData gameItemData = new GameItemData(gamer.percent, z);
            Intrinsics.checkExpressionValueIsNotNull(bind, "gameBinding");
            bind.setData(gameItemData);
            z = bind.gameImage;
            Intrinsics.checkExpressionValueIsNotNull(z, "gameBinding.gameImage");
            ImageHelper.loadRound((ImageView) z, gamer.merchant.android, this.transformation);
        }
        this.container.addView(inflate);
    }
}
