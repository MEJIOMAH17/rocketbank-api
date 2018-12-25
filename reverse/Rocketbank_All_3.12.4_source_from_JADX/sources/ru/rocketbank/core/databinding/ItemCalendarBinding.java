package ru.rocketbank.core.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.Observable;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.adapters.ViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.data.binding.CalendarItemClickListener;
import ru.rocketbank.core.data.binding.CalendarItemData;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.SquareLayout;

public final class ItemCalendarBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private final OnClickListener mCallback25;
    private CalendarItemData mData;
    private long mDirtyFlags = -1;
    private CalendarItemClickListener mListener;
    private final SquareLayout mboundView0;
    public final RocketTextView textDay;

    public ItemCalendarBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 4);
        dataBindingComponent = ViewDataBinding.mapBindings(dataBindingComponent, view, 2, null, null);
        this.mboundView0 = (SquareLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textDay = (RocketTextView) dataBindingComponent[1];
        this.textDay.setTag(null);
        setRootTag(view);
        this.mCallback25 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public final void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64;
        }
        requestRebind();
    }

    public final boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return false;
        }
    }

    public final boolean setVariable(int i, Object obj) {
        if (55 == i) {
            setListener((CalendarItemClickListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((CalendarItemData) obj);
        }
        return true;
    }

    public final void setListener(CalendarItemClickListener calendarItemClickListener) {
        this.mListener = calendarItemClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public final void setData(CalendarItemData calendarItemData) {
        this.mData = calendarItemData;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    protected final boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataTextColor$6c1f40ed(i2);
            case 1:
                return onChangeDataDayText$69e17aa2(i2);
            case 2:
                return onChangeDataBackground$69e17aa2(i2);
            case 3:
                return onChangeDataIsDelivery$3134944c(i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataTextColor$6c1f40ed(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataDayText$69e17aa2(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataBackground$69e17aa2(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataIsDelivery$3134944c(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    protected final void executeBindings() {
        long j;
        ItemCalendarBinding itemCalendarBinding = this;
        synchronized (this) {
            try {
                j = itemCalendarBinding.mDirtyFlags;
                long j2 = 0;
                itemCalendarBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        CalendarItemData calendarItemData = itemCalendarBinding.mData;
        long j3 = 100;
        long j4 = 98;
        Object obj = null;
        int i;
        CharSequence charSequence;
        Drawable drawable;
        boolean z;
        if ((j & 111) != 0) {
            ObservableField dayText;
            Object isDelivery;
            if ((j & 97) != 0) {
                Object textColor = calendarItemData != null ? calendarItemData.getTextColor() : null;
                updateRegistration(0, (Observable) textColor);
                if (textColor != null) {
                    i = textColor.get();
                    if ((j & 98) != 0) {
                        if (calendarItemData == null) {
                            dayText = calendarItemData.getDayText();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, (Observable) obj);
                        if (obj != null) {
                            charSequence = (String) obj.get();
                            if ((j & j3) != j2) {
                                obj = calendarItemData == null ? calendarItemData.getBackground() : null;
                                updateRegistration(2, (Observable) obj);
                                if (obj != null) {
                                    drawable = (Drawable) obj.get();
                                    if ((j & 104) != j2) {
                                        isDelivery = calendarItemData == null ? calendarItemData.isDelivery() : null;
                                        updateRegistration(3, (Observable) isDelivery);
                                        if (isDelivery != null) {
                                            z = isDelivery.get();
                                            if ((j & 104) != j2) {
                                                ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                                            }
                                            if ((j & j3) != j2) {
                                                ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                                            }
                                            if ((j & 97) != j2) {
                                                itemCalendarBinding.textDay.setTextColor(i);
                                            }
                                        }
                                    }
                                    z = false;
                                    if ((j & 104) != j2) {
                                        ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                                    }
                                    if ((j & j3) != j2) {
                                        ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                                    }
                                    if ((j & 97) != j2) {
                                        itemCalendarBinding.textDay.setTextColor(i);
                                    }
                                }
                            }
                            drawable = null;
                            if ((j & 104) != j2) {
                                if (calendarItemData == null) {
                                }
                                updateRegistration(3, (Observable) isDelivery);
                                if (isDelivery != null) {
                                    z = isDelivery.get();
                                    if ((j & 104) != j2) {
                                        ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                                    }
                                    if ((j & j3) != j2) {
                                        ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                                    }
                                    if ((j & 97) != j2) {
                                        itemCalendarBinding.textDay.setTextColor(i);
                                    }
                                }
                            }
                            z = false;
                            if ((j & 104) != j2) {
                                ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                            }
                            if ((j & j3) != j2) {
                                ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                            }
                            if ((j & 97) != j2) {
                                itemCalendarBinding.textDay.setTextColor(i);
                            }
                        }
                    }
                    charSequence = null;
                    if ((j & j3) != j2) {
                        if (calendarItemData == null) {
                        }
                        updateRegistration(2, (Observable) obj);
                        if (obj != null) {
                            drawable = (Drawable) obj.get();
                            if ((j & 104) != j2) {
                                if (calendarItemData == null) {
                                }
                                updateRegistration(3, (Observable) isDelivery);
                                if (isDelivery != null) {
                                    z = isDelivery.get();
                                    if ((j & 104) != j2) {
                                        ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                                    }
                                    if ((j & j3) != j2) {
                                        ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                                    }
                                    if ((j & 97) != j2) {
                                        itemCalendarBinding.textDay.setTextColor(i);
                                    }
                                }
                            }
                            z = false;
                            if ((j & 104) != j2) {
                                ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                            }
                            if ((j & j3) != j2) {
                                ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                            }
                            if ((j & 97) != j2) {
                                itemCalendarBinding.textDay.setTextColor(i);
                            }
                        }
                    }
                    drawable = null;
                    if ((j & 104) != j2) {
                        if (calendarItemData == null) {
                        }
                        updateRegistration(3, (Observable) isDelivery);
                        if (isDelivery != null) {
                            z = isDelivery.get();
                            if ((j & 104) != j2) {
                                ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                            }
                            if ((j & j3) != j2) {
                                ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                            }
                            if ((j & 97) != j2) {
                                itemCalendarBinding.textDay.setTextColor(i);
                            }
                        }
                    }
                    z = false;
                    if ((j & 104) != j2) {
                        ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                    }
                    if ((j & j3) != j2) {
                        ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                    }
                    if ((j & 97) != j2) {
                        itemCalendarBinding.textDay.setTextColor(i);
                    }
                }
            }
            i = 0;
            if ((j & 98) != 0) {
                if (calendarItemData == null) {
                    obj = null;
                } else {
                    dayText = calendarItemData.getDayText();
                }
                updateRegistration(1, (Observable) obj);
                if (obj != null) {
                    charSequence = (String) obj.get();
                    if ((j & j3) != j2) {
                        if (calendarItemData == null) {
                        }
                        updateRegistration(2, (Observable) obj);
                        if (obj != null) {
                            drawable = (Drawable) obj.get();
                            if ((j & 104) != j2) {
                                if (calendarItemData == null) {
                                }
                                updateRegistration(3, (Observable) isDelivery);
                                if (isDelivery != null) {
                                    z = isDelivery.get();
                                    if ((j & 104) != j2) {
                                        ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                                    }
                                    if ((j & j3) != j2) {
                                        ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                                    }
                                    if ((j & 97) != j2) {
                                        itemCalendarBinding.textDay.setTextColor(i);
                                    }
                                }
                            }
                            z = false;
                            if ((j & 104) != j2) {
                                ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                            }
                            if ((j & j3) != j2) {
                                ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                            }
                            if ((j & 97) != j2) {
                                itemCalendarBinding.textDay.setTextColor(i);
                            }
                        }
                    }
                    drawable = null;
                    if ((j & 104) != j2) {
                        if (calendarItemData == null) {
                        }
                        updateRegistration(3, (Observable) isDelivery);
                        if (isDelivery != null) {
                            z = isDelivery.get();
                            if ((j & 104) != j2) {
                                ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                            }
                            if ((j & j3) != j2) {
                                ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                            }
                            if ((j & 97) != j2) {
                                itemCalendarBinding.textDay.setTextColor(i);
                            }
                        }
                    }
                    z = false;
                    if ((j & 104) != j2) {
                        ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                    }
                    if ((j & j3) != j2) {
                        ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                    }
                    if ((j & 97) != j2) {
                        itemCalendarBinding.textDay.setTextColor(i);
                    }
                }
            }
            charSequence = null;
            if ((j & j3) != j2) {
                if (calendarItemData == null) {
                }
                updateRegistration(2, (Observable) obj);
                if (obj != null) {
                    drawable = (Drawable) obj.get();
                    if ((j & 104) != j2) {
                        if (calendarItemData == null) {
                        }
                        updateRegistration(3, (Observable) isDelivery);
                        if (isDelivery != null) {
                            z = isDelivery.get();
                            if ((j & 104) != j2) {
                                ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                            }
                            if ((j & j3) != j2) {
                                ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                            }
                            if ((j & 97) != j2) {
                                itemCalendarBinding.textDay.setTextColor(i);
                            }
                        }
                    }
                    z = false;
                    if ((j & 104) != j2) {
                        ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                    }
                    if ((j & j3) != j2) {
                        ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                    }
                    if ((j & 97) != j2) {
                        itemCalendarBinding.textDay.setTextColor(i);
                    }
                }
            }
            drawable = null;
            if ((j & 104) != j2) {
                if (calendarItemData == null) {
                }
                updateRegistration(3, (Observable) isDelivery);
                if (isDelivery != null) {
                    z = isDelivery.get();
                    if ((j & 104) != j2) {
                        ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
                    }
                    if ((j & j3) != j2) {
                        ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
                    }
                    if ((j & 97) != j2) {
                        itemCalendarBinding.textDay.setTextColor(i);
                    }
                }
            }
            z = false;
            if ((j & 104) != j2) {
                ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
            }
            if ((j & j3) != j2) {
                ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
            }
            if ((j & j4) != j2) {
                TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
            }
            if ((j & 97) != j2) {
                itemCalendarBinding.textDay.setTextColor(i);
            }
        }
        z = false;
        i = 0;
        drawable = null;
        charSequence = null;
        if ((j & 104) != j2) {
            ViewBindingAdapter.setOnClick(itemCalendarBinding.mboundView0, itemCalendarBinding.mCallback25, z);
        }
        if ((j & j3) != j2) {
            ViewBindingAdapter.setBackground(itemCalendarBinding.textDay, drawable);
        }
        if ((j & j4) != j2) {
            TextViewBindingAdapter.setText(itemCalendarBinding.textDay, charSequence);
        }
        if ((j & 97) != j2) {
            itemCalendarBinding.textDay.setTextColor(i);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mListener;
        CalendarItemData calendarItemData = this.mData;
        if ((i != 0 ? 1 : null) != null) {
            i.onItemClicked(view, calendarItemData);
        }
    }

    public static ItemCalendarBinding bind(View view) {
        DataBindingComponent defaultComponent = DataBindingUtil.getDefaultComponent();
        if ("layout/item_calendar_0".equals(view.getTag())) {
            return new ItemCalendarBinding(defaultComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
