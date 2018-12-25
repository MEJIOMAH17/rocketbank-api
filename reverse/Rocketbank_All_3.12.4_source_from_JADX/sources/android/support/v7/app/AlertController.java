package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.NestedScrollView;
import android.support.v4.widget.NestedScrollView.OnScrollChangeListener;
import android.support.v7.appcompat.C0219R;
import android.support.v7.widget.LinearLayoutCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.login.widget.ProfilePictureView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import ru.rocketbank.r2d2.C0859R;

final class AlertController {
    ListAdapter mAdapter;
    private int mAlertDialogLayout;
    private final OnClickListener mButtonHandler = new C02081();
    private final int mButtonIconDimen;
    Button mButtonNegative;
    private Drawable mButtonNegativeIcon;
    Message mButtonNegativeMessage;
    private CharSequence mButtonNegativeText;
    Button mButtonNeutral;
    private Drawable mButtonNeutralIcon;
    Message mButtonNeutralMessage;
    private CharSequence mButtonNeutralText;
    private int mButtonPanelLayoutHint = 0;
    private int mButtonPanelSideLayout;
    Button mButtonPositive;
    private Drawable mButtonPositiveIcon;
    Message mButtonPositiveMessage;
    private CharSequence mButtonPositiveText;
    int mCheckedItem = -1;
    private final Context mContext;
    private View mCustomTitleView;
    final AppCompatDialog mDialog;
    Handler mHandler;
    private Drawable mIcon;
    private int mIconId = 0;
    private ImageView mIconView;
    int mListItemLayout;
    int mListLayout;
    ListView mListView;
    private CharSequence mMessage;
    private TextView mMessageView;
    int mMultiChoiceItemLayout;
    NestedScrollView mScrollView;
    private boolean mShowTitle;
    int mSingleChoiceItemLayout;
    private CharSequence mTitle;
    private TextView mTitleView;
    private View mView;
    private int mViewLayoutResId;
    private boolean mViewSpacingSpecified = false;
    private final Window mWindow;

    /* renamed from: android.support.v7.app.AlertController$1 */
    class C02081 implements OnClickListener {
        C02081() {
        }

        public final void onClick(View view) {
            view = (view != AlertController.this.mButtonPositive || AlertController.this.mButtonPositiveMessage == null) ? (view != AlertController.this.mButtonNegative || AlertController.this.mButtonNegativeMessage == null) ? (view != AlertController.this.mButtonNeutral || AlertController.this.mButtonNeutralMessage == null) ? null : Message.obtain(AlertController.this.mButtonNeutralMessage) : Message.obtain(AlertController.this.mButtonNegativeMessage) : Message.obtain(AlertController.this.mButtonPositiveMessage);
            if (view != null) {
                view.sendToTarget();
            }
            AlertController.this.mHandler.obtainMessage(1, AlertController.this.mDialog).sendToTarget();
        }
    }

    public static class AlertParams {
        public ListAdapter mAdapter;
        public boolean mCancelable;
        public int mCheckedItem = -1;
        public final Context mContext;
        public View mCustomTitleView;
        public Drawable mIcon;
        public int mIconAttrId = 0;
        public int mIconId = 0;
        public final LayoutInflater mInflater;
        public CharSequence[] mItems;
        public CharSequence mMessage;
        public DialogInterface.OnClickListener mNegativeButtonListener;
        public CharSequence mNegativeButtonText;
        public DialogInterface.OnClickListener mOnClickListener;
        public OnKeyListener mOnKeyListener;
        public DialogInterface.OnClickListener mPositiveButtonListener;
        public CharSequence mPositiveButtonText;
        public boolean mRecycleOnMeasure = true;
        public CharSequence mTitle;
        public View mView;
        public int mViewLayoutResId;
        public boolean mViewSpacingSpecified = false;

        /* renamed from: android.support.v7.app.AlertController$AlertParams$3 */
        class C02123 implements OnItemClickListener {
            final /* synthetic */ AlertController val$dialog;

            C02123(AlertController alertController) {
                this.val$dialog = alertController;
            }

            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AlertParams.this.mOnClickListener.onClick(this.val$dialog.mDialog, i);
                this.val$dialog.mDialog.dismiss();
            }
        }

