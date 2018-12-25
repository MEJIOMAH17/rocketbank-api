package ru.rocketbank.r2d2.fragments.cardblock;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.enums.BlockReason;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.enums.Status;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.network.model.CardBlockResponse;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketHandler;
import ru.rocketbank.r2d2.activities.CardBlockActivity;
import ru.rocketbank.r2d2.activities.SupportChatActivity;
import ru.rocketbank.r2d2.databinding.FragmentCardblockBinding;
import ru.rocketbank.r2d2.fragments.BaseFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.registration.new_passport.NewPassportActivity;
import ru.rocketbank.r2d2.widgets.cardblock.CardBlockWidget;
import ru.rocketbank.r2d2.widgets.cardblock.CardBlockWidget.OnBlockRequestListener;
import ru.rocketbank.r2d2.widgets.cardblock.CardUnblockWidget;
import ru.rocketbank.r2d2.widgets.cardblock.CardUnblockWidget.OnUnblockRequestListener;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

public class CardblockFragment extends BaseFragment implements OnBlockRequestListener, OnUnblockRequestListener {
    private static final String BLOCK_REASON = "BLOCK_REASON";
    private static final String TOKEN = "TOKEN";
    AccountApi accountApi;
    Authorization authorization;
    private FragmentCardblockBinding binding;
    private Subscription blockSubscription;
    private boolean isBlock;
    private ProgressDialog progressDialog;
    private BlockReason reason;
    private String token;
    private UserModel userModel;
    private Subscription userModelSubscription;
    private CardBlockWidget widgetCardBlock;
    private CardUnblockWidget widgetCardUnblock;

    /* renamed from: ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment$1 */
    class C15231 implements OnClickListener {
        C15231() {
        }

