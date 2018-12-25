package android.databinding.adapters;

import android.content.Context;
import android.databinding.ObservableList;
import android.databinding.ObservableList.OnListChangedCallback;
import android.support.annotation.RestrictTo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

@RestrictTo
class ObservableListAdapter<T> extends BaseAdapter {
    private final Context mContext;
    private final int mDropDownResourceId;
    private final LayoutInflater mLayoutInflater;
    private List<T> mList;
    private OnListChangedCallback mListChangedCallback;
    private final int mResourceId;
    private final int mTextViewResourceId;

    /* renamed from: android.databinding.adapters.ObservableListAdapter$1 */
    class C08851 extends OnListChangedCallback {
        C08851() {
        }

        public void onChanged(ObservableList observableList) {
            ObservableListAdapter.this.notifyDataSetChanged();
        }

        public void onItemRangeChanged(ObservableList observableList, int i, int i2) {
            ObservableListAdapter.this.notifyDataSetChanged();
        }

        public void onItemRangeInserted(ObservableList observableList, int i, int i2) {
            ObservableListAdapter.this.notifyDataSetChanged();
        }

        public void onItemRangeMoved(ObservableList observableList, int i, int i2, int i3) {
            ObservableListAdapter.this.notifyDataSetChanged();
        }

        public void onItemRangeRemoved(ObservableList observableList, int i, int i2) {
            ObservableListAdapter.this.notifyDataSetChanged();
        }
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public ObservableListAdapter(Context context, List<T> list, int i, int i2, int i3) {
        this.mContext = context;
        this.mResourceId = i;
        this.mDropDownResourceId = i2;
        this.mTextViewResourceId = i3;
        if (i == 0) {
            context = null;
        } else {
            context = (LayoutInflater) context.getSystemService("layout_inflater");
        }
        this.mLayoutInflater = context;
        setList(list);
    }

    public void setList(List<T> list) {
        if (this.mList != list) {
            if (this.mList instanceof ObservableList) {
                ((ObservableList) this.mList).removeOnListChangedCallback(this.mListChangedCallback);
            }
            this.mList = list;
            if ((this.mList instanceof ObservableList) != null) {
                if (this.mListChangedCallback == null) {
                    this.mListChangedCallback = new C08851();
                }
                ((ObservableList) this.mList).addOnListChangedCallback(this.mListChangedCallback);
            }
            notifyDataSetChanged();
        }
    }

    public int getCount() {
        return this.mList.size();
    }

    public Object getItem(int i) {
        return this.mList.get(i);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        return getViewForResource(this.mResourceId, i, view, viewGroup);
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return getViewForResource(this.mDropDownResourceId, i, view, viewGroup);
    }

    public View getViewForResource(int i, int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            if (i == 0) {
                view = new TextView(this.mContext);
            } else {
                view = this.mLayoutInflater.inflate(i, viewGroup, false);
            }
        }
        if (this.mTextViewResourceId == 0) {
            i = view;
        } else {
            i = view.findViewById(this.mTextViewResourceId);
        }
        TextView textView = (TextView) i;
        i2 = this.mList.get(i2);
        if ((i2 instanceof CharSequence) != null) {
            i2 = (CharSequence) i2;
        } else {
            i2 = String.valueOf(i2);
        }
        textView.setText(i2);
        return view;
    }
}
