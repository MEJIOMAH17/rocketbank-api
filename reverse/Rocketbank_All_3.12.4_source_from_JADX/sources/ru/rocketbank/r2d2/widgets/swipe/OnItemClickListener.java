package ru.rocketbank.r2d2.widgets.swipe;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;

public interface OnItemClickListener {
    void onItemClick(RecyclerView recyclerView, ViewHolder viewHolder);
}