        public void onClick(View view) {
            SupportChatActivity.start(CardblockFragment.this.getActivity());
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment$4 */
    class C15264 implements AnimatorListener {

        /* renamed from: ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment$4$1 */
        class C15251 implements Runnable {
            C15251() {
            }

            public void run() {
                CardblockFragment.this.setCardBlocked();
            }
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
        }

        C15264() {
        }

        public void onAnimationEnd(Animator animator) {
            RocketHandler.getInstance().post(new C15251());
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment$5 */
    class C15285 implements AnimatorListener {

        /* renamed from: ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment$5$1 */
        class C15271 implements Runnable {
            C15271() {
            }

            public void run() {
                CardblockFragment.this.setCardUnblocked();
            }
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
        }

        C15285() {
        }

        public void onAnimationEnd(Animator animator) {
            RocketHandler.getInstance().post(new C15271());
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment$6 */
    class C15296 implements OnDismissListener {
        C15296() {
        }

        public void onDismiss(DialogInterface dialogInterface) {
            CardblockFragment.this.progressDialog = null;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment$3 */
    class C17463 extends Subscriber<CardBlockResponse> {
        public void onCompleted() {
        }

        C17463() {
        }

        public void onError(Throwable th) {
            CardblockFragment.this.hideProgress();
            if (th instanceof RocketResponseException) {
                RocketResponseException rocketResponseException = (RocketResponseException) th;
                GenericRequestResponseData genericRequestResponseData = rocketResponseException.getGenericRequestResponseData();
                if (genericRequestResponseData == null || genericRequestResponseData.getResponse() == null || !genericRequestResponseData.getResponse().getShowIt()) {
                    CardblockFragment.this.error();
                } else {
                    CardblockFragment.this.error(rocketResponseException.getDescription());
                }
            } else {
                CardblockFragment.this.error();
            }
            th.printStackTrace();
        }

        public void onNext(CardBlockResponse cardBlockResponse) {
            CardblockFragment.this.hideProgress();
            CardblockFragment.this.moveToUnblockScreen();
            CardblockFragment.this.getAccount().setUserStatus(Status.BLOCKED);
            if (CardblockFragment.this.getAccount().getCurrency() == Currency.ROUBLE) {
                CardblockFragment.this.userModel.setUserStatus(Status.BLOCKED);
                CardBlockActivity.start(CardblockFragment.this.getActivity(), false);
                CardblockFragment.this.getActivity().finish();
            }
            CardblockFragment.this.authorization.reloadProfile();
            CardblockFragment.this.authorization.refreshBackgroundProfile();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment$2 */
    class C19972 implements Action1<UserModel> {

        /* renamed from: ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment$2$1 */
        class C15241 implements Runnable {
            C15241() {
            }

            public void run() {
                AccountModel access$100 = CardblockFragment.this.getAccount();
                if (access$100 == null) {
                    CardblockFragment.this.getActivity().getSupportFragmentManager().popBackStack();
                }
                if (access$100 != null) {
                    CardblockFragment.this.setCardBlocked();
                }
            }
        }

        C19972() {
        }

        public void call(UserModel userModel) {
            CardblockFragment.this.setUserModel(userModel);
            RocketHandler.getInstance().post(new C15241());
        }
    }

    public static CardblockFragment newCardblockFragment(String str) {
        CardblockFragment cardblockFragment = new CardblockFragment();
        Bundle bundle = new Bundle();
        bundle.putString("TOKEN", str);
        cardblockFragment.setArguments(bundle);
        return cardblockFragment;
    }

    public static CardblockFragment newCardblockFragment(BlockReason blockReason) {
        CardblockFragment cardblockFragment = new CardblockFragment();
        Bundle bundle = new Bundle();
        if (blockReason != null) {
            bundle.putString(BLOCK_REASON, blockReason.getReason());
        }
        cardblockFragment.setArguments(bundle);
        return cardblockFragment;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        bundle = this.binding.includeToolbar.toolbar;
        UIHelper.setPadding(false, view.findViewById(C0859R.id.frameLayout), true, false, false);
        setToolbarSize(bundle, getStatusBarHeight());
        setToolbar(bundle);
        if (((CardBlockActivity) getActivity()).isFromFeed() != null) {
            setBackButton();
        }
        bundle.setTitle(C0859R.string.cba_title);
    }

    private void setUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        bundle = null;
        this.binding = FragmentCardblockBinding.inflate(layoutInflater, viewGroup, false);
        layoutInflater = this.binding.getRoot();
        this.authorization = getInjector().getAuthorization();
        this.accountApi = getInjector().getAccountApi();
        this.binding.widgetCardBlock.setOnBlockRequestListener(this);
        this.widgetCardUnblock = this.binding.widgetCardUnblock;
        this.widgetCardBlock = this.binding.widgetCardBlock;
        ((Button) layoutInflater.findViewById(C0859R.id.widget_card_unblock_offset_layout)).setOnClickListener(new C15231());
        this.widgetCardUnblock.setOnUnblockRequestListener(this);
        this.isBlock = getActivity().getIntent().getBooleanExtra(CardBlockActivity.IS_BLOCK, false);
        viewGroup = getArguments();
        if (viewGroup != null) {
            this.token = viewGroup.getString("TOKEN");
            viewGroup = viewGroup.getString(BLOCK_REASON);
            if (viewGroup != null) {
                this.reason = BlockReason.fromString(viewGroup);
                viewGroup = this.widgetCardUnblock;
                if (this.reason != null && this.reason == BlockReason.BAD_DOCS) {
                    bundle = true;
                }
                viewGroup.setIsPassportNeed(bundle);
            }
        }
        return layoutInflater;
    }

    public void onResume() {
        super.onResume();
        if (!(this.userModelSubscription == null || this.userModelSubscription.isUnsubscribed())) {
            this.userModelSubscription.unsubscribe();
        }
        this.userModelSubscription = this.authorization.getUser().subscribe(new C19972());
    }

    public void onPause() {
        unsubscribe(this.userModelSubscription);
        unsubscribe(this.blockSubscription);
        super.onPause();
    }

    private AccountModel getAccount() {
        return this.token == null ? this.userModel.getCurrentAccountOrLocked() : this.userModel.getAccount(this.token);
    }

    private void setCardBlocked() {
        this.widgetCardUnblock.setAlpha(1.0f);
        this.widgetCardUnblock.setVisibility(0);
        this.widgetCardBlock.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.widgetCardBlock.setVisibility(8);
    }

    private void setCardUnblocked() {
        this.widgetCardBlock.setAlpha(1.0f);
        this.widgetCardBlock.setVisibility(0);
        this.widgetCardUnblock.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.widgetCardUnblock.setVisibility(8);
    }

    public void onBlockRequest() {
        AccountModel account = getAccount();
        if (account != null) {
            showProgressExecution();
            this.blockSubscription = this.accountApi.blockCard(account.getToken(), "").observeOn(AndroidSchedulers.mainThread()).subscribe(new C17463());
        }
    }

    private void moveToUnblockScreen() {
        this.widgetCardUnblock.setVisibility(0);
        this.widgetCardUnblock.setAlpha(BitmapDescriptorFactory.HUE_RED);
        Animator ofFloat = ObjectAnimator.ofFloat(this.widgetCardUnblock, View.ALPHA, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f});
        Animator ofFloat2 = ObjectAnimator.ofFloat(this.widgetCardBlock, View.ALPHA, new float[]{1.0f, BitmapDescriptorFactory.HUE_RED});
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.addListener(new C15264());
        animatorSet.start();
    }

    private void moveToBlockScreen() {
        this.widgetCardBlock.setVisibility(0);
        this.widgetCardBlock.setAlpha(BitmapDescriptorFactory.HUE_RED);
        Animator ofFloat = ObjectAnimator.ofFloat(this.widgetCardBlock, View.ALPHA, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f});
        Animator ofFloat2 = ObjectAnimator.ofFloat(this.widgetCardUnblock, View.ALPHA, new float[]{1.0f, BitmapDescriptorFactory.HUE_RED});
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.addListener(new C15285());
        animatorSet.start();
    }

    public void onUnblockRequest() {
        NewPassportActivity.startForResult(getActivity(), null, CardBlockActivity.PASSPORT_PHOTOS);
    }

    private void error() {
        error("Не удалось, попробуйте ещё раз");
    }

    private void error(String str) {
        Toast.makeText(getActivity(), str, 0).show();
    }

    private void hideProgress() {
        if (this.progressDialog != null) {
            this.progressDialog.dismiss();
            this.progressDialog = null;
        }
    }

    private void showProgressExecution() {
        this.progressDialog = new ProgressDialog(getActivity());
        this.progressDialog.setMessage(getResources().getString(C0859R.string.action_doing));
        this.progressDialog.setCancelable(false);
        this.progressDialog.setOnDismissListener(new C15296());
        this.progressDialog.show();
    }
}
