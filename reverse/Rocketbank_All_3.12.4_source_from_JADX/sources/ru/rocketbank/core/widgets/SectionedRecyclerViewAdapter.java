package ru.rocketbank.core.widgets;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Arrays;
import java.util.Comparator;
import ru.rocketbank.r2d2.C0859R;

public final class SectionedRecyclerViewAdapter extends Adapter<ViewHolder> {
    private Adapter mBaseAdapter;
    private int mSectionResourceId = C0859R.layout.friends_section;
    private SparseArray<Section> mSections = new SparseArray();
    private int mTextResourceId = C0859R.id.textView;
    private boolean mValid = true;

    /* renamed from: ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter$2 */
    class C08482 implements Comparator<Section> {
        C08482() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            Section section = (Section) obj;
            Section section2 = (Section) obj2;
            if (section.firstPosition == section2.firstPosition) {
                return null;
            }
            return section.firstPosition < section2.firstPosition ? -1 : 1;
        }
    }

    public static class Section {
        int firstPosition;
        int sectionedPosition;
        CharSequence title;

        public Section(int i, CharSequence charSequence) {
            this.firstPosition = i;
            this.title = charSequence;
        }

        public final int getFirstPosition() {
            return this.firstPosition;
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter$1 */
    class C13451 extends AdapterDataObserver {
        C13451() {
        }

        public final void onChanged() {
            SectionedRecyclerViewAdapter.this.mValid = SectionedRecyclerViewAdapter.this.mBaseAdapter.getItemCount() > 0;
            SectionedRecyclerViewAdapter.this.notifyDataSetChanged();
        }

        public final void onItemRangeChanged(int i, int i2) {
            SectionedRecyclerViewAdapter.this.mValid = SectionedRecyclerViewAdapter.this.mBaseAdapter.getItemCount() > 0;
            SectionedRecyclerViewAdapter.this.notifyItemRangeChanged(i, i2);
        }

        public final void onItemRangeInserted(int i, int i2) {
            SectionedRecyclerViewAdapter.this.mValid = SectionedRecyclerViewAdapter.this.mBaseAdapter.getItemCount() > 0;
            SectionedRecyclerViewAdapter.this.notifyItemRangeInserted(i, i2);
        }

        public final void onItemRangeRemoved(int i, int i2) {
            SectionedRecyclerViewAdapter.this.mValid = SectionedRecyclerViewAdapter.this.mBaseAdapter.getItemCount() > 0;
            SectionedRecyclerViewAdapter.this.notifyItemRangeRemoved(i, i2);
        }
    }

    public static class SectionViewHolder extends ViewHolder {
        public TextView title;

        public SectionViewHolder(View view, int i) {
            super(view);
            this.title = (TextView) view.findViewById(i);
        }
    }

    public SectionedRecyclerViewAdapter(Adapter adapter) {
        this.mBaseAdapter = adapter;
        this.mBaseAdapter.registerAdapterDataObserver(new C13451());
    }

    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new SectionViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.mSectionResourceId, viewGroup, false), this.mTextResourceId);
        }
        return this.mBaseAdapter.onCreateViewHolder(viewGroup, i - 1);
    }

    public final void setSections(Section[] sectionArr) {
        this.mSections.clear();
        Arrays.sort(sectionArr, new C08482());
        int i = 0;
        int length = sectionArr.length;
        int i2 = 0;
        while (i < length) {
            Section section = sectionArr[i];
            section.sectionedPosition = section.firstPosition + i2;
            this.mSections.append(section.sectionedPosition, section);
            i2++;
            i++;
        }
        notifyDataSetChanged();
    }

    public final int getItemCount() {
        return this.mValid ? this.mBaseAdapter.getItemCount() + this.mSections.size() : 0;
    }

    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        if ((this.mSections.get(i) != null ? 1 : null) != null) {
            ((SectionViewHolder) viewHolder).title.setText(((Section) this.mSections.get(i)).title);
        } else {
            this.mBaseAdapter.onBindViewHolder(viewHolder, sectionedPositionToPosition(i));
        }
    }

    public final int getItemViewType(int i) {
        if ((this.mSections.get(i) != null ? 1 : 0) != 0) {
            return 0;
        }
        return this.mBaseAdapter.getItemViewType(sectionedPositionToPosition(i)) + 1;
    }

    private int sectionedPositionToPosition(int i) {
        int i2 = 0;
        if ((this.mSections.get(i) != null ? 1 : 0) != 0) {
            return -1;
        }
        int i3 = 0;
        while (i2 < this.mSections.size() && ((Section) this.mSections.valueAt(i2)).sectionedPosition <= i) {
            i3--;
            i2++;
        }
        return i + i3;
    }

    public final long getItemId(int i) {
        if ((this.mSections.get(i) != null ? 1 : null) != null) {
            return (long) (ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - this.mSections.indexOfKey(i));
        }
        return this.mBaseAdapter.getItemId(sectionedPositionToPosition(i));
    }
}
