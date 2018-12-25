package ru.rocketbank.r2d2.fragments.deposit;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.SupportAnimator.SimpleAnimatorListener;
import io.codetail.animation.ViewAnimationUtils;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.core.model.response.DepositResponse;
import ru.rocketbank.core.network.api.DepositApi;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.core.widgets.RocketLoader.OnEndAnimationListener;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Observable;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;

public class CloseDepositFragment extends RocketFragment implements OnClickListener, OnEndAnimationListener {
    private static final String DEPOSIT = "DEPOSIT";
    private static final String TAG = "CloseDeposit";
    View backgroundView;
    private boolean canBeClosed = false;
    RocketTextView closeView;
    private DepositModel deposit;
    DepositApi depositApi;
    CardView finishView;
    private boolean isError;
    RocketTextView readyView;
    RocketLoader rocketLoader;
    RocketTextView statusView;
    private int toolbarHeight;

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.CloseDepositFragment$2 */
    class C17482 extends Subscriber<DepositResponse> {
        public void onCompleted() {
        }

        C17482() {
        }

        public void onError(Throwable th) {
            CloseDepositFragment.this.isError = true;
            Log.e(CloseDepositFragment.TAG, "close deposit failed: ", th);
            if (th instanceof RocketResponseException) {
                RocketResponseException rocketResponseException = (RocketResponseException) th;
                if (rocketResponseException.getGenericRequestResponseData() == null || !rocketResponseException.getResponse().getShowIt()) {
                    CloseDepositFragment.this.statusView.setText(C0859R.string.error_occur);
                } else {
                    CloseDepositFragment.this.statusView.setText(rocketResponseException.getDescription());
                }
            }
            CloseDepositFragment.this.rocketLoader.setError();
            AnalyticsManager.logException(th);
        }

        public void onNext(DepositResponse depositResponse) {
            CloseDepositFragment.this.statusView.setText(C0859R.string.deposit_closed);
            CloseDepositFragment.this.rocketLoader.setSuccess();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_close_deposit, viewGroup, false);
        this.backgroundView = layoutInflater.findViewById(C0859R.id.background);
        this.rocketLoader = (RocketLoader) layoutInflater.findViewById(C0859R.id.loader);
        this.finishView = (CardView) layoutInflater.findViewById(C0859R.id.finishButton);
        this.closeView = (RocketTextView) layoutInflater.findViewById(C0859R.id.close);
        this.readyView = (RocketTextView) layoutInflater.findViewById(C0859R.id.ready);
        this.statusView = (RocketTextView) layoutInflater.findViewById(C0859R.id.status);
        return layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.depositApi = getInjector().getDepositApi();
        this.deposit = (DepositModel) getArguments().getParcelable(DEPOSIT);
        this.toolbarHeight = setupDefaultToolbar(view, C0859R.id.toolbar);
        AppCompatActivity appCompatActivity = (AppCompatActivity) getActivity();
        appCompatActivity.getSupportActionBar().setHomeButtonEnabled(false);
        appCompatActivity.getSupportActionBar().setDefaultDisplayHomeAsUpEnabled(false);
        appCompatActivity.getSupportActionBar().setDisplayHomeAsUpEnabled(false);
        this.rocketLoader.setOnEndAnimation(this);
        this.finishView.setOnClickListener(this);
        this.closeView.setOnClickListener(this);
        closeDeposit();
    }

    public void onPause() {
        this.rocketLoader.setOnEndAnimation(null);
        super.onPause();
    }

    public static CloseDepositFragment newInstance(DepositModel depositModel) {
        CloseDepositFragment closeDepositFragment = new CloseDepositFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(DEPOSIT, depositModel);
        closeDepositFragment.setArguments(bundle);
        return closeDepositFragment;
    }

    public void animationEnd(boolean z) {
        this.isError = z;
        int i = 0;
        this.finishView.setVisibility(0);
        RocketTextView rocketTextView = this.closeView;
        if (!this.isError) {
            i = 8;
        }
        rocketTextView.setVisibility(i);
        this.readyView.setText(this.isError ? C0859R.string.retry_cap : C0859R.string.ready_cap);
        if (z) {
            this.backgroundView.setBackgroundColor(-727322);
        } else {
            this.backgroundView.setBackgroundColor(-1379861);
        }
        enterReveal(this.backgroundView);
    }

    private void enterReveal(View view) {
        int i = this.rocketLoader.getLayoutParams().width;
        int[] iArr = new int[2];
        this.rocketLoader.getLocationInWindow(iArr);
        i /= 2;
        int i2 = iArr[0] + i;
        int i3 = (iArr[1] - this.toolbarHeight) + i;
        float hypot = (float) Math.hypot((double) Math.max(i2, view.getWidth() - i2), (double) Math.max(i3, view.getHeight() - i3));
        view.setVisibility(0);
        view = ViewAnimationUtils.createCircularReveal(view, i2, i3, (float) i, hypot);
        view.setInterpolator(new AccelerateDecelerateInterpolator());
        view.setDuration(150);
        view.start();
    }

    void exitReveal(final View view) {
        int i = this.rocketLoader.getLayoutParams().width;
        int[] iArr = new int[2];
        this.rocketLoader.getLocationInWindow(iArr);
        i /= 2;
        SupportAnimator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, iArr[0] + i, (iArr[1] - this.toolbarHeight) + i, (float) i, BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.addListener(new SimpleAnimatorListener() {
            public void onAnimationEnd() {
                view.setVisibility(4);
            }
        });
        createCircularReveal.start();
    }

    public void onClick(View view) {
        view = view.getId();
        if (view != C0859R.id.close) {
            if (view == C0859R.id.finishButton) {
                if (this.isError != null) {
                    onRetry();
                    return;
                }
                onReady();
            }
            return;
        }
        closeFragment();
    }

    private void onRetry() {
        this.finishView.setVisibility(8);
        this.closeView.setVisibility(8);
        exitReveal(this.backgroundView);
        this.rocketLoader.resetAnimation();
        closeDeposit();
    }

    private Observable<DepositResponse> createCloseDepositObservable() {
        return this.depositApi.close(this.deposit.getRocketDeposit().getPermalink(), this.deposit.getId(), "").observeOn(AndroidSchedulers.mainThread());
    }

    private void closeDeposit() {
        createCloseDepositObservable().subscribe(new C17482());
    }

    private void onReady() {
        this.canBeClosed = true;
        ((MainActivity) getActivity()).showFeed();
    }

    private void closeFragment() {
        this.canBeClosed = true;
        ((MainActivity) getActivity()).onBackPressed();
    }

    public boolean isCanPopBack() {
        return this.canBeClosed;
    }
}
