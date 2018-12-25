package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.discount.DiscountData;
import ru.rocketbank.r2d2.data.binding.discount.DiscountListener;

public class ActivityDiscountDetailsBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView howGet;
    public final ImageView imageView;
    public final IncludeToolbarBinding include;
    private DiscountData mData;
    private long mDirtyFlags = -1;
    private DiscountListener mListener;
    private OnClickListenerImpl mListenerDiscountButtonClickedAndroidViewViewOnClickListener;
    private OnClickListenerImpl1 mListenerLinkClickedAndroidViewViewOnClickListener;
    private final FrameLayout mboundView0;
    public final ObservableScrollView observableScrollView;
    public final RocketTextView promoCodeText;
    public final RocketTextView promoDescription;
    public final LinearLayout promoLayout;
    public final RocketTextView promoTitle;
    public final RocketTextView promoTitleCopy;
    public final RocketTextView promocodeText;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private DiscountListener value;

        public OnClickListenerImpl1 setValue(DiscountListener discountListener) {
            this.value = discountListener;
            return discountListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.linkClicked(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private DiscountListener value;

        public OnClickListenerImpl setValue(DiscountListener discountListener) {
            this.value = discountListener;
            return discountListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.discountButtonClicked(view);
        }
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(11);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"include_toolbar"}, new int[]{7}, new int[]{C0859R.layout.include_toolbar});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.observableScrollView, 8);
        sViewsWithIds.put(C0859R.id.imageView, 9);
        sViewsWithIds.put(C0859R.id.how_get, 10);
    }

    public ActivityDiscountDetailsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 7);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds);
        this.howGet = (RocketTextView) dataBindingComponent[10];
        this.imageView = (ImageView) dataBindingComponent[9];
        this.include = (IncludeToolbarBinding) dataBindingComponent[7];
        setContainedBinding(this.include);
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.observableScrollView = (ObservableScrollView) dataBindingComponent[8];
        this.promoCodeText = (RocketTextView) dataBindingComponent[5];
        this.promoCodeText.setTag(null);
        this.promoDescription = (RocketTextView) dataBindingComponent[2];
        this.promoDescription.setTag(null);
        this.promoLayout = (LinearLayout) dataBindingComponent[3];
        this.promoLayout.setTag(null);
        this.promoTitle = (RocketTextView) dataBindingComponent[1];
        this.promoTitle.setTag(null);
        this.promoTitleCopy = (RocketTextView) dataBindingComponent[4];
        this.promoTitleCopy.setTag(null);
        this.promocodeText = (RocketTextView) dataBindingComponent[6];
        this.promocodeText.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 512;
        }
        this.include.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x0018 }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        r1 = r5.include;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r0 = 0;
        return r0;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.ActivityDiscountDetailsBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (55 == i) {
            setListener((DiscountListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((DiscountData) obj);
        }
        return true;
    }

    public void setListener(DiscountListener discountListener) {
        this.mListener = discountListener;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public DiscountListener getListener() {
        return this.mListener;
    }

    public void setData(DiscountData discountData) {
        this.mData = discountData;
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public DiscountData getData() {
        return this.mData;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.include.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataPromoCode((ObservableField) obj, i2);
            case 1:
                return onChangeDataPromoTitle((ObservableField) obj, i2);
            case 2:
                return onChangeDataPromoCodeVisibility((ObservableBoolean) obj, i2);
            case 3:
                return onChangeDataPromoLink((ObservableField) obj, i2);
            case 4:
                return onChangeInclude((IncludeToolbarBinding) obj, i2);
            case 5:
                return onChangeDataPromoTextCopy((ObservableField) obj, i2);
            case 6:
                return onChangeDataPromoDescription((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataPromoCode(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataPromoTitle(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataPromoCodeVisibility(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataPromoLink(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeInclude(IncludeToolbarBinding includeToolbarBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeDataPromoTextCopy(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeDataPromoDescription(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        OnClickListener onClickListener;
        OnClickListener onClickListener2;
        ActivityDiscountDetailsBinding activityDiscountDetailsBinding = this;
        synchronized (this) {
            try {
                j = activityDiscountDetailsBinding.mDirtyFlags;
                long j2 = 0;
                activityDiscountDetailsBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        DiscountListener discountListener = activityDiscountDetailsBinding.mListener;
        DiscountData discountData = activityDiscountDetailsBinding.mData;
        if ((j & 640) == 0 || discountListener == null) {
            onClickListener = null;
            onClickListener2 = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            OnClickListenerImpl1 onClickListenerImpl1;
            if (activityDiscountDetailsBinding.mListenerDiscountButtonClickedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                activityDiscountDetailsBinding.mListenerDiscountButtonClickedAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = activityDiscountDetailsBinding.mListenerDiscountButtonClickedAndroidViewViewOnClickListener;
            }
            onClickListener2 = onClickListenerImpl.setValue(discountListener);
            if (activityDiscountDetailsBinding.mListenerLinkClickedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl1 = new OnClickListenerImpl1();
                activityDiscountDetailsBinding.mListenerLinkClickedAndroidViewViewOnClickListener = onClickListenerImpl1;
            } else {
                onClickListenerImpl1 = activityDiscountDetailsBinding.mListenerLinkClickedAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl1.setValue(discountListener);
        }
        long j3 = 800;
        long j4 = 776;
        long j5 = 772;
        long j6 = 770;
        long j7 = 769;
        CharSequence charSequence;
        CharSequence charSequence2;
        int i;
        CharSequence charSequence3;
        CharSequence charSequence4;
        CharSequence charSequence5;
        boolean z;
        if ((j & 879) != 0) {
            String str;
            long j8;
            Object obj;
            boolean z2;
            boolean z3;
            Object obj2;
            String str2;
            Object obj3;
            if ((j & 769) != 0) {
                Object obj4 = discountData != null ? discountData.promoCode : null;
                updateRegistration(0, obj4);
                if (obj4 != null) {
                    charSequence = (String) obj4.get();
                    if ((j & 770) != 0) {
                        charSequence2 = discountData == null ? discountData.promoTitle : null;
                        updateRegistration(1, charSequence2);
                        if (charSequence2 != null) {
                            str = (String) charSequence2.get();
                            j8 = j & j5;
                            if (j8 == j2) {
                                obj = discountData == null ? discountData.promoCodeVisibility : null;
                                updateRegistration(2, obj);
                                if (obj == null) {
                                    z2 = obj.get();
                                } else {
                                    z2 = false;
                                }
                                if (j8 != j2) {
                                    j = z2 ? j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
                                }
                                i = z2 ? 0 : 8;
                                z3 = z2;
                            } else {
                                i = 0;
                                z3 = false;
                            }
                            if ((j & j4) != j2) {
                                obj2 = discountData == null ? discountData.promoLink : null;
                                updateRegistration(3, obj2);
                                if (obj2 != null) {
                                    str2 = (String) obj2.get();
                                    if ((j & j3) != j2) {
                                        obj = discountData == null ? discountData.promoTextCopy : null;
                                        updateRegistration(5, obj);
                                        if (obj != null) {
                                            charSequence3 = (String) obj.get();
                                            if ((j & 832) != j2) {
                                                obj3 = discountData == null ? discountData.promoDescription : null;
                                                updateRegistration(6, obj3);
                                                if (obj3 != null) {
                                                    charSequence4 = str2;
                                                    charSequence5 = (String) obj3.get();
                                                    z = z3;
                                                    if ((j & j5) != j2) {
                                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                                    }
                                                    if ((j & 640) != j2) {
                                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                                    }
                                                    if ((j & j7) != j2) {
                                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                                    }
                                                    if ((j & 832) != j2) {
                                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                                    }
                                                    if ((j & j6) != j2) {
                                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                                    }
                                                    if ((j & 800) != j2) {
                                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                                    }
                                                    if ((j & j4) != j2) {
                                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                                    }
                                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                                }
                                            }
                                            charSequence4 = str2;
                                            z = z3;
                                            charSequence5 = null;
                                            if ((j & j5) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                            }
                                            if ((j & 640) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                            }
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                            }
                                            if ((j & j6) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                            }
                                            executeBindingsOn(activityDiscountDetailsBinding.include);
                                        }
                                    }
                                    charSequence3 = null;
                                    if ((j & 832) != j2) {
                                        if (discountData == null) {
                                        }
                                        updateRegistration(6, obj3);
                                        if (obj3 != null) {
                                            charSequence4 = str2;
                                            charSequence5 = (String) obj3.get();
                                            z = z3;
                                            if ((j & j5) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                            }
                                            if ((j & 640) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                            }
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                            }
                                            if ((j & j6) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                            }
                                            executeBindingsOn(activityDiscountDetailsBinding.include);
                                        }
                                    }
                                    charSequence4 = str2;
                                    z = z3;
                                    charSequence5 = null;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            str2 = null;
                            if ((j & j3) != j2) {
                                if (discountData == null) {
                                }
                                updateRegistration(5, obj);
                                if (obj != null) {
                                    charSequence3 = (String) obj.get();
                                    if ((j & 832) != j2) {
                                        if (discountData == null) {
                                        }
                                        updateRegistration(6, obj3);
                                        if (obj3 != null) {
                                            charSequence4 = str2;
                                            charSequence5 = (String) obj3.get();
                                            z = z3;
                                            if ((j & j5) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                            }
                                            if ((j & 640) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                            }
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                            }
                                            if ((j & j6) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                            }
                                            executeBindingsOn(activityDiscountDetailsBinding.include);
                                        }
                                    }
                                    charSequence4 = str2;
                                    z = z3;
                                    charSequence5 = null;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            charSequence3 = null;
                            if ((j & 832) != j2) {
                                if (discountData == null) {
                                }
                                updateRegistration(6, obj3);
                                if (obj3 != null) {
                                    charSequence4 = str2;
                                    charSequence5 = (String) obj3.get();
                                    z = z3;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            charSequence4 = str2;
                            z = z3;
                            charSequence5 = null;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    charSequence2 = null;
                    j8 = j & j5;
                    if (j8 == j2) {
                        i = 0;
                        z3 = false;
                    } else {
                        if (discountData == null) {
                        }
                        updateRegistration(2, obj);
                        if (obj == null) {
                            z2 = false;
                        } else {
                            z2 = obj.get();
                        }
                        if (j8 != j2) {
                            if (z2) {
                            }
                            j = z2 ? j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
                        }
                        if (z2) {
                        }
                        i = z2 ? 0 : 8;
                        z3 = z2;
                    }
                    if ((j & j4) != j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(3, obj2);
                        if (obj2 != null) {
                            str2 = (String) obj2.get();
                            if ((j & j3) != j2) {
                                if (discountData == null) {
                                }
                                updateRegistration(5, obj);
                                if (obj != null) {
                                    charSequence3 = (String) obj.get();
                                    if ((j & 832) != j2) {
                                        if (discountData == null) {
                                        }
                                        updateRegistration(6, obj3);
                                        if (obj3 != null) {
                                            charSequence4 = str2;
                                            charSequence5 = (String) obj3.get();
                                            z = z3;
                                            if ((j & j5) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                            }
                                            if ((j & 640) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                            }
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                            }
                                            if ((j & j6) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                            }
                                            executeBindingsOn(activityDiscountDetailsBinding.include);
                                        }
                                    }
                                    charSequence4 = str2;
                                    z = z3;
                                    charSequence5 = null;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            charSequence3 = null;
                            if ((j & 832) != j2) {
                                if (discountData == null) {
                                }
                                updateRegistration(6, obj3);
                                if (obj3 != null) {
                                    charSequence4 = str2;
                                    charSequence5 = (String) obj3.get();
                                    z = z3;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            charSequence4 = str2;
                            z = z3;
                            charSequence5 = null;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    str2 = null;
                    if ((j & j3) != j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(5, obj);
                        if (obj != null) {
                            charSequence3 = (String) obj.get();
                            if ((j & 832) != j2) {
                                if (discountData == null) {
                                }
                                updateRegistration(6, obj3);
                                if (obj3 != null) {
                                    charSequence4 = str2;
                                    charSequence5 = (String) obj3.get();
                                    z = z3;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            charSequence4 = str2;
                            z = z3;
                            charSequence5 = null;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    charSequence3 = null;
                    if ((j & 832) != j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(6, obj3);
                        if (obj3 != null) {
                            charSequence4 = str2;
                            charSequence5 = (String) obj3.get();
                            z = z3;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    charSequence4 = str2;
                    z = z3;
                    charSequence5 = null;
                    if ((j & j5) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                    }
                    if ((j & 640) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                    }
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                    }
                    if ((j & j6) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                    }
                    executeBindingsOn(activityDiscountDetailsBinding.include);
                }
            }
            charSequence = null;
            if ((j & 770) != 0) {
                if (discountData == null) {
                }
                updateRegistration(1, charSequence2);
                if (charSequence2 != null) {
                    str = (String) charSequence2.get();
                    j8 = j & j5;
                    if (j8 == j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(2, obj);
                        if (obj == null) {
                            z2 = obj.get();
                        } else {
                            z2 = false;
                        }
                        if (j8 != j2) {
                            if (z2) {
                            }
                            j = z2 ? j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
                        }
                        if (z2) {
                        }
                        i = z2 ? 0 : 8;
                        z3 = z2;
                    } else {
                        i = 0;
                        z3 = false;
                    }
                    if ((j & j4) != j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(3, obj2);
                        if (obj2 != null) {
                            str2 = (String) obj2.get();
                            if ((j & j3) != j2) {
                                if (discountData == null) {
                                }
                                updateRegistration(5, obj);
                                if (obj != null) {
                                    charSequence3 = (String) obj.get();
                                    if ((j & 832) != j2) {
                                        if (discountData == null) {
                                        }
                                        updateRegistration(6, obj3);
                                        if (obj3 != null) {
                                            charSequence4 = str2;
                                            charSequence5 = (String) obj3.get();
                                            z = z3;
                                            if ((j & j5) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                            }
                                            if ((j & 640) != j2) {
                                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j7) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                            }
                                            if ((j & 832) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                            }
                                            if ((j & j6) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                            }
                                            if ((j & 800) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                            }
                                            executeBindingsOn(activityDiscountDetailsBinding.include);
                                        }
                                    }
                                    charSequence4 = str2;
                                    z = z3;
                                    charSequence5 = null;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            charSequence3 = null;
                            if ((j & 832) != j2) {
                                if (discountData == null) {
                                }
                                updateRegistration(6, obj3);
                                if (obj3 != null) {
                                    charSequence4 = str2;
                                    charSequence5 = (String) obj3.get();
                                    z = z3;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            charSequence4 = str2;
                            z = z3;
                            charSequence5 = null;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    str2 = null;
                    if ((j & j3) != j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(5, obj);
                        if (obj != null) {
                            charSequence3 = (String) obj.get();
                            if ((j & 832) != j2) {
                                if (discountData == null) {
                                }
                                updateRegistration(6, obj3);
                                if (obj3 != null) {
                                    charSequence4 = str2;
                                    charSequence5 = (String) obj3.get();
                                    z = z3;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            charSequence4 = str2;
                            z = z3;
                            charSequence5 = null;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    charSequence3 = null;
                    if ((j & 832) != j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(6, obj3);
                        if (obj3 != null) {
                            charSequence4 = str2;
                            charSequence5 = (String) obj3.get();
                            z = z3;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    charSequence4 = str2;
                    z = z3;
                    charSequence5 = null;
                    if ((j & j5) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                    }
                    if ((j & 640) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                    }
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                    }
                    if ((j & j6) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                    }
                    executeBindingsOn(activityDiscountDetailsBinding.include);
                }
            }
            charSequence2 = null;
            j8 = j & j5;
            if (j8 == j2) {
                i = 0;
                z3 = false;
            } else {
                if (discountData == null) {
                }
                updateRegistration(2, obj);
                if (obj == null) {
                    z2 = false;
                } else {
                    z2 = obj.get();
                }
                if (j8 != j2) {
                    if (z2) {
                    }
                    j = z2 ? j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH : j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
                }
                if (z2) {
                }
                i = z2 ? 0 : 8;
                z3 = z2;
            }
            if ((j & j4) != j2) {
                if (discountData == null) {
                }
                updateRegistration(3, obj2);
                if (obj2 != null) {
                    str2 = (String) obj2.get();
                    if ((j & j3) != j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(5, obj);
                        if (obj != null) {
                            charSequence3 = (String) obj.get();
                            if ((j & 832) != j2) {
                                if (discountData == null) {
                                }
                                updateRegistration(6, obj3);
                                if (obj3 != null) {
                                    charSequence4 = str2;
                                    charSequence5 = (String) obj3.get();
                                    z = z3;
                                    if ((j & j5) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                                    }
                                    if ((j & 640) != j2) {
                                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j7) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                                    }
                                    if ((j & 832) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                                    }
                                    if ((j & 800) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                                    }
                                    executeBindingsOn(activityDiscountDetailsBinding.include);
                                }
                            }
                            charSequence4 = str2;
                            z = z3;
                            charSequence5 = null;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    charSequence3 = null;
                    if ((j & 832) != j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(6, obj3);
                        if (obj3 != null) {
                            charSequence4 = str2;
                            charSequence5 = (String) obj3.get();
                            z = z3;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    charSequence4 = str2;
                    z = z3;
                    charSequence5 = null;
                    if ((j & j5) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                    }
                    if ((j & 640) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                    }
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                    }
                    if ((j & j6) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                    }
                    executeBindingsOn(activityDiscountDetailsBinding.include);
                }
            }
            str2 = null;
            if ((j & j3) != j2) {
                if (discountData == null) {
                }
                updateRegistration(5, obj);
                if (obj != null) {
                    charSequence3 = (String) obj.get();
                    if ((j & 832) != j2) {
                        if (discountData == null) {
                        }
                        updateRegistration(6, obj3);
                        if (obj3 != null) {
                            charSequence4 = str2;
                            charSequence5 = (String) obj3.get();
                            z = z3;
                            if ((j & j5) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                            }
                            if ((j & 640) != j2) {
                                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                            }
                            if ((j & j7) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                            }
                            if ((j & 832) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                            }
                            if ((j & 800) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                            }
                            executeBindingsOn(activityDiscountDetailsBinding.include);
                        }
                    }
                    charSequence4 = str2;
                    z = z3;
                    charSequence5 = null;
                    if ((j & j5) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                    }
                    if ((j & 640) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                    }
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                    }
                    if ((j & j6) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                    }
                    executeBindingsOn(activityDiscountDetailsBinding.include);
                }
            }
            charSequence3 = null;
            if ((j & 832) != j2) {
                if (discountData == null) {
                }
                updateRegistration(6, obj3);
                if (obj3 != null) {
                    charSequence4 = str2;
                    charSequence5 = (String) obj3.get();
                    z = z3;
                    if ((j & j5) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                        activityDiscountDetailsBinding.promoLayout.setVisibility(i);
                    }
                    if ((j & 640) != j2) {
                        activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                        activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
                    }
                    if ((j & j7) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
                    }
                    if ((j & 832) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
                    }
                    if ((j & j6) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
                    }
                    if ((j & 800) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
                    }
                    executeBindingsOn(activityDiscountDetailsBinding.include);
                }
            }
            charSequence4 = str2;
            z = z3;
            charSequence5 = null;
            if ((j & j5) != j2) {
                activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
                activityDiscountDetailsBinding.promoLayout.setVisibility(i);
            }
            if ((j & 640) != j2) {
                activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
                activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
            }
            if ((j & j7) != j2) {
                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
            }
            if ((j & 832) != j2) {
                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
            }
            if ((j & j6) != j2) {
                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
            }
            if ((j & 800) != j2) {
                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
            }
            if ((j & j4) != j2) {
                TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
            }
            executeBindingsOn(activityDiscountDetailsBinding.include);
        }
        z = false;
        i = 0;
        charSequence5 = null;
        charSequence2 = null;
        charSequence = null;
        charSequence3 = null;
        charSequence4 = null;
        if ((j & j5) != j2) {
            activityDiscountDetailsBinding.promoCodeText.setEnabled(z);
            activityDiscountDetailsBinding.promoLayout.setVisibility(i);
        }
        if ((j & 640) != j2) {
            activityDiscountDetailsBinding.promoCodeText.setOnClickListener(onClickListener2);
            activityDiscountDetailsBinding.promocodeText.setOnClickListener(onClickListener);
        }
        if ((j & j7) != j2) {
            TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoCodeText, charSequence);
        }
        if ((j & 832) != j2) {
            TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoDescription, charSequence5);
        }
        if ((j & j6) != j2) {
            TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitle, charSequence2);
        }
        if ((j & 800) != j2) {
            TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promoTitleCopy, charSequence3);
        }
        if ((j & j4) != j2) {
            TextViewBindingAdapter.setText(activityDiscountDetailsBinding.promocodeText, charSequence4);
        }
        executeBindingsOn(activityDiscountDetailsBinding.include);
    }

    public static ActivityDiscountDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityDiscountDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityDiscountDetailsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_discount_details, viewGroup, z, dataBindingComponent);
    }

    public static ActivityDiscountDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityDiscountDetailsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_discount_details, null, false), dataBindingComponent);
    }

    public static ActivityDiscountDetailsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityDiscountDetailsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_discount_details_0".equals(view.getTag())) {
            return new ActivityDiscountDetailsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
