package ru.rocketbank.r2d2.root.chat;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MessageViewHolder.kt */
public class MessageViewHolder extends ViewHolder {
    private final Context context;

    public void clear() {
    }

    public MessageViewHolder(Context context, View view) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.context = context;
    }

    public final Context getContext() {
        return this.context;
    }

    protected final int getDimen(int i) {
        return this.context.getResources().getDimensionPixelSize(i);
    }
}
