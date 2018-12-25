package ru.rocketbank.r2d2.fragments.card;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Toast;
import ru.rocketbank.core.model.AccountsCurrency;
import ru.rocketbank.core.model.AvailableCardModel;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

public class NewCardInnerFragment extends RocketFragment implements OnClickListener {
    private static final String AV_CARD_MODEL = "AV_CARD_MODEL";
    Authorization authorization;
    private AvailableCardModel availableCardModel;
    RocketTextView descriptionView;
    RocketTextView detailsView;
    RocketEditText nameView;
    private Subscription openCardSubscription;
    RocketTextView openView;
    PlasticsApi plasticsApi;
    private ProgressDialog progressDialog;

    /* renamed from: ru.rocketbank.r2d2.fragments.card.NewCardInnerFragment$2 */
    class C15222 implements OnDismissListener {
        C15222() {
        }

        public void onDismiss(DialogInterface dialogInterface) {
            NewCardInnerFragment.this.progressDialog = null;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.card.NewCardInnerFragment$1 */
    class C17451 extends Subscriber<AccountsCurrency> {
        public void onCompleted() {
        }

        C17451() {
        }

        public void onError(Throwable th) {
            NewCardInnerFragment.this.hideProgress();
            NewCardInnerFragment.this.error();
        }

        public void onNext(AccountsCurrency accountsCurrency) {
            if (accountsCurrency.getResponse() == null) {
                Toast.makeText(NewCardInnerFragment.this.getActivity(), "Заявка подана", 0).show();
                NewCardInnerFragment.this.authorization.refreshBackgroundProfile();
                NewCardInnerFragment.this.hideProgress();
                return;
            }
            NewCardInnerFragment.this.hideProgress();
            NewCardInnerFragment.this.error(accountsCurrency.getResponse().getDescription());
        }
    }

    public static NewCardInnerFragment newInstance(AvailableCardModel availableCardModel) {
        NewCardInnerFragment newCardInnerFragment = new NewCardInnerFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(AV_CARD_MODEL, availableCardModel);
        newCardInnerFragment.setArguments(bundle);
        return newCardInnerFragment;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_open_card_inner, viewGroup, false);
        this.nameView = (RocketEditText) layoutInflater.findViewById(C0859R.id.name);
        this.descriptionView = (RocketTextView) layoutInflater.findViewById(C0859R.id.description);
        this.openView = (RocketTextView) layoutInflater.findViewById(C0859R.id.open);
        this.detailsView = (RocketTextView) layoutInflater.findViewById(C0859R.id.details);
        return layoutInflater;
    }

    public void onPause() {
        hideProgress();
        if (!(this.openCardSubscription == null || this.openCardSubscription.isUnsubscribed())) {
            this.openCardSubscription.unsubscribe();
        }
        super.onPause();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.plasticsApi = getInjector().getPlasticApi();
        this.authorization = getInjector().getAuthorization();
        this.availableCardModel = (AvailableCardModel) getArguments().getParcelable(AV_CARD_MODEL);
        if (Currency.DOLLAR.equals(this.availableCardModel.getCurrency()) != null) {
            this.nameView.setText(C0859R.string.card_usd);
        } else if (Currency.EURO.equals(this.availableCardModel.getCurrency()) != null) {
            this.nameView.setText(C0859R.string.card_euro);
        } else if (Currency.ROUBLE.equals(this.availableCardModel.getCurrency()) != null) {
            this.nameView.setText(C0859R.string.card_rub);
        } else {
            this.nameView.setText(C0859R.string.card);
        }
        this.openView.setOnClickListener(this);
        this.descriptionView.setText(this.availableCardModel.getDescription());
        this.detailsView.setOnClickListener(this);
    }

    public void onClick(View view) {
        view = view.getId();
        if (view == C0859R.id.details) {
            openDetails();
        } else if (view == C0859R.id.open) {
            openCard();
        }
    }

    private void openDetails() {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.availableCardModel.getUrl()));
        if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
            startActivity(intent);
        }
    }

    private void openCard() {
        showProgressExecution();
        this.openCardSubscription = this.plasticsApi.openCard(this.availableCardModel.getCurrency().toString().toLowerCase(), "").observeOn(AndroidSchedulers.mainThread()).subscribe(new C17451());
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
        this.progressDialog.setOnDismissListener(new C15222());
        this.progressDialog.show();
    }
}
