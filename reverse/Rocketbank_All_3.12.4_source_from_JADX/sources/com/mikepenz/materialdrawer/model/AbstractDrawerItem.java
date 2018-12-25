package com.mikepenz.materialdrawer.model;

import android.arch.lifecycle.GeneratedAdapter;
import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mikepenz.materialdrawer.Drawer.OnDrawerItemClickListener;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.Selectable;
import com.mikepenz.materialdrawer.model.utils.ViewHolderFactory;

public abstract class AbstractDrawerItem<T> implements IDrawerItem<T>, Selectable<T> {
    protected boolean mEnabled = true;
    protected int mIdentifier = -1;
    public OnDrawerItemClickListener mOnDrawerItemClickListener = null;
    protected GeneratedAdapter mOnPostBindViewListener$4d96a3f0 = null;
    protected boolean mSelectable = true;
    protected boolean mSelected = false;
    protected Object mTag;

    public abstract ViewHolderFactory getFactory();

    public void onPostBindView(IDrawerItem iDrawerItem, View view) {
    }

    public T withIdentifier(int i) {
        this.mIdentifier = i;
        return this;
    }

    public int getIdentifier() {
        return this.mIdentifier;
    }

    public T withTag(Object obj) {
        this.mTag = obj;
        return this;
    }

    public Object getTag() {
        return this.mTag;
    }

    public T withEnabled(boolean z) {
        this.mEnabled = z;
        return this;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public T withSetSelected(boolean z) {
        this.mSelected = z;
        return this;
    }

    public boolean isSelected() {
        return this.mSelected;
    }

    public T withSelectable(boolean z) {
        this.mSelectable = z;
        return this;
    }

    public boolean isSelectable() {
        return this.mSelectable;
    }

    public OnDrawerItemClickListener getOnDrawerItemClickListener() {
        return this.mOnDrawerItemClickListener;
    }

    public T withOnDrawerItemClickListener(OnDrawerItemClickListener onDrawerItemClickListener) {
        this.mOnDrawerItemClickListener = onDrawerItemClickListener;
        return this;
    }

    public GeneratedAdapter getOnPostBindViewListener$17a5e071() {
        return this.mOnPostBindViewListener$4d96a3f0;
    }

    public T withPostOnBindViewListener$1adaf3bd(GeneratedAdapter generatedAdapter) {
        this.mOnPostBindViewListener$4d96a3f0 = generatedAdapter;
        return this;
    }

    public View generateView(Context context) {
        context = getFactory().factory(LayoutInflater.from(context).inflate(getLayoutRes(), null, false));
        bindView(context);
        return context.itemView;
    }

    public View generateView(Context context, ViewGroup viewGroup) {
        context = getFactory().factory(LayoutInflater.from(context).inflate(getLayoutRes(), viewGroup, false));
        bindView(context);
        return context.itemView;
    }

    public ViewHolder getViewHolder(ViewGroup viewGroup) {
        return getFactory().factory(LayoutInflater.from(viewGroup.getContext()).inflate(getLayoutRes(), viewGroup, false));
    }

    public boolean equals(Integer num) {
        return (num == null || num.intValue() != this.mIdentifier) ? null : true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                return this.mIdentifier == ((AbstractDrawerItem) obj).mIdentifier;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.mIdentifier;
    }
}
