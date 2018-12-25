package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.widgets.BarChartView.Adapter;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: ParallaxItem.kt */
public class ParallaxItem {
    private Adapter barChartAdapter;
    private FeedItem feedItem;
    private boolean hideArrow;
    private int id;
    private String link;
    private Function2<? super ParallaxItem, ? super GenericViewHolder, Unit> onBind;
    private Function1<? super ParallaxItem, Unit> onClick;
    private Function3<? super ParallaxItem, ? super Boolean, ? super GenericViewHolder, Unit> onSwitch;
    private AbstractOperation operation;
    private Object payload;
    private String subtitle;
    private String title;
    private int type = 1;
    private int viewType;

    public final int getId() {
        return this.id;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final int getViewType() {
        return this.viewType;
    }

    public final void setViewType(int i) {
        this.viewType = i;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final String getSubtitle() {
        return this.subtitle;
    }

    public final void setSubtitle(String str) {
        this.subtitle = str;
    }

    public final String getLink() {
        return this.link;
    }

    public final void setLink(String str) {
        this.link = str;
    }

    public final FeedItem getFeedItem() {
        return this.feedItem;
    }

    public final void setFeedItem(FeedItem feedItem) {
        this.feedItem = feedItem;
    }

    public final AbstractOperation getOperation() {
        return this.operation;
    }

    public final void setOperation(AbstractOperation abstractOperation) {
        this.operation = abstractOperation;
    }

    public final Object getPayload() {
        return this.payload;
    }

    public final void setPayload(Object obj) {
        this.payload = obj;
    }

    public final Function1<ParallaxItem, Unit> getOnClick() {
        return this.onClick;
    }

    public final void setOnClick(Function1<? super ParallaxItem, Unit> function1) {
        this.onClick = function1;
    }

    public final Function3<ParallaxItem, Boolean, GenericViewHolder, Unit> getOnSwitch() {
        return this.onSwitch;
    }

    public final void setOnSwitch(Function3<? super ParallaxItem, ? super Boolean, ? super GenericViewHolder, Unit> function3) {
        this.onSwitch = function3;
    }

    public final Function2<ParallaxItem, GenericViewHolder, Unit> getOnBind() {
        return this.onBind;
    }

    public final void setOnBind(Function2<? super ParallaxItem, ? super GenericViewHolder, Unit> function2) {
        this.onBind = function2;
    }

    public final Adapter getBarChartAdapter() {
        return this.barChartAdapter;
    }

    public final void setBarChartAdapter(Adapter adapter) {
        this.barChartAdapter = adapter;
    }

    public final boolean getHideArrow() {
        return this.hideArrow;
    }

    public final void setHideArrow(boolean z) {
        this.hideArrow = z;
    }

    public final <T extends AbstractOperation> T getTypedOperation() {
        T t = this.operation;
        if (t != null) {
            return t;
        }
        throw new TypeCastException("null cannot be cast to non-null type T");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ParallaxItem)) {
            return false;
        }
        ParallaxItem parallaxItem = (ParallaxItem) obj;
        if (this.viewType == parallaxItem.viewType && this.id == parallaxItem.id && parallaxItem.type == this.type) {
            return true;
        }
        return false;
    }
}
