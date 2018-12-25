package ru.rocketbank.r2d2.root.chat;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import com.jakewharton.rxbinding.view.RxView;
import com.jakewharton.rxbinding.widget.RxTextView;
import java.util.ArrayList;
import java.util.HashMap;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import me.leolin.shortcutbadger.ShortcutBadger;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.network.api.AgentsApi;
import ru.rocketbank.core.service.DownloadService;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.activities.operation.OperationListActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.root.chat.ChatActionPopup.PopupActions;
import ru.rocketbank.r2d2.root.chat.outgoing.RetryMessageListener;
import ru.rocketbank.r2d2.utils.ImageUpload;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.subjects.PublishSubject;

/* compiled from: ChatFragment.kt */
public final class ChatFragment extends RocketFragment implements ObservableScrollViewCallbacks, PopupActions, ChatDownloadInterface, RetryMessageListener {
    public static final Companion Companion = new Companion();
    public static final String FILE_NAME = "FILE_NAME";
    public static final int INCOMMING_OPERATION = 61453;
    public static final String KEY_OPERATION = "KEY_OPERATION";
    public static final String MESSAGE_TEXT = "MESSAGE_TEXT";
    public static final String PENDING_FILE = "PENDING_FILE";
    public static final int PERM_ASK_CAMERA = 0;
    public static final int PERM_ASK_FILE = 2;
    public static final int PERM_ASK_GALLERY = 1;
    private static final String TAG = "ChatFragment";
    public static final int TYPE_MESSAGE_INCOMING = 0;
    public static final int TYPE_MESSAGE_INCOMING_DOCUMENT = 20;
    public static final int TYPE_MESSAGE_INCOMING_IMAGE = 10;
    public static final int TYPE_MESSAGE_INCOMING_OPERATION = 30;
    public static final int TYPE_MESSAGE_INCOMING_RATING = 40;
    public static final int TYPE_MESSAGE_INCOMING_STICKER = 50;
    public static final int TYPE_MESSAGE_INCOMING_TEXT = 0;
    public static final int TYPE_MESSAGE_OUTGOING = 1;
    public static final int TYPE_MESSAGE_OUTGOING_DOCUMENT = 21;
    public static final int TYPE_MESSAGE_OUTGOING_IMAGE = 11;
    public static final int TYPE_MESSAGE_OUTGOING_OPERATION = 31;
    public static final int TYPE_MESSAGE_OUTGOING_RATING = 41;
    public static final int TYPE_MESSAGE_OUTGOING_STICKER = 51;
    public static final int TYPE_MESSAGE_OUTGOING_TEXT = 1;
    public static final int TYPE_MESSAGE_TYPING = 65535;
    private HashMap _$_findViewCache;
    private ImageButton actionButtonView;
    private ChatAdapter adapter;
    public AgentsApi agentApi;
    private RocketTextView amountView;
    private Operation attachedOperation;
    public Authorization authorization;
    private String cameraPhotoPath;
    private ChatActionPopup chatActionPopup;
    private ObservableRecyclerView chatView;
    private ImageButton closeView;
    public CropCircleTransformation cropCircleTransformation;
    private View delimiterMenu;
    private RelativeLayout editZoneView;
    private boolean isKeyboardOpened;
    private MessageManager messageManager;
    private Subscription messageSubscription;
    private RocketEditText messageView;
    public MoneyFormatter moneyFormatter;
    public OnRatingChangeListener onRatingBarChangeListener;
    private PublishSubject<Void> openPopupSubject = PublishSubject.create();
    private RelativeLayout operationBlockView;
    private RocketTextView operationNameView;
    private PendingFile pendingFile;
    private Subscription ratingSubscription;
    private RocketLoader rocketLoader;
    private ViewGroup rootView;
    private ImageButton sendView;
    private Toolbar toolbar;
    private int windowWidth;

    /* compiled from: ChatFragment.kt */
    public static final class Companion {
        public final int getType(int i, int i2) {
            return (i * 10) + i2;
        }

