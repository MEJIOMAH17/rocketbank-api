package ru.rocketbank.r2d2.root.chat.incoming;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.jakewharton.rxbinding.view.RxView;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.AdminProfileActivity;
import ru.rocketbank.r2d2.root.chat.MessageViewHolder;
import rx.functions.Action1;

/* compiled from: IncomingViewHolder.kt */
public class IncomingViewHolder extends MessageViewHolder {
    private final CropCircleTransformation cropCircleTransformation;
    private final ImageView iconView;
    private final LinearLayout messageView;
    private String permalimk;
    private final RocketTextView statusView;
    private final RocketAutofitTextView whoView;

    public IncomingViewHolder(final Context context, View view) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(context, view);
        View findViewById = view.findViewById(C0859R.id.icon);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.iconView = (ImageView) findViewById;
        findViewById = view.findViewById(C0859R.id.who);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView");
        }
        this.whoView = (RocketAutofitTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.status);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.statusView = (RocketTextView) findViewById;
        view = view.findViewById(C0859R.id.messageBody);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout");
        }
        this.messageView = (LinearLayout) view;
        this.cropCircleTransformation = new CropCircleTransformation(context);
        RxView.clicks(this.iconView).subscribe((Action1) new Action1<Void>() {
            public final void call(Void voidR) {
                if (this.getPermalimk() != null) {
                    voidR = AdminProfileActivity.Companion;
                    Context context = context;
                    String permalimk = this.getPermalimk();
                    if (permalimk == null) {
                        Intrinsics.throwNpe();
                    }
                    voidR.start(context, permalimk);
                }
            }
        });
    }

    public final String getPermalimk() {
        return this.permalimk;
    }

    public final void setPermalimk(String str) {
        this.permalimk = str;
    }

    public void clear() {
        super.clear();
        Glide.clear(this.iconView);
        this.iconView.setImageDrawable(null);
    }

    public final void setWhiteBubble(boolean z) {
        this.messageView.setBackgroundResource(z ? C0859R.drawable.white_bubble_support : C0859R.drawable.white_bubble_support_1);
        LayoutParams layoutParams = this.messageView.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        }
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        if (z) {
            z = false;
        } else {
            z = Utils.dpToPx(this.messageView.getContext(), 5);
        }
        layoutParams2.rightMargin = z;
        this.messageView.requestLayout();
    }

    public final void setDocumengGray(boolean z) {
        this.messageView.setBackgroundResource(z ? C0859R.drawable.grey_bubble_support : C0859R.drawable.grey_bubble_support_1);
        LayoutParams layoutParams = this.messageView.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        }
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        if (z) {
            z = false;
        } else {
            z = Utils.dpToPx(this.messageView.getContext(), 5);
        }
        layoutParams2.rightMargin = z;
        this.messageView.requestLayout();
    }

    public final void setWho(String str) {
        if (str == null) {
            this.whoView.setVisibility(4);
            return;
        }
        this.whoView.setVisibility(0);
        this.whoView.setText(str);
    }

    public final void setIcon(String str) {
        if (str == null) {
            this.iconView.setVisibility(8);
            Glide.clear((View) this.iconView);
            return;
        }
        this.iconView.setVisibility(0);
        int dimen = getDimen(C0859R.dimen.dimen_icon_size);
        Glide.with(this.iconView.getContext()).load(str).override(dimen, dimen).centerCrop().error(new ColorDrawable(-7829368)).bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(this.iconView);
    }
}
