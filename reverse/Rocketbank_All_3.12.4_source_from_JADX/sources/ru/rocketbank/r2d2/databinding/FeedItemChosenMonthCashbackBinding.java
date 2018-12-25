package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.support.v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.viewholder.ChosenMonthCashback;

public abstract class FeedItemChosenMonthCashbackBinding extends ViewDataBinding {
    public final CardView cardBody;
    protected ChosenMonthCashback mFeed;
    public final ImageView merchantImageViewOne;
    public final ImageView merchantImageViewThree;
    public final ImageView merchantImageViewTwo;
    public final TextView merchantNameOne;
    public final TextView merchantNameThree;
    public final TextView merchantNameTwo;
    public final LinearLayout root;
    public final TextView title;

    public abstract void setFeed(ChosenMonthCashback chosenMonthCashback);

    protected FeedItemChosenMonthCashbackBinding(DataBindingComponent dataBindingComponent, View view, int i, CardView cardView, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, TextView textView2, TextView textView3, LinearLayout linearLayout, TextView textView4) {
        super(dataBindingComponent, view, i);
        this.cardBody = cardView;
        this.merchantImageViewOne = imageView;
        this.merchantImageViewThree = imageView2;
        this.merchantImageViewTwo = imageView3;
        this.merchantNameOne = textView;
        this.merchantNameThree = textView2;
        this.merchantNameTwo = textView3;
        this.root = linearLayout;
        this.title = textView4;
    }

    public ChosenMonthCashback getFeed() {
        return this.mFeed;
    }

    public static FeedItemChosenMonthCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemChosenMonthCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemChosenMonthCashbackBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FeedItemChosenMonthCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FeedItemChosenMonthCashbackBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_chosen_month_cashback, viewGroup, z, dataBindingComponent);
    }

    public static FeedItemChosenMonthCashbackBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return (FeedItemChosenMonthCashbackBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.feed_item_chosen_month_cashback, null, false, dataBindingComponent);
    }

    public static FeedItemChosenMonthCashbackBinding bind(View view, DataBindingComponent dataBindingComponent) {
        return (FeedItemChosenMonthCashbackBinding) bind(dataBindingComponent, view, C0859R.layout.feed_item_chosen_month_cashback);
    }
}
