package android.support.percent;

import android.content.Context;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.security.storage.SharedPreferencesTokenStorageImpl;

@Deprecated
public final class PercentLayoutHelper implements Provider<SharedPreferencesTokenStorageImpl> {
    private final Provider<Context> contextProvider;
    private final ViewGroup mHost;

    @Deprecated
    public static class PercentLayoutInfo {
        public float aspectRatio;
        public float bottomMarginPercent = -1.0f;
        public float endMarginPercent = -1.0f;
        public float heightPercent = -1.0f;
        public float leftMarginPercent = -1.0f;
        final PercentMarginLayoutParams mPreservedParams = new PercentMarginLayoutParams();
        public float rightMarginPercent = -1.0f;
        public float startMarginPercent = -1.0f;
        public float topMarginPercent = -1.0f;
        public float widthPercent = -1.0f;

        public final void fillLayoutParams(LayoutParams layoutParams, int i, int i2) {
            this.mPreservedParams.width = layoutParams.width;
            this.mPreservedParams.height = layoutParams.height;
            boolean z = false;
            boolean z2 = (this.mPreservedParams.mIsWidthComputedFromAspectRatio || this.mPreservedParams.width == 0) && this.widthPercent < BitmapDescriptorFactory.HUE_RED;
            if ((this.mPreservedParams.mIsHeightComputedFromAspectRatio || this.mPreservedParams.height == 0) && this.heightPercent < BitmapDescriptorFactory.HUE_RED) {
                z = true;
            }
            if (this.widthPercent >= BitmapDescriptorFactory.HUE_RED) {
                layoutParams.width = Math.round(((float) i) * this.widthPercent);
            }
            if (this.heightPercent >= 0) {
                layoutParams.height = Math.round(((float) i2) * this.heightPercent);
            }
            if (this.aspectRatio >= 0) {
                if (z2) {
                    layoutParams.width = Math.round(((float) layoutParams.height) * this.aspectRatio);
                    this.mPreservedParams.mIsWidthComputedFromAspectRatio = true;
                }
                if (z) {
                    layoutParams.height = Math.round(((float) layoutParams.width) / this.aspectRatio);
                    this.mPreservedParams.mIsHeightComputedFromAspectRatio = true;
                }
            }
        }

        public final String toString() {
            return String.format("PercentLayoutInformation width: %f height %f, margins (%f, %f,  %f, %f, %f, %f)", new Object[]{Float.valueOf(this.widthPercent), Float.valueOf(this.heightPercent), Float.valueOf(this.leftMarginPercent), Float.valueOf(this.topMarginPercent), Float.valueOf(this.rightMarginPercent), Float.valueOf(this.bottomMarginPercent), Float.valueOf(this.startMarginPercent), Float.valueOf(this.endMarginPercent)});
        }

        public final void restoreLayoutParams(LayoutParams layoutParams) {
            if (!this.mPreservedParams.mIsWidthComputedFromAspectRatio) {
                layoutParams.width = this.mPreservedParams.width;
            }
            if (!this.mPreservedParams.mIsHeightComputedFromAspectRatio) {
                layoutParams.height = this.mPreservedParams.height;
            }
            this.mPreservedParams.mIsWidthComputedFromAspectRatio = false;
            this.mPreservedParams.mIsHeightComputedFromAspectRatio = false;
        }
    }

    @Deprecated
    public interface PercentLayoutParams {
        PercentLayoutInfo getPercentLayoutInfo();
    }

    static class PercentMarginLayoutParams extends MarginLayoutParams {
        private boolean mIsHeightComputedFromAspectRatio;
        private boolean mIsWidthComputedFromAspectRatio;

        public PercentMarginLayoutParams() {
            super(0, 0);
        }
    }

