package ru.rocketbank.r2d2.widgets.recycler.parallax;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: GenericViewHolder.kt */
public class GenericViewHolder extends ViewHolder {
    private ParallaxItem item;

    public GenericViewHolder(View view) {
        super(view);
    }

    public final ParallaxItem getItem() {
        return this.item;
    }

    public final void setItem(ParallaxItem parallaxItem) {
        this.item = parallaxItem;
    }
}