        public AlertParams(Context context) {
            this.mContext = context;
            this.mCancelable = true;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    static final class ButtonHandler extends Handler {
        private WeakReference<DialogInterface> mDialog;

        public ButtonHandler(DialogInterface dialogInterface) {
            this.mDialog = new WeakReference(dialogInterface);
        }

        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                switch (i) {
                    case ProfilePictureView.NORMAL /*-3*/:
                    case -2:
                    case -1:
                        ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.mDialog.get(), message.what);
                        return;
                    default:
                        break;
                }
            }
            ((DialogInterface) message.obj).dismiss();
        }
    }

    static class CheckedItemAdapter extends ArrayAdapter<CharSequence> {
        public final long getItemId(int i) {
            return (long) i;
        }

        public final boolean hasStableIds() {
            return true;
        }

        public CheckedItemAdapter(Context context, int i, CharSequence[] charSequenceArr) {
            super(context, i, 16908308, charSequenceArr);
        }
    }

    public static class RecycleListView extends ListView {
        private final int mPaddingBottomNoButtons;
        private final int mPaddingTopNoTitle;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            context = context.obtainStyledAttributes(attributeSet, C0219R.styleable.RecycleListView);
            this.mPaddingBottomNoButtons = context.getDimensionPixelOffset(C0219R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.mPaddingTopNoTitle = context.getDimensionPixelOffset(C0219R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }

        public final void setHasDecor(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.mPaddingTopNoTitle, getPaddingRight(), z2 ? getPaddingBottom() : this.mPaddingBottomNoButtons);
            }
        }
    }

    public AlertController(Context context, AppCompatDialog appCompatDialog, Window window) {
        this.mContext = context;
        this.mDialog = appCompatDialog;
        this.mWindow = window;
        this.mHandler = new ButtonHandler(appCompatDialog);
        context = context.obtainStyledAttributes(null, C0219R.styleable.AlertDialog, C0859R.attr.alertDialogStyle, 0);
        this.mAlertDialogLayout = context.getResourceId(C0219R.styleable.AlertDialog_android_layout, 0);
        this.mButtonPanelSideLayout = context.getResourceId(C0219R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.mListLayout = context.getResourceId(C0219R.styleable.AlertDialog_listLayout, 0);
        this.mMultiChoiceItemLayout = context.getResourceId(C0219R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.mSingleChoiceItemLayout = context.getResourceId(C0219R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.mListItemLayout = context.getResourceId(C0219R.styleable.AlertDialog_listItemLayout, 0);
        this.mShowTitle = context.getBoolean(C0219R.styleable.AlertDialog_showTitle, true);
        this.mButtonIconDimen = context.getDimensionPixelSize(C0219R.styleable.AlertDialog_buttonIconDimen, 0);
        context.recycle();
        appCompatDialog.supportRequestWindowFeature(1);
    }

    private static boolean canTextInput(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (canTextInput(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public final void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        if (this.mTitleView != null) {
            this.mTitleView.setText(charSequence);
        }
    }

    public final void setCustomTitle(View view) {
        this.mCustomTitleView = view;
    }

    public final void setMessage(CharSequence charSequence) {
        this.mMessage = charSequence;
        if (this.mMessageView != null) {
            this.mMessageView.setText(charSequence);
        }
    }

    public final void setView(View view) {
        this.mView = view;
        this.mViewLayoutResId = 0;
        this.mViewSpacingSpecified = false;
    }

    public final void setButton$45cf7532(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (onClickListener != null) {
            message = this.mHandler.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case ProfilePictureView.NORMAL /*-3*/:
                this.mButtonNeutralText = charSequence;
                this.mButtonNeutralMessage = message;
                this.mButtonNeutralIcon = null;
                return;
            case -2:
                this.mButtonNegativeText = charSequence;
                this.mButtonNegativeMessage = message;
                this.mButtonNegativeIcon = null;
                return;
            case -1:
                this.mButtonPositiveText = charSequence;
                this.mButtonPositiveMessage = message;
                this.mButtonPositiveIcon = null;
                return;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
    }

    public final void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        this.mIconId = 0;
        if (this.mIconView != null) {
            if (drawable != null) {
                this.mIconView.setVisibility(0);
                this.mIconView.setImageDrawable(drawable);
                return;
            }
            this.mIconView.setVisibility(8);
        }
    }

    private static ViewGroup resolvePanel(View view, View view2) {
        if (view == null) {
            if ((view2 instanceof ViewStub) != null) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if ((view instanceof ViewStub) != null) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    static void manageScrollIndicators(View view, View view2, View view3) {
        int i = 4;
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            if (view.canScrollVertically(1) != null) {
                i = 0;
            }
            view3.setVisibility(i);
        }
    }

    public final void installContent() {
        int i;
        int i2;
        this.mDialog.setContentView(this.mAlertDialogLayout);
        View findViewById = this.mWindow.findViewById(C0859R.id.parentPanel);
        View findViewById2 = findViewById.findViewById(C0859R.id.topPanel);
        View findViewById3 = findViewById.findViewById(C0859R.id.contentPanel);
        View findViewById4 = findViewById.findViewById(C0859R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById.findViewById(C0859R.id.customPanel);
        View view = this.mView != null ? this.mView : null;
        int i3 = 0;
        boolean z = view != null;
        if (!(z && canTextInput(view))) {
            this.mWindow.setFlags(131072, 131072);
        }
        if (z) {
            ((FrameLayout) this.mWindow.findViewById(C0859R.id.custom)).addView(view, new LayoutParams(-1, -1));
            if (this.mListView != null) {
                ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).weight = BitmapDescriptorFactory.HUE_RED;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById5 = viewGroup.findViewById(C0859R.id.topPanel);
        View findViewById6 = viewGroup.findViewById(C0859R.id.contentPanel);
        View findViewById7 = viewGroup.findViewById(C0859R.id.buttonPanel);
        ViewGroup resolvePanel = resolvePanel(findViewById5, findViewById2);
        ViewGroup resolvePanel2 = resolvePanel(findViewById6, findViewById3);
        ViewGroup resolvePanel3 = resolvePanel(findViewById7, findViewById4);
        this.mScrollView = (NestedScrollView) this.mWindow.findViewById(C0859R.id.scrollView);
        this.mScrollView.setFocusable(false);
        this.mScrollView.setNestedScrollingEnabled(false);
        this.mMessageView = (TextView) resolvePanel2.findViewById(16908299);
        if (this.mMessageView != null) {
            if (this.mMessage != null) {
                this.mMessageView.setText(this.mMessage);
            } else {
                this.mMessageView.setVisibility(8);
                this.mScrollView.removeView(this.mMessageView);
                if (this.mListView != null) {
                    ViewGroup viewGroup2 = (ViewGroup) this.mScrollView.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(this.mScrollView);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(this.mListView, indexOfChild, new LayoutParams(-1, -1));
                } else {
                    resolvePanel2.setVisibility(8);
                }
            }
        }
        this.mButtonPositive = (Button) resolvePanel3.findViewById(16908313);
        this.mButtonPositive.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonPositiveText)) {
            this.mButtonPositive.setVisibility(8);
            i = 0;
        } else {
            this.mButtonPositive.setText(this.mButtonPositiveText);
            this.mButtonPositive.setVisibility(0);
            i = 1;
        }
        this.mButtonNegative = (Button) resolvePanel3.findViewById(16908314);
        this.mButtonNegative.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonNegativeText)) {
            this.mButtonNegative.setVisibility(8);
        } else {
            this.mButtonNegative.setText(this.mButtonNegativeText);
            this.mButtonNegative.setVisibility(0);
            i |= 2;
        }
        this.mButtonNeutral = (Button) resolvePanel3.findViewById(16908315);
        this.mButtonNeutral.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonNeutralText)) {
            this.mButtonNeutral.setVisibility(8);
        } else {
            this.mButtonNeutral.setText(this.mButtonNeutralText);
            this.mButtonNeutral.setVisibility(0);
            i |= 4;
        }
        Context context = this.mContext;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0859R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            Button button;
            LinearLayout.LayoutParams layoutParams;
            if (i == 1) {
                button = this.mButtonPositive;
                layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button.setLayoutParams(layoutParams);
            } else if (i == 2) {
                button = this.mButtonNegative;
                layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button.setLayoutParams(layoutParams);
            } else if (i == 4) {
                button = this.mButtonNeutral;
                layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button.setLayoutParams(layoutParams);
            }
        }
        if (!(i != 0)) {
            resolvePanel3.setVisibility(8);
        }
        if (this.mCustomTitleView != null) {
            resolvePanel.addView(this.mCustomTitleView, 0, new LayoutParams(-1, -2));
            this.mWindow.findViewById(C0859R.id.title_template).setVisibility(8);
        } else {
            this.mIconView = (ImageView) this.mWindow.findViewById(16908294);
            if ((TextUtils.isEmpty(this.mTitle) ^ 1) == 0 || !this.mShowTitle) {
                this.mWindow.findViewById(C0859R.id.title_template).setVisibility(8);
                this.mIconView.setVisibility(8);
                resolvePanel.setVisibility(8);
            } else {
                this.mTitleView = (TextView) this.mWindow.findViewById(C0859R.id.alertTitle);
                this.mTitleView.setText(this.mTitle);
                if (this.mIcon != null) {
                    this.mIconView.setImageDrawable(this.mIcon);
                } else {
                    this.mTitleView.setPadding(this.mIconView.getPaddingLeft(), this.mIconView.getPaddingTop(), this.mIconView.getPaddingRight(), this.mIconView.getPaddingBottom());
                    this.mIconView.setVisibility(8);
                }
            }
        }
        boolean z2 = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z3 = (resolvePanel == null || resolvePanel.getVisibility() == 8) ? false : true;
        boolean z4 = (resolvePanel3 == null || resolvePanel3.getVisibility() == 8) ? false : true;
        if (!(z4 || resolvePanel2 == null)) {
            findViewById7 = resolvePanel2.findViewById(C0859R.id.textSpacerNoButtons);
            if (findViewById7 != null) {
                findViewById7.setVisibility(0);
            }
        }
        if (z3) {
            if (this.mScrollView != null) {
                this.mScrollView.setClipToPadding(true);
            }
            if (this.mMessage == null) {
                if (this.mListView == null) {
                    findViewById5 = null;
                    if (findViewById5 != null) {
                        findViewById5.setVisibility(0);
                    }
                }
            }
            findViewById5 = resolvePanel.findViewById(C0859R.id.titleDividerNoCustom);
            if (findViewById5 != null) {
                findViewById5.setVisibility(0);
            }
        } else if (resolvePanel2 != null) {
            findViewById5 = resolvePanel2.findViewById(C0859R.id.textSpacerNoTitle);
            if (findViewById5 != null) {
                findViewById5.setVisibility(0);
            }
        }
        if (this.mListView instanceof RecycleListView) {
            ((RecycleListView) this.mListView).setHasDecor(z3, z4);
        }
        if (!z2) {
            findViewById = this.mListView != null ? this.mListView : this.mScrollView;
            if (findViewById != null) {
                if (z4) {
                    i3 = 2;
                }
                i2 = z3 | i3;
                findViewById6 = this.mWindow.findViewById(C0859R.id.scrollIndicatorUp);
                findViewById3 = this.mWindow.findViewById(C0859R.id.scrollIndicatorDown);
                if (VERSION.SDK_INT >= 23) {
                    ViewCompat.setScrollIndicators(findViewById, i2, 3);
                    if (findViewById6 != null) {
                        resolvePanel2.removeView(findViewById6);
                    }
                    if (findViewById3 != null) {
                        resolvePanel2.removeView(findViewById3);
                    }
                } else {
                    if (findViewById6 != null && (i2 & 1) == 0) {
                        resolvePanel2.removeView(findViewById6);
                        findViewById6 = null;
                    }
                    if (findViewById3 != null && (i2 & 2) == 0) {
                        resolvePanel2.removeView(findViewById3);
                        findViewById3 = null;
                    }
                    if (!(findViewById6 == null && findViewById3 == null)) {
                        if (this.mMessage != null) {
                            this.mScrollView.setOnScrollChangeListener(new OnScrollChangeListener() {
                                public final void onScrollChange$227623bf(NestedScrollView nestedScrollView) {
                                    AlertController.manageScrollIndicators(nestedScrollView, findViewById6, findViewById3);
                                }
                            });
                            this.mScrollView.post(new Runnable() {
                                public final void run() {
                                    AlertController.manageScrollIndicators(AlertController.this.mScrollView, findViewById6, findViewById3);
                                }
                            });
                        } else if (this.mListView != null) {
                            this.mListView.setOnScrollListener(new OnScrollListener() {
                                public final void onScrollStateChanged(AbsListView absListView, int i) {
                                }

                                public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
                                    AlertController.manageScrollIndicators(absListView, findViewById6, findViewById3);
                                }
                            });
                            this.mListView.post(new Runnable() {
                                public final void run() {
                                    AlertController.manageScrollIndicators(AlertController.this.mListView, findViewById6, findViewById3);
                                }
                            });
                        } else {
                            if (findViewById6 != null) {
                                resolvePanel2.removeView(findViewById6);
                            }
                            if (findViewById3 != null) {
                                resolvePanel2.removeView(findViewById3);
                            }
                        }
                    }
                }
            }
        }
        ListView listView = this.mListView;
        if (listView != null && this.mAdapter != null) {
            listView.setAdapter(this.mAdapter);
            i2 = this.mCheckedItem;
            if (i2 >= 0) {
                listView.setItemChecked(i2, true);
                listView.setSelection(i2);
            }
        }
    }
}
