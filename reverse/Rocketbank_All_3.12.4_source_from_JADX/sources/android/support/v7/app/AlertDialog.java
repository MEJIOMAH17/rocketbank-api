package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.app.AlertController.AlertParams;
import android.support.v7.app.AlertController.AlertParams.C02123;
import android.support.v7.app.AlertController.RecycleListView;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import com.facebook.login.widget.ProfilePictureView;
import ru.rocketbank.r2d2.C0859R;

public final class AlertDialog extends AppCompatDialog implements DialogInterface {
    final AlertController mAlert = new AlertController(getContext(), this, getWindow());

    public static class Builder {
        /* renamed from: P */
        private final AlertParams f4P;
        private final int mTheme;

        public Builder(Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }

        public Builder(Context context, int i) {
            this.f4P = new AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i)));
            this.mTheme = i;
        }

        public final Context getContext() {
            return this.f4P.mContext;
        }

        public final Builder setTitle(int i) {
            this.f4P.mTitle = this.f4P.mContext.getText(i);
            return this;
        }

        public final Builder setTitle(CharSequence charSequence) {
            this.f4P.mTitle = charSequence;
            return this;
        }

        public final Builder setCustomTitle(View view) {
            this.f4P.mCustomTitleView = view;
            return this;
        }

        public final Builder setMessage(int i) {
            this.f4P.mMessage = this.f4P.mContext.getText(i);
            return this;
        }

        public final Builder setMessage(CharSequence charSequence) {
            this.f4P.mMessage = charSequence;
            return this;
        }

        public final Builder setIcon(Drawable drawable) {
            this.f4P.mIcon = drawable;
            return this;
        }

        public final Builder setPositiveButton(int i, OnClickListener onClickListener) {
            this.f4P.mPositiveButtonText = this.f4P.mContext.getText(i);
            this.f4P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public final Builder setPositiveButton(CharSequence charSequence, OnClickListener onClickListener) {
            this.f4P.mPositiveButtonText = charSequence;
            this.f4P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public final Builder setNegativeButton(int i, OnClickListener onClickListener) {
            this.f4P.mNegativeButtonText = this.f4P.mContext.getText(i);
            this.f4P.mNegativeButtonListener = onClickListener;
            return this;
        }

        public final Builder setCancelable$184cab27() {
            this.f4P.mCancelable = false;
            return this;
        }

        public final Builder setOnKeyListener(OnKeyListener onKeyListener) {
            this.f4P.mOnKeyListener = onKeyListener;
            return this;
        }

        public final Builder setItems(int i, OnClickListener onClickListener) {
            this.f4P.mItems = this.f4P.mContext.getResources().getTextArray(i);
            this.f4P.mOnClickListener = onClickListener;
            return this;
        }

        public final Builder setAdapter(ListAdapter listAdapter, OnClickListener onClickListener) {
            this.f4P.mAdapter = listAdapter;
            this.f4P.mOnClickListener = onClickListener;
            return this;
        }

        public final Builder setView(View view) {
            this.f4P.mView = view;
            this.f4P.mViewLayoutResId = 0;
            this.f4P.mViewSpacingSpecified = false;
            return this;
        }

        public final AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.f4P.mContext, this.mTheme);
            AlertParams alertParams = this.f4P;
            AlertController alertController = alertDialog.mAlert;
            if (alertParams.mCustomTitleView != null) {
                alertController.setCustomTitle(alertParams.mCustomTitleView);
            } else {
                if (alertParams.mTitle != null) {
                    alertController.setTitle(alertParams.mTitle);
                }
                if (alertParams.mIcon != null) {
                    alertController.setIcon(alertParams.mIcon);
                }
            }
            if (alertParams.mMessage != null) {
                alertController.setMessage(alertParams.mMessage);
            }
            if (alertParams.mPositiveButtonText != null) {
                alertController.setButton$45cf7532(-1, alertParams.mPositiveButtonText, alertParams.mPositiveButtonListener, null);
            }
            if (alertParams.mNegativeButtonText != null) {
                alertController.setButton$45cf7532(-2, alertParams.mNegativeButtonText, alertParams.mNegativeButtonListener, null);
            }
            if (!(alertParams.mItems == null && alertParams.mAdapter == null)) {
                ListAdapter listAdapter;
                RecycleListView recycleListView = (RecycleListView) alertParams.mInflater.inflate(alertController.mListLayout, null);
                int i = alertController.mListItemLayout;
                if (alertParams.mAdapter != null) {
                    listAdapter = alertParams.mAdapter;
                } else {
                    listAdapter = new CheckedItemAdapter(alertParams.mContext, i, alertParams.mItems);
                }
                alertController.mAdapter = listAdapter;
                alertController.mCheckedItem = alertParams.mCheckedItem;
                if (alertParams.mOnClickListener != null) {
                    recycleListView.setOnItemClickListener(new C02123(alertController));
                }
                alertController.mListView = recycleListView;
            }
            if (alertParams.mView != null) {
                alertController.setView(alertParams.mView);
            }
            alertDialog.setCancelable(this.f4P.mCancelable);
            if (this.f4P.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(null);
            alertDialog.setOnDismissListener(null);
            if (this.f4P.mOnKeyListener != null) {
                alertDialog.setOnKeyListener(this.f4P.mOnKeyListener);
            }
            return alertDialog;
        }

        public final AlertDialog show() {
            AlertDialog create = create();
            create.show();
            return create;
        }
    }

    protected AlertDialog(Context context, int i) {
        super(context, resolveDialogTheme(context, i));
    }

    static int resolveDialogTheme(Context context, int i) {
        if ((i >>> 24) > 0) {
            return i;
        }
        i = new TypedValue();
        context.getTheme().resolveAttribute(C0859R.attr.alertDialogTheme, i, true);
        return i.resourceId;
    }

    public final Button getButton(int i) {
        AlertController alertController = this.mAlert;
        switch (i) {
            case ProfilePictureView.NORMAL /*-3*/:
                return alertController.mButtonNeutral;
            case -2:
                return alertController.mButtonNegative;
            case -1:
                return alertController.mButtonPositive;
            default:
                return 0;
        }
    }

    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mAlert.setTitle(charSequence);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert.installContent();
    }

    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        AlertController alertController = this.mAlert;
        boolean z = alertController.mScrollView != null && alertController.mScrollView.executeKeyEvent(keyEvent);
        return z ? true : super.onKeyDown(i, keyEvent);
    }

    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        AlertController alertController = this.mAlert;
        boolean z = alertController.mScrollView != null && alertController.mScrollView.executeKeyEvent(keyEvent);
        return z ? true : super.onKeyUp(i, keyEvent);
    }
}
