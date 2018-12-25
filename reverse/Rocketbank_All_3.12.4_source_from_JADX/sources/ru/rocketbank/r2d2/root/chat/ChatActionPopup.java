package ru.rocketbank.r2d2.root.chat;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import com.jakewharton.rxbinding.view.RxView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import rx.functions.Action1;

/* compiled from: ChatActionPopup.kt */
public final class ChatActionPopup implements OnDismissListener {
    public static final Companion Companion = new Companion();
    private static final int HEIGHT_DP = 206;
    private final ViewGroup container;
    private final Context context;
    private OnDismissListener dismissListenerChat;
    private final LayoutInflater inflater;
    private boolean isShowed;
    private PopupActions maybeActions;
    private PopupWindow popup;
    private ViewHolder viewHolder;

    /* compiled from: ChatActionPopup.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: ChatActionPopup.kt */
    public interface PopupActions {
        void onCameraPressed();

        void onGalleyPressed();

        void onLovePressed();

        void onOperationPressed();
    }

    /* compiled from: ChatActionPopup.kt */
    public final class ViewHolder {
        private final RocketTextView cameraView;
        private final RocketTextView galleryView;
        private final RocketTextView loveView;
        private final RocketTextView operationView;
        final /* synthetic */ ChatActionPopup this$0;

        /* compiled from: ChatActionPopup.kt */
        /* renamed from: ru.rocketbank.r2d2.root.chat.ChatActionPopup$ViewHolder$3 */
        static final class C20433<T> implements Action1<Throwable> {
            public static final C20433 INSTANCE = new C20433();

            C20433() {
            }

            public final void call(Throwable th) {
                AnalyticsManager.logException(th);
            }
        }

        public ViewHolder(ChatActionPopup chatActionPopup, View view) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            this.this$0 = chatActionPopup;
            chatActionPopup = view.findViewById(C0859R.id.operation);
            if (chatActionPopup == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
            }
            this.operationView = (RocketTextView) chatActionPopup;
            chatActionPopup = view.findViewById(C0859R.id.camera);
            if (chatActionPopup == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
            }
            this.cameraView = (RocketTextView) chatActionPopup;
            chatActionPopup = view.findViewById(C0859R.id.gallery);
            if (chatActionPopup == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
            }
            this.galleryView = (RocketTextView) chatActionPopup;
            chatActionPopup = view.findViewById(C0859R.id.love);
            if (chatActionPopup == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
            }
            this.loveView = (RocketTextView) chatActionPopup;
            RxView.clicks((View) this.operationView).subscribe((Action1) new Action1<Void>() {
                public final void call(Void voidR) {
                    voidR = this.this$0.maybeActions;
                    if (voidR != null) {
                        voidR.onOperationPressed();
                    }
                    voidR = this.this$0.popup;
                    if (voidR != null) {
                        voidR.dismiss();
                    }
                }
            });
            RxView.clicks((View) this.cameraView).subscribe((Action1) new Action1<Void>() {
                public final void call(Void voidR) {
                    voidR = this.this$0.maybeActions;
                    if (voidR != null) {
                        voidR.onCameraPressed();
                    }
                    voidR = this.this$0.popup;
                    if (voidR != null) {
                        voidR.dismiss();
                    }
                }
            }, (Action1) C20433.INSTANCE);
            RxView.clicks((View) this.galleryView).subscribe((Action1) new Action1<Void>() {
                public final void call(Void voidR) {
                    voidR = this.this$0.maybeActions;
                    if (voidR != null) {
                        voidR.onGalleyPressed();
                    }
                    voidR = this.this$0.popup;
                    if (voidR != null) {
                        voidR.dismiss();
                    }
                }
            });
            RxView.clicks((View) this.loveView).subscribe((Action1) new Action1<Void>() {
                public final void call(Void voidR) {
                    voidR = this.this$0.maybeActions;
                    if (voidR != null) {
                        voidR.onLovePressed();
                    }
                    voidR = this.this$0.popup;
                    if (voidR != null) {
                        voidR.dismiss();
                    }
                }
            });
        }
    }

    public ChatActionPopup(Context context, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        Intrinsics.checkParameterIsNotNull(viewGroup, "container");
        this.context = context;
        this.inflater = layoutInflater;
        this.container = viewGroup;
    }

    public final OnDismissListener getDismissListenerChat() {
        return this.dismissListenerChat;
    }

    public final void setDismissListenerChat(OnDismissListener onDismissListener) {
        this.dismissListenerChat = onDismissListener;
    }

    public final void onDismiss() {
        this.viewHolder = null;
        this.popup = null;
        OnDismissListener onDismissListener = this.dismissListenerChat;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void setActions(PopupActions popupActions) {
        Intrinsics.checkParameterIsNotNull(popupActions, "popupActions");
        this.maybeActions = popupActions;
    }

    public final void setDismissListener(OnDismissListener onDismissListener) {
        Intrinsics.checkParameterIsNotNull(onDismissListener, "dismissListener");
        this.dismissListenerChat = onDismissListener;
    }

    public final void dismiss() {
        PopupWindow popupWindow = this.popup;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        this.isShowed = false;
    }

    public final boolean isShowed() {
        return this.isShowed;
    }

    public final void showPopup(int i, Point point) {
        Intrinsics.checkParameterIsNotNull(point, "showPoint");
        View inflate = this.inflater.inflate(C0859R.layout.chat_actions, this.container, false);
        int dpToPx = Utils.dpToPx(this.context, HEIGHT_DP);
        Intrinsics.checkExpressionValueIsNotNull(inflate, "view");
        this.viewHolder = new ViewHolder(this, inflate);
        PopupWindow popupWindow = new PopupWindow(this.context);
        popupWindow.setContentView(inflate);
        popupWindow.setWidth(i);
        popupWindow.setHeight(dpToPx);
        popupWindow.setFocusable(true);
        popupWindow.setClippingEnabled(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setOnDismissListener(this);
        popupWindow.showAtLocation(this.container, 0, point.x, point.y);
        this.popup = popupWindow;
        this.isShowed = true;
    }

    public final int getHeight() {
        return Utils.dpToPx(this.context, HEIGHT_DP);
    }
}
