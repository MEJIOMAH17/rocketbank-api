package com.mikepenz.materialdrawer.adapter;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup;
import com.mikepenz.materialdrawer.model.AbstractDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.Selectable;
import com.mikepenz.materialdrawer.util.RecyclerViewCacheUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

public abstract class BaseDrawerAdapter extends Adapter<ViewHolder> {
    private ArrayList<IDrawerItem> mDrawerItems = new ArrayList();
    private ArrayList<IDrawerItem> mFooterDrawerItems = new ArrayList();
    private ArrayList<IDrawerItem> mHeaderDrawerItems = new ArrayList();
    private OnClickListener mOnClickListener;
    private OnLongClickListener mOnLongClickListener;
    private LinkedList<String> mTypeIds = new LinkedList();
    private LinkedHashMap<String, IDrawerItem> mTypeInstances = new LinkedHashMap();
    private int previousSelection = -1;

    public interface OnClickListener {
        void onClick(View view, int i, IDrawerItem iDrawerItem);
    }

    public interface OnLongClickListener {
    }

    public final void setOnClickListener(OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
    }

    public final void setOnLongClickListener(OnLongClickListener onLongClickListener) {
        this.mOnLongClickListener = onLongClickListener;
    }

    public final ArrayList<IDrawerItem> getDrawerItems() {
        return this.mDrawerItems;
    }

    public final void setDrawerItems(ArrayList<IDrawerItem> arrayList) {
        this.mDrawerItems = arrayList;
        mapPossibleTypes(arrayList);
        int i = 0;
        arrayList = this.mHeaderDrawerItems == null ? null : this.mHeaderDrawerItems.size();
        if (this.mDrawerItems != null) {
            i = this.mDrawerItems.size();
        }
        notifyItemRangeChanged(arrayList, i);
    }

    public final void addDrawerItems(IDrawerItem... iDrawerItemArr) {
        int size = this.mDrawerItems.size();
        if (iDrawerItemArr != null) {
            Collections.addAll(this.mDrawerItems, iDrawerItemArr);
            mapPossibleTypes(this.mDrawerItems);
            notifyItemRangeInserted(size, iDrawerItemArr.length);
        }
    }

    public final void setDrawerItem(int i, IDrawerItem iDrawerItem) {
        this.mDrawerItems.set(i - (this.mHeaderDrawerItems == null ? 0 : this.mHeaderDrawerItems.size()), iDrawerItem);
        mapPossibleType(iDrawerItem);
        notifyItemChanged(i);
    }

    public final void addHeaderDrawerItems(IDrawerItem... iDrawerItemArr) {
        Collections.addAll(this.mHeaderDrawerItems, iDrawerItemArr);
        notifyItemRangeInserted(null, 1);
        mapPossibleTypes(this.mHeaderDrawerItems);
    }

    private void mapPossibleTypes(List<IDrawerItem> list) {
        if (list != null) {
            for (IDrawerItem mapPossibleType : list) {
                mapPossibleType(mapPossibleType);
            }
        }
    }

    private void mapPossibleType(IDrawerItem iDrawerItem) {
        if (!this.mTypeInstances.containsKey(iDrawerItem.getType())) {
            this.mTypeIds.add(iDrawerItem.getType());
            this.mTypeInstances.put(iDrawerItem.getType(), iDrawerItem);
        }
    }

    public int getItemViewType(int i) {
        return this.mTypeIds.indexOf(getItem(i).getType());
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        ViewHolder obtain = RecyclerViewCacheUtil.getInstance().obtain((String) this.mTypeIds.get(i));
        return obtain == null ? ((IDrawerItem) this.mTypeInstances.get(this.mTypeIds.get(i))).getViewHolder(viewGroup) : obtain;
    }

