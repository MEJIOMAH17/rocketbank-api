package ru.rocketbank.r2d2.adapters;

import android.support.v7.util.SortedList.Callback;
import android.util.Log;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ParallaxAdapter.kt */
final class ParallaxAdapter$sortedCallback$2 extends Lambda implements Function0<C14541> {
    final /* synthetic */ ParallaxAdapter this$0;

    ParallaxAdapter$sortedCallback$2(ParallaxAdapter parallaxAdapter) {
        this.this$0 = parallaxAdapter;
        super(0);
    }

    public final C14541 invoke() {
        return new Callback<ParallaxItem>() {
            public final boolean areContentsTheSame(ParallaxItem parallaxItem, ParallaxItem parallaxItem2) {
                Intrinsics.checkParameterIsNotNull(parallaxItem, "oldItem");
                Intrinsics.checkParameterIsNotNull(parallaxItem2, "newItem");
                return false;
            }

            public final int compare(ParallaxItem parallaxItem, ParallaxItem parallaxItem2) {
                Intrinsics.checkParameterIsNotNull(parallaxItem, "first");
                Intrinsics.checkParameterIsNotNull(parallaxItem2, "second");
                return ((Number) this.this$0.getSortMethod().invoke(parallaxItem2, parallaxItem)).intValue();
            }

            public final void onInserted(int i, int i2) {
                int size = this.this$0.getItems().size() + 1;
                String str = ParallaxAdapter.TAG;
                StringBuilder stringBuilder = new StringBuilder("onInserted: ");
                stringBuilder.append(i);
                stringBuilder.append(' ');
                stringBuilder.append(size);
                stringBuilder.append(' ');
                stringBuilder.append(this.this$0.getItemCount());
                stringBuilder.append(' ');
                stringBuilder.append(i2);
                Log.v(str, stringBuilder.toString());
                this.this$0.notifyItemRangeInserted(i + size, i2);
            }

            public final void onRemoved(int i, int i2) {
                int size = this.this$0.getItems().size() + 1;
                String str = ParallaxAdapter.TAG;
                StringBuilder stringBuilder = new StringBuilder("onRemoved: ");
                stringBuilder.append(i);
                stringBuilder.append(' ');
                stringBuilder.append(size);
                stringBuilder.append(' ');
                stringBuilder.append(this.this$0.getItemCount());
                Log.v(str, stringBuilder.toString());
                this.this$0.notifyItemRangeRemoved(size + i, i2);
            }

            public final void onMoved(int i, int i2) {
                int size = this.this$0.getItems().size() + 1;
                String str = ParallaxAdapter.TAG;
                StringBuilder stringBuilder = new StringBuilder("onMoved: ");
                stringBuilder.append(i);
                stringBuilder.append(' ');
                stringBuilder.append(i2);
                stringBuilder.append(' ');
                stringBuilder.append(size);
                stringBuilder.append(' ');
                stringBuilder.append(this.this$0.getItemCount());
                Log.v(str, stringBuilder.toString());
                this.this$0.notifyItemMoved(i + size, i2 + size);
            }

            public final void onChanged(int i, int i2) {
                int size = this.this$0.getItems().size() + 1;
                int i3 = i + size;
                String str = ParallaxAdapter.TAG;
                StringBuilder stringBuilder = new StringBuilder("onChanged: ");
                stringBuilder.append(i);
                stringBuilder.append(' ');
                stringBuilder.append(i3);
                stringBuilder.append(' ');
                stringBuilder.append(size);
                stringBuilder.append(' ');
                stringBuilder.append(this.this$0.getItemCount());
                stringBuilder.append(' ');
                stringBuilder.append(i2);
                Log.v(str, stringBuilder.toString());
                this.this$0.notifyItemRangeChanged(i3, i2);
            }

            public final boolean areItemsTheSame(ParallaxItem parallaxItem, ParallaxItem parallaxItem2) {
                Intrinsics.checkParameterIsNotNull(parallaxItem, "item1");
                Intrinsics.checkParameterIsNotNull(parallaxItem2, "item2");
                if (parallaxItem != parallaxItem2) {
                    if (((Boolean) this.this$0.getEqualMethod().invoke(parallaxItem, parallaxItem2)).booleanValue() == null) {
                        return null;
                    }
                }
                return true;
            }
        };
    }
}