        private Companion() {
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final void onDownMotionEvent() {
    }

    public final void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    public static final /* synthetic */ ImageButton access$getActionButtonView$p(ChatFragment chatFragment) {
        chatFragment = chatFragment.actionButtonView;
        if (chatFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("actionButtonView");
        }
        return chatFragment;
    }

    public static final /* synthetic */ ChatActionPopup access$getChatActionPopup$p(ChatFragment chatFragment) {
        chatFragment = chatFragment.chatActionPopup;
        if (chatFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatActionPopup");
        }
        return chatFragment;
    }

    public static final /* synthetic */ ObservableRecyclerView access$getChatView$p(ChatFragment chatFragment) {
        chatFragment = chatFragment.chatView;
        if (chatFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatView");
        }
        return chatFragment;
    }

    public static final /* synthetic */ View access$getDelimiterMenu$p(ChatFragment chatFragment) {
        chatFragment = chatFragment.delimiterMenu;
        if (chatFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("delimiterMenu");
        }
        return chatFragment;
    }

    public static final /* synthetic */ RelativeLayout access$getEditZoneView$p(ChatFragment chatFragment) {
        chatFragment = chatFragment.editZoneView;
        if (chatFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editZoneView");
        }
        return chatFragment;
    }

    public static final /* synthetic */ RocketEditText access$getMessageView$p(ChatFragment chatFragment) {
        chatFragment = chatFragment.messageView;
        if (chatFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageView");
        }
        return chatFragment;
    }

    public static final /* synthetic */ RocketLoader access$getRocketLoader$p(ChatFragment chatFragment) {
        chatFragment = chatFragment.rocketLoader;
        if (chatFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketLoader");
        }
        return chatFragment;
    }

    public static final /* synthetic */ ImageButton access$getSendView$p(ChatFragment chatFragment) {
        chatFragment = chatFragment.sendView;
        if (chatFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendView");
        }
        return chatFragment;
    }

    public final MessageManager getMessageManager() {
        return this.messageManager;
    }

    public final void setMessageManager(MessageManager messageManager) {
        this.messageManager = messageManager;
    }

    public final AgentsApi getAgentApi() {
        AgentsApi agentsApi = this.agentApi;
        if (agentsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("agentApi");
        }
        return agentsApi;
    }

    public final void setAgentApi(AgentsApi agentsApi) {
        Intrinsics.checkParameterIsNotNull(agentsApi, "<set-?>");
        this.agentApi = agentsApi;
    }

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    public final MoneyFormatter getMoneyFormatter() {
        MoneyFormatter moneyFormatter = this.moneyFormatter;
        if (moneyFormatter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
        }
        return moneyFormatter;
    }

    public final void setMoneyFormatter(MoneyFormatter moneyFormatter) {
        Intrinsics.checkParameterIsNotNull(moneyFormatter, "<set-?>");
        this.moneyFormatter = moneyFormatter;
    }

    public final CropCircleTransformation getCropCircleTransformation() {
        CropCircleTransformation cropCircleTransformation = this.cropCircleTransformation;
        if (cropCircleTransformation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
        }
        return cropCircleTransformation;
    }

    public final void setCropCircleTransformation(CropCircleTransformation cropCircleTransformation) {
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "<set-?>");
        this.cropCircleTransformation = cropCircleTransformation;
    }

    public final OnRatingChangeListener getOnRatingBarChangeListener() {
        OnRatingChangeListener onRatingChangeListener = this.onRatingBarChangeListener;
        if (onRatingChangeListener == null) {
            Intrinsics.throwUninitializedPropertyAccessException("onRatingBarChangeListener");
        }
        return onRatingChangeListener;
    }

