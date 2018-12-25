package ru.rocketbank.r2d2.adapters.discounts.holders;

import android.content.res.Resources;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import com.facebook.share.internal.ShareConstants;
import java.util.LinkedList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.adapters.discounts.ItemWrapper;

/* compiled from: AbstractDiscountHolder.kt */
public abstract class AbstractDiscountHolder extends ViewHolder {
    private final LinkedList<String> imagesLinks = new LinkedList();
    private final LayoutInflater inflater;
    private final Resources resources;

    public abstract void updateImages();

    public AbstractDiscountHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        super(view);
        LayoutInflater from = LayoutInflater.from(view.getContext());
        Intrinsics.checkExpressionValueIsNotNull(from, "LayoutInflater.from(v.context)");
        this.inflater = from;
        view = view.getResources();
        Intrinsics.checkExpressionValueIsNotNull(view, "v.resources");
        this.resources = view;
    }

    protected final LayoutInflater getInflater() {
        return this.inflater;
    }

    protected final Resources getResources() {
        return this.resources;
    }

    protected final LinkedList<String> getImagesLinks() {
        return this.imagesLinks;
    }

    public void bind(ItemWrapper itemWrapper) {
        Intrinsics.checkParameterIsNotNull(itemWrapper, ShareConstants.WEB_DIALOG_PARAM_DATA);
        this.imagesLinks.clear();
    }
}