    public void onBindViewHolder(final ViewHolder viewHolder, int i) {
        getItem(i).bindView(viewHolder);
        viewHolder.itemView.setOnClickListener(new android.view.View.OnClickListener() {
            public final void onClick(View view) {
                int adapterPosition = viewHolder.getAdapterPosition();
                IDrawerItem item = BaseDrawerAdapter.this.getItem(adapterPosition);
                if (item != null && item.isEnabled()) {
                    if ((item instanceof Selectable) && item.isSelectable()) {
                        BaseDrawerAdapter.this.handleSelection(view, adapterPosition);
                    }
                    if (BaseDrawerAdapter.this.mOnClickListener != null) {
                        BaseDrawerAdapter.this.mOnClickListener.onClick(view, adapterPosition, item);
                    }
                    if (item instanceof AbstractDrawerItem) {
                        AbstractDrawerItem abstractDrawerItem = (AbstractDrawerItem) item;
                        if (abstractDrawerItem.getOnDrawerItemClickListener() != null) {
                            abstractDrawerItem.getOnDrawerItemClickListener().onItemClick(view, adapterPosition, item);
                        }
                    }
                }
            }
        });
        viewHolder.itemView.setOnLongClickListener(new android.view.View.OnLongClickListener() {
            public final boolean onLongClick(View view) {
                if (BaseDrawerAdapter.this.mOnLongClickListener == null) {
                    return false;
                }
                view = viewHolder.getAdapterPosition();
                BaseDrawerAdapter.this.mOnLongClickListener;
                BaseDrawerAdapter.this.getItem(view);
                return false;
            }
        });
    }

    public final void handleSelection(View view, int i) {
        IDrawerItem item;
        if (this.previousSelection >= 0) {
            item = getItem(this.previousSelection);
            if (item != null) {
                item.withSetSelected(false);
            }
            notifyItemChanged(this.previousSelection);
        } else {
            for (int i2 = 0; i2 < getItemCount(); i2++) {
                if (getItem(i2).isSelected()) {
                    getItem(i2).withSetSelected(false);
                    notifyItemChanged(i2);
                    break;
                }
            }
        }
        if (i >= 0) {
            item = getItem(i);
            if (item != null) {
                item.withSetSelected(true);
            }
            notifyItemChanged(i);
            if (view != null) {
                view.setSelected(true);
                view.invalidate();
            }
        }
        this.previousSelection = i;
    }

    public final IDrawerItem getItem(int i) {
        if (i >= 0) {
            if (i < getItemCount()) {
                int i2 = 0;
                if (i < (this.mHeaderDrawerItems == null ? 0 : this.mHeaderDrawerItems.size())) {
                    return (IDrawerItem) this.mHeaderDrawerItems.get(i);
                }
                ArrayList arrayList;
                if (i < (this.mHeaderDrawerItems == null ? 0 : this.mHeaderDrawerItems.size()) + (this.mDrawerItems == null ? 0 : this.mDrawerItems.size())) {
                    arrayList = this.mDrawerItems;
                    if (this.mHeaderDrawerItems != null) {
                        i2 = this.mHeaderDrawerItems.size();
                    }
                    return (IDrawerItem) arrayList.get(i - i2);
                }
                arrayList = this.mFooterDrawerItems;
                i -= this.mHeaderDrawerItems == null ? 0 : this.mHeaderDrawerItems.size();
                if (this.mDrawerItems != null) {
                    i2 = this.mDrawerItems.size();
                }
                return (IDrawerItem) arrayList.get(i - i2);
            }
        }
        return 0;
    }

    public long getItemId(int i) {
        IDrawerItem item = getItem(i);
        if (item == null || item.getIdentifier() == -1) {
            return super.getItemId(i);
        }
        return (long) item.getIdentifier();
    }

    public int getItemCount() {
        int i = 0;
        int size = ((this.mHeaderDrawerItems == null ? 0 : this.mHeaderDrawerItems.size()) + 0) + (this.mDrawerItems == null ? 0 : this.mDrawerItems.size());
        if (this.mFooterDrawerItems != null) {
            i = this.mFooterDrawerItems.size();
        }
        return size + i;
    }
}