    public final void setOnRatingBarChangeListener(OnRatingChangeListener onRatingChangeListener) {
        Intrinsics.checkParameterIsNotNull(onRatingChangeListener, "<set-?>");
        this.onRatingBarChangeListener = onRatingChangeListener;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        viewGroup = layoutInflater.inflate(C0859R.layout.fragment_chat, viewGroup, false);
        View findViewById = viewGroup.findViewById(C0859R.id.chat);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView");
        }
        this.chatView = (ObservableRecyclerView) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.actionButton);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageButton");
        }
        this.actionButtonView = (ImageButton) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.send);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageButton");
        }
        this.sendView = (ImageButton) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.message);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText");
        }
        this.messageView = (RocketEditText) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.editZone);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.RelativeLayout");
        }
        this.editZoneView = (RelativeLayout) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.root);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
        }
        this.rootView = (ViewGroup) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.toolbar);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        this.toolbar = (Toolbar) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.loader);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketLoader");
        }
        this.rocketLoader = (RocketLoader) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.operationBlock);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.RelativeLayout");
        }
        this.operationBlockView = (RelativeLayout) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.operationName);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.operationNameView = (RocketTextView) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.amount);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.amountView = (RocketTextView) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.close);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageButton");
        }
        this.closeView = (ImageButton) findViewById;
        findViewById = viewGroup.findViewById(C0859R.id.delimiterMenu);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "view.findViewById(R.id.delimiterMenu)");
        this.delimiterMenu = findViewById;
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
        Context context = viewGroup.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "view.context");
        ViewGroup viewGroup2 = this.rootView;
        if (viewGroup2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootView");
        }
        this.chatActionPopup = new ChatActionPopup(context, layoutInflater, viewGroup2);
        layoutInflater = this.chatActionPopup;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatActionPopup");
        }
        layoutInflater.setActions(this);
        layoutInflater = this.chatActionPopup;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatActionPopup");
        }
        layoutInflater.setDismissListener(new ChatFragment$onCreateView$1(this, viewGroup));
        layoutInflater = getArguments();
        if (layoutInflater != null) {
            this.attachedOperation = (Operation) layoutInflater.getParcelable(KEY_OPERATION);
            if (this.attachedOperation != null) {
                layoutInflater = this.delimiterMenu;
                if (layoutInflater == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("delimiterMenu");
                }
                layoutInflater.setVisibility(0);
            }
        }
        if (bundle != null) {
            this.cameraPhotoPath = bundle.getString(FILE_NAME);
            this.pendingFile = (PendingFile) bundle.getParcelable(PENDING_FILE);
        }
        this.onRatingBarChangeListener = (OnRatingChangeListener) new ChatFragment$onCreateView$4(this);
        layoutInflater = viewGroup.getContext().getSystemService("window");
        if (layoutInflater == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        layoutInflater = ((WindowManager) layoutInflater).getDefaultDisplay();
        bundle = new Point();
        layoutInflater.getSize(bundle);
        this.windowWidth = bundle.x;
        layoutInflater = viewGroup.getContext().getSystemService("input_method");
        if (layoutInflater == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
        InputMethodManager inputMethodManager = (InputMethodManager) layoutInflater;
        bundle = this.chatView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatView");
        }
        bundle.setOnTouchListener(new ChatFragment$onCreateView$5(this, inputMethodManager));
        setListenerToRootView();
        return viewGroup;
    }

    public final boolean isKeyboardOpened() {
        return this.isKeyboardOpened;
    }

    public final void setKeyboardOpened(boolean z) {
        this.isKeyboardOpened = z;
    }

    private final void setListenerToRootView() {
        if (isAdded() && getActivity() != null) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            Window window = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window, "activity!!.window");
            View findViewById = window.getDecorView().findViewById(16908290);
            Intrinsics.checkExpressionValueIsNotNull(findViewById, "activityRootView");
            findViewById.getViewTreeObserver().addOnGlobalLayoutListener(new ChatFragment$setListenerToRootView$1(this, findViewById));
        }
    }

    private final void reopenChatPopUp() {
        ChatActionPopup chatActionPopup = this.chatActionPopup;
        if (chatActionPopup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatActionPopup");
        }
        chatActionPopup.dismiss();
        this.openPopupSubject.onNext(null);
    }

    private final void updateOperation() {
        RelativeLayout relativeLayout;
        if (this.attachedOperation != null) {
            relativeLayout = this.operationBlockView;
            if (relativeLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("operationBlockView");
            }
            relativeLayout.setVisibility(0);
            RocketTextView rocketTextView = this.operationNameView;
            if (rocketTextView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("operationNameView");
            }
            Operation operation = this.attachedOperation;
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            rocketTextView.setText(operation.getDetails());
            rocketTextView = this.amountView;
            if (rocketTextView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("amountView");
            }
            MoneyFormatter moneyFormatter = this.moneyFormatter;
            if (moneyFormatter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
            }
            Operation operation2 = this.attachedOperation;
            if (operation2 == null) {
                Intrinsics.throwNpe();
            }
            MoneyData displayMoney = operation2.getDisplayMoney();
            if (displayMoney == null) {
                Intrinsics.throwNpe();
            }
            double amount = displayMoney.getAmount();
            Operation operation3 = this.attachedOperation;
            if (operation3 == null) {
                Intrinsics.throwNpe();
            }
            MoneyData displayMoney2 = operation3.getDisplayMoney();
            if (displayMoney2 == null) {
                Intrinsics.throwNpe();
            }
            String currencyCode = displayMoney2.getCurrencyCode();
            Intrinsics.checkExpressionValueIsNotNull(currencyCode, "attachedOperation!!.displayMoney!!.currencyCode");
            rocketTextView.setText(moneyFormatter.format(amount, currencyCode, false));
            return;
        }
        relativeLayout = this.operationBlockView;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationBlockView");
        }
        relativeLayout.setVisibility(8);
    }

    private final void initClicks() {
        ImageButton imageButton = this.closeView;
        if (imageButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("closeView");
        }
        RxView.clicks(imageButton).subscribe((Action1) new ChatFragment$initClicks$1(this));
        imageButton = this.actionButtonView;
        if (imageButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("actionButtonView");
        }
        Observable.merge(RxView.clicks(imageButton), (Observable) this.openPopupSubject).subscribe((Action1) new ChatFragment$initClicks$2(this));
        ObservableRecyclerView observableRecyclerView = this.chatView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatView");
        }
        observableRecyclerView.setRecyclerListener(ChatFragment$initClicks$3.INSTANCE);
        imageButton = this.sendView;
        if (imageButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendView");
        }
        RxView.clicks(imageButton).subscribe((Action1) new ChatFragment$initClicks$4(this));
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        toolbar.setTitle(getString(C0859R.string.support));
        String string = PreferenceManager.getDefaultSharedPreferences(getContext()).getString(MESSAGE_TEXT, null);
        if (string != null) {
            RocketEditText rocketEditText = this.messageView;
            if (rocketEditText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageView");
            }
            rocketEditText.setText(string);
        }
        initClicks();
        this.cropCircleTransformation = new CropCircleTransformation(getContext());
        this.agentApi = getInjector().getAgentsApi();
        this.authorization = getInjector().getAuthorization();
        CurrencyManager currencyManager = getInjector().getCurrencyManager();
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        this.moneyFormatter = new MoneyFormatter(context, authorization, currencyManager);
        if (this.messageManager != null) {
            RocketLoader rocketLoader = this.rocketLoader;
            if (rocketLoader == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketLoader");
            }
            rocketLoader.setVisibility(8);
        }
        if (getActivity() instanceof MainActivity) {
            setupDefaultToolbar(view, C0859R.id.toolbar);
        } else {
            toolbar = this.toolbar;
            if (toolbar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("toolbar");
            }
            setToolbarActionBar(toolbar);
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity(), 1, true);
        ObservableRecyclerView observableRecyclerView = this.chatView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatView");
        }
        observableRecyclerView.setLayoutManager(linearLayoutManager);
        if (this.adapter == null) {
            ObservableRecyclerView observableRecyclerView2 = this.chatView;
            if (observableRecyclerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatView");
            }
            this.adapter = new ChatAdapter(this, view, observableRecyclerView2, this.messageManager);
        }
        view = this.chatView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatView");
        }
        view.setAdapter(this.adapter);
        view = this.chatView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatView");
        }
        view.setScrollViewCallbacks(this);
        if (this.messageManager == null) {
            this.messageManager = new MessageManager();
        }
        view = this.messageManager;
        if (view != null) {
            view.onCreate(bundle);
            Subscription subscription = this.messageSubscription;
            if (subscription != null) {
                subscription.unsubscribe();
            }
            this.messageSubscription = view.messageObservable().onBackpressureBuffer(10).observeOn(AndroidSchedulers.mainThread()).doOnError(ChatFragment$onViewCreated$3$1.INSTANCE).subscribe((Action1) new ChatFragment$onViewCreated$$inlined$let$lambda$1(this, bundle, linearLayoutManager));
        }
    }

    public final void onStart() {
        super.onStart();
        RocketEditText rocketEditText = this.messageView;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageView");
        }
        CharSequence obj = rocketEditText.getText().toString();
        boolean z = true;
        int length = obj.length() - 1;
        int i = 0;
        int i2 = i;
        while (i <= length) {
            boolean z2 = obj.charAt(i2 == 0 ? i : length) <= ' ';
            if (i2 != 0) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                i2 = true;
            }
        }
        String obj2 = obj.subSequence(i, length + 1).toString();
        ImageButton imageButton = this.sendView;
        if (imageButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendView");
        }
        if (this.attachedOperation == null) {
            if (((CharSequence) obj2).length() == 0) {
                z = false;
            }
        }
        imageButton.setEnabled(z);
        rocketEditText = this.messageView;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageView");
        }
        RxTextView.afterTextChangeEvents(rocketEditText).subscribe((Action1) new ChatFragment$onStart$1(this));
        MessageManager messageManager = this.messageManager;
        if (messageManager == null) {
            Intrinsics.throwNpe();
        }
        messageManager.onStart();
        messageManager = this.messageManager;
        if (messageManager == null) {
            Intrinsics.throwNpe();
        }
        messageManager.refresh();
        RocketLoader rocketLoader = this.rocketLoader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketLoader");
        }
        rocketLoader.setVisibility(0);
        updateOperation();
        try {
            ShortcutBadger.removeCount(getActivity());
        } catch (Throwable th) {
            Log.e(TAG, "removeCount is dead", th);
        }
    }

    public final void onStop() {
        super.onStop();
        MessageManager messageManager = this.messageManager;
        if (messageManager != null) {
            messageManager.onStop();
        }
        Editor edit = PreferenceManager.getDefaultSharedPreferences(getContext()).edit();
        String str = MESSAGE_TEXT;
        RocketEditText rocketEditText = this.messageView;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageView");
        }
        edit.putString(str, rocketEditText.getText().toString()).apply();
    }

    public final void onDestroyView() {
        super.onDestroyView();
        Subscription subscription = this.messageSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        _$_clearFindViewByIdCache();
    }

    public final void onScrollChanged(int i, boolean z, boolean z2) {
        loadNextPageIfNeeded();
    }

    public final void onCameraPressed() {
        if (VERSION.SDK_INT < 23 || checkOrRequestCamera(0)) {
            startCamera();
        }
    }

    public final void startCamera() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r7 = this;
        r0 = new java.lang.StringBuilder;
        r1 = "photo_";
        r0.<init>(r1);
        r1 = java.util.Calendar.getInstance();
        r2 = "Calendar.getInstance()";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r1 = r1.getTimeInMillis();
        r0.append(r1);
        r0 = r0.toString();
        r1 = ru.rocketbank.r2d2.RocketApplication.Companion;
        r1 = r1.getInjector();
        r1 = r1.getFileManager();
        r2 = "jpg";
        r0 = r1.createPublicImageFile(r0, r2);
        r1 = r0.getAbsolutePath();
        r7.cameraPhotoPath = r1;
        r1 = r7.getActivity();
        r2 = r1 instanceof ru.rocketbank.r2d2.activities.SecuredActivity;
        if (r2 == 0) goto L_0x003e;
    L_0x0039:
        r1 = (ru.rocketbank.r2d2.activities.SecuredActivity) r1;
        r1.keepUnlocked();
    L_0x003e:
        r1 = new android.content.Intent;
        r2 = "android.media.action.IMAGE_CAPTURE";
        r1.<init>(r2);
        r2 = "output";
        r3 = r0.getUri();
        r3 = (android.os.Parcelable) r3;
        r1.putExtra(r2, r3);
        r2 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x00c4 }
        r3 = 21;	 Catch:{ Exception -> 0x00c4 }
        if (r2 >= r3) goto L_0x00be;	 Catch:{ Exception -> 0x00c4 }
    L_0x0056:
        r2 = r7.getContext();	 Catch:{ Exception -> 0x00c4 }
        if (r2 != 0) goto L_0x005f;	 Catch:{ Exception -> 0x00c4 }
    L_0x005c:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00c4 }
    L_0x005f:
        r3 = "context!!";	 Catch:{ Exception -> 0x00c4 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);	 Catch:{ Exception -> 0x00c4 }
        r2 = r2.getPackageManager();	 Catch:{ Exception -> 0x00c4 }
        r3 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;	 Catch:{ Exception -> 0x00c4 }
        r2 = r2.queryIntentActivities(r1, r3);	 Catch:{ Exception -> 0x00c4 }
        r3 = "resInfoList";	 Catch:{ Exception -> 0x00c4 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);	 Catch:{ Exception -> 0x00c4 }
        r2 = (java.lang.Iterable) r2;	 Catch:{ Exception -> 0x00c4 }
        r3 = new java.util.ArrayList;	 Catch:{ Exception -> 0x00c4 }
        r4 = kotlin.collections.CollectionsKt.collectionSizeOrDefault$251b5948(r2);	 Catch:{ Exception -> 0x00c4 }
        r3.<init>(r4);	 Catch:{ Exception -> 0x00c4 }
        r3 = (java.util.Collection) r3;	 Catch:{ Exception -> 0x00c4 }
        r2 = r2.iterator();	 Catch:{ Exception -> 0x00c4 }
    L_0x0084:
        r4 = r2.hasNext();	 Catch:{ Exception -> 0x00c4 }
        if (r4 == 0) goto L_0x0098;	 Catch:{ Exception -> 0x00c4 }
    L_0x008a:
        r4 = r2.next();	 Catch:{ Exception -> 0x00c4 }
        r4 = (android.content.pm.ResolveInfo) r4;	 Catch:{ Exception -> 0x00c4 }
        r4 = r4.activityInfo;	 Catch:{ Exception -> 0x00c4 }
        r4 = r4.packageName;	 Catch:{ Exception -> 0x00c4 }
        r3.add(r4);	 Catch:{ Exception -> 0x00c4 }
        goto L_0x0084;	 Catch:{ Exception -> 0x00c4 }
    L_0x0098:
        r3 = (java.util.List) r3;	 Catch:{ Exception -> 0x00c4 }
        r3 = (java.lang.Iterable) r3;	 Catch:{ Exception -> 0x00c4 }
        r2 = r3.iterator();	 Catch:{ Exception -> 0x00c4 }
    L_0x00a0:
        r3 = r2.hasNext();	 Catch:{ Exception -> 0x00c4 }
        if (r3 == 0) goto L_0x00be;	 Catch:{ Exception -> 0x00c4 }
    L_0x00a6:
        r3 = r2.next();	 Catch:{ Exception -> 0x00c4 }
        r3 = (java.lang.String) r3;	 Catch:{ Exception -> 0x00c4 }
        r4 = r7.getContext();	 Catch:{ Exception -> 0x00c4 }
        if (r4 != 0) goto L_0x00b5;	 Catch:{ Exception -> 0x00c4 }
    L_0x00b2:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00c4 }
    L_0x00b5:
        r5 = r0.getUri();	 Catch:{ Exception -> 0x00c4 }
        r6 = 3;	 Catch:{ Exception -> 0x00c4 }
        r4.grantUriPermission(r3, r5, r6);	 Catch:{ Exception -> 0x00c4 }
        goto L_0x00a0;	 Catch:{ Exception -> 0x00c4 }
    L_0x00be:
        r0 = ru.rocketbank.r2d2.utils.ImageUpload.REQUEST_FROM_CAMERA;	 Catch:{ Exception -> 0x00c4 }
        r7.startActivityForResult(r1, r0);	 Catch:{ Exception -> 0x00c4 }
        return;
    L_0x00c4:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.chat.ChatFragment.startCamera():void");
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(i);
        stringBuilder.append(' ');
        stringBuilder.append(i2);
        stringBuilder.append(" intent=");
        stringBuilder.append(intent);
        Log.v(str, stringBuilder.toString());
        if (i2 == -1) {
            if (i != INCOMMING_OPERATION) {
                uploadImage(i, intent);
            } else if (intent != null) {
                i = intent.getParcelableExtra(OperationListActivity.Companion.getOPEATION());
                Intrinsics.checkExpressionValueIsNotNull(i, "data.getParcelableExtra(…ionListActivity.OPEATION)");
                Operation operation = (Operation) i;
                if ((operation instanceof Operation) != 0) {
                    i2 = this.messageManager;
                    if (i2 != 0) {
                        i2.send(operation);
                    }
                }
            }
        }
    }

    private final void uploadImage(int i, Intent intent) {
        if (i == ImageUpload.REQUEST_FROM_CAMERA) {
            i = this.cameraPhotoPath;
            if (i != 0) {
                intent = this.messageManager;
                if (intent != null) {
                    intent.uploadFromCamera(i, 1024);
                }
                onSendPostActions(false);
            }
        } else if (i == ImageUpload.REQUEST_FROM_GALLERY && intent != null) {
            i = this.messageManager;
            if (i != 0) {
                i.uploadFromGallery(intent, 1024);
            }
            onSendPostActions(false);
        }
    }

    public final void retry(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        MessageManager messageManager = this.messageManager;
        if (messageManager != null) {
            messageManager.retryMessage(messageIn);
        }
    }

    public final void onOperationPressed() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        if (authorization.getUserImmediate() != null) {
            startActivityForResult(new Intent(getActivity(), OperationListActivity.class), INCOMMING_OPERATION);
        }
    }

    public final void onLovePressed() {
        MessageManager messageManager = this.messageManager;
        if (messageManager != null) {
            messageManager.sendLove();
        }
        onSendPostActions(false);
    }

    public final void onGalleyPressed() {
        if (VERSION.SDK_INT < 23 || checkOrRequestGallery(1)) {
            startGallery();
        }
    }

    public static /* bridge */ /* synthetic */ void onSendPostActions$default(ChatFragment chatFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        chatFragment.onSendPostActions(z);
    }

    public final void onSendPostActions(boolean z) {
        ObservableRecyclerView observableRecyclerView = this.chatView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatView");
        }
        observableRecyclerView.smoothScrollToPosition(0);
        if (z) {
            z = this.messageView;
            if (!z) {
                Intrinsics.throwUninitializedPropertyAccessException("messageView");
            }
            z.setText("");
        }
    }

    public final void startGallery() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = new android.content.Intent;
        r1 = "android.intent.action.PICK";
        r2 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        r0.<init>(r1, r2);
        r1 = r3.getActivity();
        r2 = r1 instanceof ru.rocketbank.r2d2.activities.SecuredActivity;
        if (r2 == 0) goto L_0x0016;
    L_0x0011:
        r1 = (ru.rocketbank.r2d2.activities.SecuredActivity) r1;
        r1.keepUnlocked();
    L_0x0016:
        r1 = ru.rocketbank.r2d2.utils.ImageUpload.REQUEST_FROM_GALLERY;	 Catch:{ Exception -> 0x001c }
        r3.startActivityForResult(r0, r1);	 Catch:{ Exception -> 0x001c }
        return;
    L_0x001c:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.chat.ChatFragment.startGallery():void");
    }

    private final void loadNextPageIfNeeded() {
        ObservableRecyclerView observableRecyclerView = this.chatView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatView");
        }
        LayoutManager layoutManager = observableRecyclerView.getLayoutManager();
        if (layoutManager == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager");
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        ChatAdapter chatAdapter = this.adapter;
        if (chatAdapter == null) {
            Intrinsics.throwNpe();
        }
        int itemCount = chatAdapter.getItemCount();
        findFirstVisibleItemPosition = findLastVisibleItemPosition - findFirstVisibleItemPosition;
        if (findFirstVisibleItemPosition > 100) {
            findFirstVisibleItemPosition = 100;
        }
        if (itemCount - findLastVisibleItemPosition < (findFirstVisibleItemPosition << 1)) {
            MessageManager messageManager = this.messageManager;
            if (messageManager != null) {
                messageManager.loadNextPage();
            }
        }
    }

    public final void sendRating(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "permalink");
        showProgressExecution();
        AgentsApi agentsApi = this.agentApi;
        if (agentsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("agentApi");
        }
        this.ratingSubscription = agentsApi.rate(str, i, null).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new ChatFragment$sendRating$1(this));
    }

    private final void hideProgress() {
        hideSpinner();
    }

    private final void showProgressExecution() {
        showSpinner(C0859R.string.action_doing);
    }

    private final boolean checkOrRequestFileSave(int i) {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission = ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE");
        Context context2 = getContext();
        if (context2 == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission2 = ContextCompat.checkSelfPermission(context2, "android.permission.WRITE_EXTERNAL_STORAGE");
        ArrayList arrayList = new ArrayList();
        if (checkSelfPermission != 0) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        if (checkSelfPermission2 != 0) {
            arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        requestPermissions(strArr, i);
        return false;
    }

    private final boolean checkOrRequestCamera(int i) {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission = ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE");
        Context context2 = getContext();
        if (context2 == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission2 = ContextCompat.checkSelfPermission(context2, "android.permission.WRITE_EXTERNAL_STORAGE");
        Context context3 = getContext();
        if (context3 == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission3 = ContextCompat.checkSelfPermission(context3, "android.permission.CAMERA");
        ArrayList arrayList = new ArrayList();
        if (checkSelfPermission != 0) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        if (checkSelfPermission2 != 0) {
            arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        if (checkSelfPermission3 != 0) {
            arrayList.add("android.permission.CAMERA");
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        requestPermissions(strArr, i);
        return false;
    }

    private final boolean checkOrRequestGallery(int i) {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission = ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE");
        ArrayList arrayList = new ArrayList();
        if (checkSelfPermission != 0) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        requestPermissions(strArr, i);
        return false;
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        bundle.putString(FILE_NAME, this.cameraPhotoPath);
        bundle.putParcelable(PENDING_FILE, this.pendingFile);
    }

    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        for (int i2 : iArr) {
            if (i2 == -1) {
                Toast.makeText(getContext(), 2131821342, 1).show();
                return;
            }
        }
        switch (i) {
            case 0:
                startCamera();
                return;
            case 1:
                startGallery();
                return;
            case 2:
                startFileDownload();
                break;
            default:
                break;
        }
    }

    private final void startFileDownload() {
        PendingFile pendingFile = this.pendingFile;
        if (pendingFile != null) {
            ru.rocketbank.core.service.DownloadService.Companion companion = DownloadService.Companion;
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            ru.rocketbank.core.service.DownloadService.Companion.startDownloadPdf(context, pendingFile.getUrl(), pendingFile.getDescription());
            this.pendingFile = null;
        }
    }

    public final void downloadFile(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "url");
        Intrinsics.checkParameterIsNotNull(str2, "description");
        this.pendingFile = new PendingFile(str, str2);
        if (VERSION.SDK_INT < 23 || checkOrRequestFileSave(2) != null) {
            startFileDownload();
        }
    }
}