    public final void adjustChildren(int i, int i2) {
        i = (MeasureSpec.getSize(i) - this.mHost.getPaddingLeft()) - this.mHost.getPaddingRight();
        i2 = (MeasureSpec.getSize(i2) - this.mHost.getPaddingTop()) - this.mHost.getPaddingBottom();
        int childCount = this.mHost.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.mHost.getChildAt(i3);
            LayoutParams layoutParams = childAt.getLayoutParams();
            if (layoutParams instanceof PercentLayoutParams) {
                PercentLayoutInfo percentLayoutInfo = ((PercentLayoutParams) layoutParams).getPercentLayoutInfo();
                if (percentLayoutInfo != null) {
                    if (layoutParams instanceof MarginLayoutParams) {
                        Object obj;
                        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) layoutParams;
                        percentLayoutInfo.fillLayoutParams(marginLayoutParams, i, i2);
                        percentLayoutInfo.mPreservedParams.leftMargin = marginLayoutParams.leftMargin;
                        percentLayoutInfo.mPreservedParams.topMargin = marginLayoutParams.topMargin;
                        percentLayoutInfo.mPreservedParams.rightMargin = marginLayoutParams.rightMargin;
                        percentLayoutInfo.mPreservedParams.bottomMargin = marginLayoutParams.bottomMargin;
                        MarginLayoutParamsCompat.setMarginStart(percentLayoutInfo.mPreservedParams, MarginLayoutParamsCompat.getMarginStart(marginLayoutParams));
                        MarginLayoutParamsCompat.setMarginEnd(percentLayoutInfo.mPreservedParams, MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams));
                        if (percentLayoutInfo.leftMarginPercent >= BitmapDescriptorFactory.HUE_RED) {
                            marginLayoutParams.leftMargin = Math.round(((float) i) * percentLayoutInfo.leftMarginPercent);
                        }
                        if (percentLayoutInfo.topMarginPercent >= BitmapDescriptorFactory.HUE_RED) {
                            marginLayoutParams.topMargin = Math.round(((float) i2) * percentLayoutInfo.topMarginPercent);
                        }
                        if (percentLayoutInfo.rightMarginPercent >= BitmapDescriptorFactory.HUE_RED) {
                            marginLayoutParams.rightMargin = Math.round(((float) i) * percentLayoutInfo.rightMarginPercent);
                        }
                        if (percentLayoutInfo.bottomMarginPercent >= BitmapDescriptorFactory.HUE_RED) {
                            marginLayoutParams.bottomMargin = Math.round(((float) i2) * percentLayoutInfo.bottomMarginPercent);
                        }
                        if (percentLayoutInfo.startMarginPercent >= BitmapDescriptorFactory.HUE_RED) {
                            MarginLayoutParamsCompat.setMarginStart(marginLayoutParams, Math.round(((float) i) * percentLayoutInfo.startMarginPercent));
                            obj = 1;
                        } else {
                            obj = null;
                        }
                        if (percentLayoutInfo.endMarginPercent >= BitmapDescriptorFactory.HUE_RED) {
                            MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, Math.round(((float) i) * percentLayoutInfo.endMarginPercent));
                            obj = 1;
                        }
                        if (!(obj == null || childAt == null)) {
                            MarginLayoutParamsCompat.resolveLayoutDirection(marginLayoutParams, ViewCompat.getLayoutDirection(childAt));
                        }
                    } else {
                        percentLayoutInfo.fillLayoutParams(layoutParams, i, i2);
                    }
                }
            }
        }
    }

    public static PercentLayoutInfo getPercentLayoutInfo(Context context, AttributeSet attributeSet) {
        PercentLayoutInfo percentLayoutInfo;
        context = context.obtainStyledAttributes(attributeSet, C0908R.styleable.PercentLayout_Layout);
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_widthPercent, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            percentLayoutInfo = new PercentLayoutInfo();
            percentLayoutInfo.widthPercent = attributeSet;
        } else {
            percentLayoutInfo = null;
        }
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_heightPercent, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            if (percentLayoutInfo == null) {
                percentLayoutInfo = new PercentLayoutInfo();
            }
            percentLayoutInfo.heightPercent = attributeSet;
        }
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_marginPercent, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            if (percentLayoutInfo == null) {
                percentLayoutInfo = new PercentLayoutInfo();
            }
            percentLayoutInfo.leftMarginPercent = attributeSet;
            percentLayoutInfo.topMarginPercent = attributeSet;
            percentLayoutInfo.rightMarginPercent = attributeSet;
            percentLayoutInfo.bottomMarginPercent = attributeSet;
        }
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_marginLeftPercent, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            if (percentLayoutInfo == null) {
                percentLayoutInfo = new PercentLayoutInfo();
            }
            percentLayoutInfo.leftMarginPercent = attributeSet;
        }
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_marginTopPercent, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            if (percentLayoutInfo == null) {
                percentLayoutInfo = new PercentLayoutInfo();
            }
            percentLayoutInfo.topMarginPercent = attributeSet;
        }
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_marginRightPercent, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            if (percentLayoutInfo == null) {
                percentLayoutInfo = new PercentLayoutInfo();
            }
            percentLayoutInfo.rightMarginPercent = attributeSet;
        }
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_marginBottomPercent, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            if (percentLayoutInfo == null) {
                percentLayoutInfo = new PercentLayoutInfo();
            }
            percentLayoutInfo.bottomMarginPercent = attributeSet;
        }
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_marginStartPercent, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            if (percentLayoutInfo == null) {
                percentLayoutInfo = new PercentLayoutInfo();
            }
            percentLayoutInfo.startMarginPercent = attributeSet;
        }
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_marginEndPercent, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            if (percentLayoutInfo == null) {
                percentLayoutInfo = new PercentLayoutInfo();
            }
            percentLayoutInfo.endMarginPercent = attributeSet;
        }
        attributeSet = context.getFraction(C0908R.styleable.PercentLayout_Layout_layout_aspectRatio, 1, 1, -1.0f);
        if (attributeSet != -1082130432) {
            if (percentLayoutInfo == null) {
                percentLayoutInfo = new PercentLayoutInfo();
            }
            percentLayoutInfo.aspectRatio = attributeSet;
        }
        context.recycle();
        return percentLayoutInfo;
    }

    public final void restoreOriginalParams() {
        int childCount = this.mHost.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = this.mHost.getChildAt(i).getLayoutParams();
            if (layoutParams instanceof PercentLayoutParams) {
                PercentLayoutInfo percentLayoutInfo = ((PercentLayoutParams) layoutParams).getPercentLayoutInfo();
                if (percentLayoutInfo != null) {
                    if (layoutParams instanceof MarginLayoutParams) {
                        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) layoutParams;
                        percentLayoutInfo.restoreLayoutParams(marginLayoutParams);
                        marginLayoutParams.leftMargin = percentLayoutInfo.mPreservedParams.leftMargin;
                        marginLayoutParams.topMargin = percentLayoutInfo.mPreservedParams.topMargin;
                        marginLayoutParams.rightMargin = percentLayoutInfo.mPreservedParams.rightMargin;
                        marginLayoutParams.bottomMargin = percentLayoutInfo.mPreservedParams.bottomMargin;
                        MarginLayoutParamsCompat.setMarginStart(marginLayoutParams, MarginLayoutParamsCompat.getMarginStart(percentLayoutInfo.mPreservedParams));
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, MarginLayoutParamsCompat.getMarginEnd(percentLayoutInfo.mPreservedParams));
                    } else {
                        percentLayoutInfo.restoreLayoutParams(layoutParams);
                    }
                }
            }
        }
    }

    public final boolean handleMeasuredStateTooSmall() {
        int childCount = this.mHost.getChildCount();
        int i = 0;
        boolean z = i;
        while (i < childCount) {
            View childAt = this.mHost.getChildAt(i);
            LayoutParams layoutParams = childAt.getLayoutParams();
            if (layoutParams instanceof PercentLayoutParams) {
                PercentLayoutInfo percentLayoutInfo = ((PercentLayoutParams) layoutParams).getPercentLayoutInfo();
                if (percentLayoutInfo != null) {
                    Object obj = ((childAt.getMeasuredWidthAndState() & ViewCompat.MEASURED_STATE_MASK) == 16777216 && percentLayoutInfo.widthPercent >= BitmapDescriptorFactory.HUE_RED && percentLayoutInfo.mPreservedParams.width == -2) ? 1 : null;
                    if (obj != null) {
                        layoutParams.width = -2;
                        z = true;
                    }
                    Object obj2 = ((childAt.getMeasuredHeightAndState() & ViewCompat.MEASURED_STATE_MASK) == 16777216 && percentLayoutInfo.heightPercent >= BitmapDescriptorFactory.HUE_RED && percentLayoutInfo.mPreservedParams.height == -2) ? 1 : null;
                    if (obj2 != null) {
                        layoutParams.height = -2;
                        z = true;
                    }
                }
            }
            i++;
        }
        return z;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Context context = (Context) this.contextProvider.get();
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new SharedPreferencesTokenStorageImpl(context);
    }
}
