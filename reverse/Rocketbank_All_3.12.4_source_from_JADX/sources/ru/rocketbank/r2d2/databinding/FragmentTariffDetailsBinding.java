package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableList;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.adapters.ViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.List;
import me.grantland.widget.AutofitTextView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.tariff.TariffData;
import ru.rocketbank.r2d2.data.binding.tariff.TariffEventsListener;
import ru.rocketbank.r2d2.data.binding.tariff.TariffItemData;

public class FragmentTariffDetailsBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final RocketAutofitTextView activate;
    public final RocketTextView descriptionLink;
    public final FrameLayout headerTariff;
    public final ImageView imageViewInfinity;
    public final TariffItemBinding item1;
    public final TariffItemBinding item2;
    public final TariffItemBinding item3;
    public final LinearLayout itemsContainer;
    private final OnClickListener mCallback2;
    private TariffData mData;
    private long mDirtyFlags = -1;
    private ObservableList<TariffItemData> mItems;
    private TariffEventsListener mListener;
    private OnClickListenerImpl mListenerOnLinkClickedAndroidViewViewOnClickListener;
    private final FrameLayout mboundView0;
    public final RocketTextView month;
    public final RocketTextView price;
    public final RocketTextView tariff;
    public final ImageView tariffImg;
    public final AutofitTextView tariffName;

    public static class OnClickListenerImpl implements OnClickListener {
        private TariffEventsListener value;

        public OnClickListenerImpl setValue(TariffEventsListener tariffEventsListener) {
            this.value = tariffEventsListener;
            return tariffEventsListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onLinkClicked(view);
        }
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(14);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(4, new String[]{"tariff_item", "tariff_item", "tariff_item"}, new int[]{7, 8, 9}, new int[]{C0859R.layout.tariff_item, C0859R.layout.tariff_item, C0859R.layout.tariff_item});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.header_tariff, 10);
        sViewsWithIds.put(C0859R.id.tariff_img, 11);
        sViewsWithIds.put(C0859R.id.tariff, 12);
        sViewsWithIds.put(C0859R.id.month, 13);
    }

    public FragmentTariffDetailsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 10);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 14, sIncludes, sViewsWithIds);
        this.activate = (RocketAutofitTextView) dataBindingComponent[6];
        this.activate.setTag(null);
        this.descriptionLink = (RocketTextView) dataBindingComponent[5];
        this.descriptionLink.setTag(null);
        this.headerTariff = (FrameLayout) dataBindingComponent[10];
        this.imageViewInfinity = (ImageView) dataBindingComponent[1];
        this.imageViewInfinity.setTag(null);
        this.item1 = (TariffItemBinding) dataBindingComponent[7];
        setContainedBinding(this.item1);
        this.item2 = (TariffItemBinding) dataBindingComponent[8];
        setContainedBinding(this.item2);
        this.item3 = (TariffItemBinding) dataBindingComponent[9];
        setContainedBinding(this.item3);
        this.itemsContainer = (LinearLayout) dataBindingComponent[4];
        this.itemsContainer.setTag(null);
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.month = (RocketTextView) dataBindingComponent[13];
        this.price = (RocketTextView) dataBindingComponent[3];
        this.price.setTag(null);
        this.tariff = (RocketTextView) dataBindingComponent[12];
        this.tariffImg = (ImageView) dataBindingComponent[11];
        this.tariffName = (AutofitTextView) dataBindingComponent[2];
        this.tariffName.setTag(null);
        setRootTag(view);
        this.mCallback2 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        }
        this.item1.invalidateAll();
        this.item2.invalidateAll();
        this.item3.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x002a }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x002a }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x002a }
        r1 = r5.item1;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r1 = r5.item2;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x001f;
    L_0x001e:
        return r0;
    L_0x001f:
        r1 = r5.item3;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0028;
    L_0x0027:
        return r0;
    L_0x0028:
        r0 = 0;
        return r0;
    L_0x002a:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x002a }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.FragmentTariffDetailsBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (55 == i) {
            setListener((TariffEventsListener) obj);
        } else if (24 == i) {
            setData((TariffData) obj);
        } else if (50 != i) {
            return false;
        } else {
            setItems((ObservableList) obj);
        }
        return true;
    }

    public void setListener(TariffEventsListener tariffEventsListener) {
        this.mListener = tariffEventsListener;
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public TariffEventsListener getListener() {
        return this.mListener;
    }

    public void setData(TariffData tariffData) {
        this.mData = tariffData;
        synchronized (this) {
            this.mDirtyFlags |= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public TariffData getData() {
        return this.mData;
    }

    public void setItems(ObservableList<TariffItemData> observableList) {
        updateRegistration(8, observableList);
        this.mItems = observableList;
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    public ObservableList<TariffItemData> getItems() {
        return this.mItems;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.item1.setLifecycleOwner(lifecycleOwner);
        this.item2.setLifecycleOwner(lifecycleOwner);
        this.item3.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataButtonColor((ObservableField) obj, i2);
            case 1:
                return onChangeDataPriceLabel((ObservableField) obj, i2);
            case 2:
                return onChangeDataName((ObservableField) obj, i2);
            case 3:
                return onChangeDataIsSalary((ObservableBoolean) obj, i2);
            case 4:
                return onChangeItem2((TariffItemBinding) obj, i2);
            case 5:
                return onChangeItem3((TariffItemBinding) obj, i2);
            case 6:
                return onChangeItem1((TariffItemBinding) obj, i2);
            case 7:
                return onChangeDataButtonText((ObservableField) obj, i2);
            case 8:
                return onChangeItems((ObservableList) obj, i2);
            case 9:
                return onChangeDataIsButtonActivate((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataButtonColor(ObservableField<Drawable> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataPriceLabel(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataIsSalary(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeItem2(TariffItemBinding tariffItemBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeItem3(TariffItemBinding tariffItemBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeItem1(TariffItemBinding tariffItemBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    private boolean onChangeDataButtonText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        return true;
    }

    private boolean onChangeItems(ObservableList<TariffItemData> observableList, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        return true;
    }

    private boolean onChangeDataIsButtonActivate(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 512;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        OnClickListener onClickListener;
        FragmentTariffDetailsBinding fragmentTariffDetailsBinding = this;
        synchronized (this) {
            try {
                j = fragmentTariffDetailsBinding.mDirtyFlags;
                long j2 = 0;
                fragmentTariffDetailsBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        TariffEventsListener tariffEventsListener = fragmentTariffDetailsBinding.mListener;
        TariffData tariffData = fragmentTariffDetailsBinding.mData;
        List list = fragmentTariffDetailsBinding.mItems;
        if ((j & 5120) == 0 || tariffEventsListener == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (fragmentTariffDetailsBinding.mListenerOnLinkClickedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                fragmentTariffDetailsBinding.mListenerOnLinkClickedAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = fragmentTariffDetailsBinding.mListenerOnLinkClickedAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(tariffEventsListener);
        }
        long j3 = 6272;
        long j4 = 6152;
        int i = 2;
        long j5 = 6148;
        int i2 = 1;
        long j6 = 6146;
        long j7 = 6145;
        Object obj = null;
        Drawable drawable;
        CharSequence charSequence;
        CharSequence charSequence2;
        CharSequence charSequence3;
        boolean z;
        long j8;
        TariffItemData tariffItemData;
        TariffItemData tariffItemData2;
        TariffItemData tariffItemData3;
        if ((j & 6799) != 0) {
            ObservableField priceLabel;
            Object name;
            long j9;
            Object isSalary;
            boolean z2;
            Object buttonText;
            Object isButtonActivate;
            if ((j & 6145) != 0) {
                Object buttonColor = tariffData != null ? tariffData.getButtonColor() : null;
                updateRegistration(0, buttonColor);
                if (buttonColor != null) {
                    drawable = (Drawable) buttonColor.get();
                    if ((j & 6146) != 0) {
                        if (tariffData == null) {
                            priceLabel = tariffData.getPriceLabel();
                        } else {
                            obj = null;
                        }
                        updateRegistration(i2, obj);
                        if (obj != null) {
                            charSequence = (String) obj.get();
                            if ((j & j5) != j2) {
                                name = tariffData == null ? tariffData.getName() : null;
                                updateRegistration(i, name);
                                if (name != null) {
                                    charSequence2 = (String) name.get();
                                    j9 = j & j4;
                                    if (j9 == j2) {
                                        isSalary = tariffData == null ? tariffData.isSalary() : null;
                                        updateRegistration(3, isSalary);
                                        if (isSalary == null) {
                                            z2 = isSalary.get();
                                        } else {
                                            z2 = false;
                                        }
                                        j9 = j9 == j2 ? z2 ? j | PlaybackStateCompat.ACTION_PREPARE : j | PlaybackStateCompat.ACTION_PLAY_FROM_URI : j;
                                        i = z2 ? 0 : 4;
                                        j = j9;
                                    } else {
                                        i = 0;
                                    }
                                    if ((j & j3) != j2) {
                                        buttonText = tariffData == null ? tariffData.getButtonText() : null;
                                        updateRegistration(7, buttonText);
                                        if (buttonText != null) {
                                            charSequence3 = (String) buttonText.get();
                                            if ((j & 6656) != j2) {
                                                isButtonActivate = tariffData == null ? tariffData.isButtonActivate() : null;
                                                updateRegistration(9, isButtonActivate);
                                                if (isButtonActivate != null) {
                                                    z = isButtonActivate.get();
                                                    j8 = j & 4352;
                                                    if (j8 != j2 || list == null) {
                                                        tariffItemData = null;
                                                        tariffItemData2 = null;
                                                        tariffItemData3 = null;
                                                    } else {
                                                        tariffItemData2 = (TariffItemData) getFromList(list, 1);
                                                        tariffItemData3 = (TariffItemData) getFromList(list, 0);
                                                        tariffItemData = (TariffItemData) getFromList(list, 2);
                                                    }
                                                    if ((j & j7) != 0) {
                                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                                    }
                                                    if ((j & 6656) != 0) {
                                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                                    }
                                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                                    }
                                                    if ((j & 6272) != 0) {
                                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                                    }
                                                    if ((j & 5120) != 0) {
                                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                                    }
                                                    if ((j & j4) != 0) {
                                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                                    }
                                                    if (j8 != 0) {
                                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                                    }
                                                    if ((j & j6) != 0) {
                                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                                    }
                                                    if ((j & j5) != 0) {
                                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                                    }
                                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                                }
                                            }
                                            z = false;
                                            j8 = j & 4352;
                                            if (j8 != j2) {
                                            }
                                            tariffItemData = null;
                                            tariffItemData2 = null;
                                            tariffItemData3 = null;
                                            if ((j & j7) != 0) {
                                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                            }
                                            if ((j & 6656) != 0) {
                                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                                            }
                                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                            }
                                            if ((j & 6272) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                            }
                                            if ((j & 5120) != 0) {
                                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j4) != 0) {
                                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                            }
                                            if (j8 != 0) {
                                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                            }
                                            if ((j & j6) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                            }
                                            if ((j & j5) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                            }
                                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                        }
                                    }
                                    charSequence3 = null;
                                    if ((j & 6656) != j2) {
                                        if (tariffData == null) {
                                        }
                                        updateRegistration(9, isButtonActivate);
                                        if (isButtonActivate != null) {
                                            z = isButtonActivate.get();
                                            j8 = j & 4352;
                                            if (j8 != j2) {
                                            }
                                            tariffItemData = null;
                                            tariffItemData2 = null;
                                            tariffItemData3 = null;
                                            if ((j & j7) != 0) {
                                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                            }
                                            if ((j & 6656) != 0) {
                                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                                            }
                                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                            }
                                            if ((j & 6272) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                            }
                                            if ((j & 5120) != 0) {
                                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j4) != 0) {
                                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                            }
                                            if (j8 != 0) {
                                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                            }
                                            if ((j & j6) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                            }
                                            if ((j & j5) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                            }
                                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                        }
                                    }
                                    z = false;
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            charSequence2 = null;
                            j9 = j & j4;
                            if (j9 == j2) {
                                i = 0;
                            } else {
                                if (tariffData == null) {
                                }
                                updateRegistration(3, isSalary);
                                if (isSalary == null) {
                                    z2 = false;
                                } else {
                                    z2 = isSalary.get();
                                }
                                if (j9 == j2) {
                                }
                                if (z2) {
                                }
                                i = z2 ? 0 : 4;
                                j = j9;
                            }
                            if ((j & j3) != j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(7, buttonText);
                                if (buttonText != null) {
                                    charSequence3 = (String) buttonText.get();
                                    if ((j & 6656) != j2) {
                                        if (tariffData == null) {
                                        }
                                        updateRegistration(9, isButtonActivate);
                                        if (isButtonActivate != null) {
                                            z = isButtonActivate.get();
                                            j8 = j & 4352;
                                            if (j8 != j2) {
                                            }
                                            tariffItemData = null;
                                            tariffItemData2 = null;
                                            tariffItemData3 = null;
                                            if ((j & j7) != 0) {
                                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                            }
                                            if ((j & 6656) != 0) {
                                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                                            }
                                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                            }
                                            if ((j & 6272) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                            }
                                            if ((j & 5120) != 0) {
                                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j4) != 0) {
                                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                            }
                                            if (j8 != 0) {
                                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                            }
                                            if ((j & j6) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                            }
                                            if ((j & j5) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                            }
                                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                        }
                                    }
                                    z = false;
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            charSequence3 = null;
                            if ((j & 6656) != j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(9, isButtonActivate);
                                if (isButtonActivate != null) {
                                    z = isButtonActivate.get();
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            z = false;
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    charSequence = null;
                    if ((j & j5) != j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(i, name);
                        if (name != null) {
                            charSequence2 = (String) name.get();
                            j9 = j & j4;
                            if (j9 == j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(3, isSalary);
                                if (isSalary == null) {
                                    z2 = isSalary.get();
                                } else {
                                    z2 = false;
                                }
                                if (j9 == j2) {
                                    if (z2) {
                                    }
                                }
                                if (z2) {
                                }
                                i = z2 ? 0 : 4;
                                j = j9;
                            } else {
                                i = 0;
                            }
                            if ((j & j3) != j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(7, buttonText);
                                if (buttonText != null) {
                                    charSequence3 = (String) buttonText.get();
                                    if ((j & 6656) != j2) {
                                        if (tariffData == null) {
                                        }
                                        updateRegistration(9, isButtonActivate);
                                        if (isButtonActivate != null) {
                                            z = isButtonActivate.get();
                                            j8 = j & 4352;
                                            if (j8 != j2) {
                                            }
                                            tariffItemData = null;
                                            tariffItemData2 = null;
                                            tariffItemData3 = null;
                                            if ((j & j7) != 0) {
                                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                            }
                                            if ((j & 6656) != 0) {
                                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                                            }
                                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                            }
                                            if ((j & 6272) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                            }
                                            if ((j & 5120) != 0) {
                                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j4) != 0) {
                                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                            }
                                            if (j8 != 0) {
                                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                            }
                                            if ((j & j6) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                            }
                                            if ((j & j5) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                            }
                                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                        }
                                    }
                                    z = false;
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            charSequence3 = null;
                            if ((j & 6656) != j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(9, isButtonActivate);
                                if (isButtonActivate != null) {
                                    z = isButtonActivate.get();
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            z = false;
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    charSequence2 = null;
                    j9 = j & j4;
                    if (j9 == j2) {
                        i = 0;
                    } else {
                        if (tariffData == null) {
                        }
                        updateRegistration(3, isSalary);
                        if (isSalary == null) {
                            z2 = false;
                        } else {
                            z2 = isSalary.get();
                        }
                        if (j9 == j2) {
                        }
                        if (z2) {
                        }
                        i = z2 ? 0 : 4;
                        j = j9;
                    }
                    if ((j & j3) != j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(7, buttonText);
                        if (buttonText != null) {
                            charSequence3 = (String) buttonText.get();
                            if ((j & 6656) != j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(9, isButtonActivate);
                                if (isButtonActivate != null) {
                                    z = isButtonActivate.get();
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            z = false;
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    charSequence3 = null;
                    if ((j & 6656) != j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(9, isButtonActivate);
                        if (isButtonActivate != null) {
                            z = isButtonActivate.get();
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    z = false;
                    j8 = j & 4352;
                    if (j8 != j2) {
                    }
                    tariffItemData = null;
                    tariffItemData2 = null;
                    tariffItemData3 = null;
                    if ((j & j7) != 0) {
                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                    }
                    if ((j & 6656) != 0) {
                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                    }
                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                    }
                    if ((j & 6272) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                    }
                    if ((j & 5120) != 0) {
                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != 0) {
                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                    }
                    if (j8 != 0) {
                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                    }
                    if ((j & j6) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                    }
                    if ((j & j5) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                    }
                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                }
            }
            drawable = null;
            if ((j & 6146) != 0) {
                if (tariffData == null) {
                    obj = null;
                } else {
                    priceLabel = tariffData.getPriceLabel();
                }
                updateRegistration(i2, obj);
                if (obj != null) {
                    charSequence = (String) obj.get();
                    if ((j & j5) != j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(i, name);
                        if (name != null) {
                            charSequence2 = (String) name.get();
                            j9 = j & j4;
                            if (j9 == j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(3, isSalary);
                                if (isSalary == null) {
                                    z2 = isSalary.get();
                                } else {
                                    z2 = false;
                                }
                                if (j9 == j2) {
                                    if (z2) {
                                    }
                                }
                                if (z2) {
                                }
                                i = z2 ? 0 : 4;
                                j = j9;
                            } else {
                                i = 0;
                            }
                            if ((j & j3) != j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(7, buttonText);
                                if (buttonText != null) {
                                    charSequence3 = (String) buttonText.get();
                                    if ((j & 6656) != j2) {
                                        if (tariffData == null) {
                                        }
                                        updateRegistration(9, isButtonActivate);
                                        if (isButtonActivate != null) {
                                            z = isButtonActivate.get();
                                            j8 = j & 4352;
                                            if (j8 != j2) {
                                            }
                                            tariffItemData = null;
                                            tariffItemData2 = null;
                                            tariffItemData3 = null;
                                            if ((j & j7) != 0) {
                                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                            }
                                            if ((j & 6656) != 0) {
                                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                                            }
                                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                            }
                                            if ((j & 6272) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                            }
                                            if ((j & 5120) != 0) {
                                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j4) != 0) {
                                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                            }
                                            if (j8 != 0) {
                                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                            }
                                            if ((j & j6) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                            }
                                            if ((j & j5) != 0) {
                                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                            }
                                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                        }
                                    }
                                    z = false;
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            charSequence3 = null;
                            if ((j & 6656) != j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(9, isButtonActivate);
                                if (isButtonActivate != null) {
                                    z = isButtonActivate.get();
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            z = false;
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    charSequence2 = null;
                    j9 = j & j4;
                    if (j9 == j2) {
                        i = 0;
                    } else {
                        if (tariffData == null) {
                        }
                        updateRegistration(3, isSalary);
                        if (isSalary == null) {
                            z2 = false;
                        } else {
                            z2 = isSalary.get();
                        }
                        if (j9 == j2) {
                        }
                        if (z2) {
                        }
                        i = z2 ? 0 : 4;
                        j = j9;
                    }
                    if ((j & j3) != j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(7, buttonText);
                        if (buttonText != null) {
                            charSequence3 = (String) buttonText.get();
                            if ((j & 6656) != j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(9, isButtonActivate);
                                if (isButtonActivate != null) {
                                    z = isButtonActivate.get();
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            z = false;
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    charSequence3 = null;
                    if ((j & 6656) != j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(9, isButtonActivate);
                        if (isButtonActivate != null) {
                            z = isButtonActivate.get();
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    z = false;
                    j8 = j & 4352;
                    if (j8 != j2) {
                    }
                    tariffItemData = null;
                    tariffItemData2 = null;
                    tariffItemData3 = null;
                    if ((j & j7) != 0) {
                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                    }
                    if ((j & 6656) != 0) {
                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                    }
                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                    }
                    if ((j & 6272) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                    }
                    if ((j & 5120) != 0) {
                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != 0) {
                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                    }
                    if (j8 != 0) {
                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                    }
                    if ((j & j6) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                    }
                    if ((j & j5) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                    }
                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                }
            }
            charSequence = null;
            if ((j & j5) != j2) {
                if (tariffData == null) {
                }
                updateRegistration(i, name);
                if (name != null) {
                    charSequence2 = (String) name.get();
                    j9 = j & j4;
                    if (j9 == j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(3, isSalary);
                        if (isSalary == null) {
                            z2 = isSalary.get();
                        } else {
                            z2 = false;
                        }
                        if (j9 == j2) {
                            if (z2) {
                            }
                        }
                        if (z2) {
                        }
                        i = z2 ? 0 : 4;
                        j = j9;
                    } else {
                        i = 0;
                    }
                    if ((j & j3) != j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(7, buttonText);
                        if (buttonText != null) {
                            charSequence3 = (String) buttonText.get();
                            if ((j & 6656) != j2) {
                                if (tariffData == null) {
                                }
                                updateRegistration(9, isButtonActivate);
                                if (isButtonActivate != null) {
                                    z = isButtonActivate.get();
                                    j8 = j & 4352;
                                    if (j8 != j2) {
                                    }
                                    tariffItemData = null;
                                    tariffItemData2 = null;
                                    tariffItemData3 = null;
                                    if ((j & j7) != 0) {
                                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                                    }
                                    if ((j & 6656) != 0) {
                                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                                    }
                                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                                    }
                                    if ((j & 6272) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                                    }
                                    if ((j & 5120) != 0) {
                                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                                    }
                                    if (j8 != 0) {
                                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                                    }
                                    if ((j & j6) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                                    }
                                    if ((j & j5) != 0) {
                                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                                    }
                                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                                }
                            }
                            z = false;
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    charSequence3 = null;
                    if ((j & 6656) != j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(9, isButtonActivate);
                        if (isButtonActivate != null) {
                            z = isButtonActivate.get();
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    z = false;
                    j8 = j & 4352;
                    if (j8 != j2) {
                    }
                    tariffItemData = null;
                    tariffItemData2 = null;
                    tariffItemData3 = null;
                    if ((j & j7) != 0) {
                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                    }
                    if ((j & 6656) != 0) {
                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                    }
                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                    }
                    if ((j & 6272) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                    }
                    if ((j & 5120) != 0) {
                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != 0) {
                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                    }
                    if (j8 != 0) {
                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                    }
                    if ((j & j6) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                    }
                    if ((j & j5) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                    }
                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                }
            }
            charSequence2 = null;
            j9 = j & j4;
            if (j9 == j2) {
                i = 0;
            } else {
                if (tariffData == null) {
                }
                updateRegistration(3, isSalary);
                if (isSalary == null) {
                    z2 = false;
                } else {
                    z2 = isSalary.get();
                }
                if (j9 == j2) {
                }
                if (z2) {
                }
                i = z2 ? 0 : 4;
                j = j9;
            }
            if ((j & j3) != j2) {
                if (tariffData == null) {
                }
                updateRegistration(7, buttonText);
                if (buttonText != null) {
                    charSequence3 = (String) buttonText.get();
                    if ((j & 6656) != j2) {
                        if (tariffData == null) {
                        }
                        updateRegistration(9, isButtonActivate);
                        if (isButtonActivate != null) {
                            z = isButtonActivate.get();
                            j8 = j & 4352;
                            if (j8 != j2) {
                            }
                            tariffItemData = null;
                            tariffItemData2 = null;
                            tariffItemData3 = null;
                            if ((j & j7) != 0) {
                                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                            }
                            if ((j & 6656) != 0) {
                                fragmentTariffDetailsBinding.activate.setEnabled(z);
                            }
                            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                            }
                            if ((j & 6272) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                            }
                            if ((j & 5120) != 0) {
                                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                            }
                            if (j8 != 0) {
                                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                            }
                            if ((j & j6) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                            }
                            if ((j & j5) != 0) {
                                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                            }
                            executeBindingsOn(fragmentTariffDetailsBinding.item1);
                            executeBindingsOn(fragmentTariffDetailsBinding.item2);
                            executeBindingsOn(fragmentTariffDetailsBinding.item3);
                        }
                    }
                    z = false;
                    j8 = j & 4352;
                    if (j8 != j2) {
                    }
                    tariffItemData = null;
                    tariffItemData2 = null;
                    tariffItemData3 = null;
                    if ((j & j7) != 0) {
                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                    }
                    if ((j & 6656) != 0) {
                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                    }
                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                    }
                    if ((j & 6272) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                    }
                    if ((j & 5120) != 0) {
                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != 0) {
                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                    }
                    if (j8 != 0) {
                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                    }
                    if ((j & j6) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                    }
                    if ((j & j5) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                    }
                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                }
            }
            charSequence3 = null;
            if ((j & 6656) != j2) {
                if (tariffData == null) {
                }
                updateRegistration(9, isButtonActivate);
                if (isButtonActivate != null) {
                    z = isButtonActivate.get();
                    j8 = j & 4352;
                    if (j8 != j2) {
                    }
                    tariffItemData = null;
                    tariffItemData2 = null;
                    tariffItemData3 = null;
                    if ((j & j7) != 0) {
                        ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
                    }
                    if ((j & 6656) != 0) {
                        fragmentTariffDetailsBinding.activate.setEnabled(z);
                    }
                    if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                        fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
                    }
                    if ((j & 6272) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
                    }
                    if ((j & 5120) != 0) {
                        fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != 0) {
                        fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
                    }
                    if (j8 != 0) {
                        fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                        fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                        fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
                    }
                    if ((j & j6) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
                    }
                    if ((j & j5) != 0) {
                        TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
                    }
                    executeBindingsOn(fragmentTariffDetailsBinding.item1);
                    executeBindingsOn(fragmentTariffDetailsBinding.item2);
                    executeBindingsOn(fragmentTariffDetailsBinding.item3);
                }
            }
            z = false;
            j8 = j & 4352;
            if (j8 != j2) {
            }
            tariffItemData = null;
            tariffItemData2 = null;
            tariffItemData3 = null;
            if ((j & j7) != 0) {
                ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
            }
            if ((j & 6656) != 0) {
                fragmentTariffDetailsBinding.activate.setEnabled(z);
            }
            if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
                fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
            }
            if ((j & 6272) != 0) {
                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
            }
            if ((j & 5120) != 0) {
                fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
            }
            if ((j & j4) != 0) {
                fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
            }
            if (j8 != 0) {
                fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
                fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
                fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
            }
            if ((j & j6) != 0) {
                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
            }
            if ((j & j5) != 0) {
                TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
            }
            executeBindingsOn(fragmentTariffDetailsBinding.item1);
            executeBindingsOn(fragmentTariffDetailsBinding.item2);
            executeBindingsOn(fragmentTariffDetailsBinding.item3);
        }
        z = false;
        charSequence2 = null;
        charSequence = null;
        i = 0;
        drawable = null;
        charSequence3 = null;
        j8 = j & 4352;
        if (j8 != j2) {
        }
        tariffItemData = null;
        tariffItemData2 = null;
        tariffItemData3 = null;
        if ((j & j7) != 0) {
            ViewBindingAdapter.setBackground(fragmentTariffDetailsBinding.activate, drawable);
        }
        if ((j & 6656) != 0) {
            fragmentTariffDetailsBinding.activate.setEnabled(z);
        }
        if ((j & PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) != 0) {
            fragmentTariffDetailsBinding.activate.setOnClickListener(fragmentTariffDetailsBinding.mCallback2);
        }
        if ((j & 6272) != 0) {
            TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.activate, charSequence3);
        }
        if ((j & 5120) != 0) {
            fragmentTariffDetailsBinding.descriptionLink.setOnClickListener(onClickListener);
        }
        if ((j & j4) != 0) {
            fragmentTariffDetailsBinding.imageViewInfinity.setVisibility(i);
        }
        if (j8 != 0) {
            fragmentTariffDetailsBinding.item1.setTariffItem(tariffItemData3);
            fragmentTariffDetailsBinding.item2.setTariffItem(tariffItemData2);
            fragmentTariffDetailsBinding.item3.setTariffItem(tariffItemData);
        }
        if ((j & j6) != 0) {
            TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.price, charSequence);
        }
        if ((j & j5) != 0) {
            TextViewBindingAdapter.setText(fragmentTariffDetailsBinding.tariffName, charSequence2);
        }
        executeBindingsOn(fragmentTariffDetailsBinding.item1);
        executeBindingsOn(fragmentTariffDetailsBinding.item2);
        executeBindingsOn(fragmentTariffDetailsBinding.item3);
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mListener;
        if ((i != 0 ? true : null) != null) {
            i.onChangeTariffClicked();
        }
    }

    public static FragmentTariffDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentTariffDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentTariffDetailsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_tariff_details, viewGroup, z, dataBindingComponent);
    }

    public static FragmentTariffDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentTariffDetailsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_tariff_details, null, false), dataBindingComponent);
    }

    public static FragmentTariffDetailsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentTariffDetailsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_tariff_details_0".equals(view.getTag())) {
            return new FragmentTariffDetailsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
