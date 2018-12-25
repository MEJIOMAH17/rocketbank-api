package com.mikepenz.materialdrawer.model.interfaces;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup;

public interface IDrawerItem<T> extends Identifyable<T> {
    void bindView(ViewHolder viewHolder);

    View generateView(Context context, ViewGroup viewGroup);

    int getLayoutRes();

    String getType();

    ViewHolder getViewHolder(ViewGroup viewGroup);

    boolean isEnabled();

    boolean isSelectable();

    boolean isSelected();

    T withSetSelected(boolean z);
}
