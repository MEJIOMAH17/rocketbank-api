package ru.rocketbank.r2d2.fragments.migration.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ru.rocketbank.core.events.EventHelper;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.MigrationResponse;
import ru.rocketbank.core.model.migration.MigrationURLs;
import ru.rocketbank.core.network.api.MigrationApi;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MigrationActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

public abstract class MigrationFragment extends RocketFragment {
    Authorization authorization;
    private Migration migration;
    MigrationApi migrationApi;
    private MigrationURLs migrationURLs;
    UserApi userApi;

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.MigrationFragment$1 */
    class C19991 implements Action1<MigrationResponse> {
        C19991() {
        }

        public void call(MigrationResponse migrationResponse) {
            MigrationFragment.this.onRequestCompleted(migrationResponse);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.MigrationFragment$2 */
    class C20002 implements Action1<Throwable> {
        C20002() {
        }

        public void call(Throwable th) {
            MigrationFragment.this.onError(th);
        }
    }

    public String getTitle() {
        return null;
    }

    public abstract View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle);

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.authorization = getInjector().getAuthorization();
        this.userApi = getInjector().getUserApi();
        this.migrationApi = getInjector().getMigrationApi();
        this.migration = (Migration) getArguments().getParcelable(MigrationActivity.KEY_MIGRATION);
        this.migrationURLs = (MigrationURLs) getArguments().getParcelable(MigrationActivity.KEY_MIGRATION_URLS);
    }

    protected final MigrationApi getMigrationApi() {
        return this.migrationApi;
    }

    public UserApi getUserApi() {
        return this.userApi;
    }

    protected void execute(Observable<MigrationResponse> observable) {
        showSpinner();
        observable.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C19991(), new C20002());
    }

    protected void onRequestCompleted(MigrationResponse migrationResponse) {
        hideSpinner();
        if (migrationResponse.getMigration() == null) {
            showSnack((int) C0859R.string.data_not_received);
            return;
        }
        migrationResponse = migrationResponse.getMigration();
        finishStep(migrationResponse);
        updateMigration(migrationResponse);
    }

    protected void updateMigration(Migration migration) {
        UserModel userImmediate = this.authorization.getUserImmediate();
        if (userImmediate != null) {
            userImmediate.setMigration(migration);
        }
    }

    protected void onError(Throwable th) {
        hideSpinner();
        if (th instanceof RocketResponseException) {
            RocketResponseException rocketResponseException = (RocketResponseException) th;
            if (rocketResponseException.isNetworkError()) {
                showSnack((int) C0859R.string.error_occur);
                return;
            }
            th = rocketResponseException.getGenericRequestResponseData();
            if (!(th == null || th.getResponse() == null || !th.getResponse().getShowIt())) {
                showSnack(th.getResponse().getDescription());
                return;
            }
        }
        showSnack((int) C0859R.string.error_occur);
    }

    protected void showSnack(String str) {
        UIHelper.showSnack(getView(), str);
    }

    protected void showSnack(int i) {
        UIHelper.showSnack(getView(), i);
    }

    protected Migration getMigration() {
        return this.migration;
    }

    public MigrationURLs getMigrationURLs() {
        return this.migrationURLs;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    protected final void finishStep(Migration migration) {
        EventHelper eventHelper = EventHelper.INSTANCE;
        EventHelper.send(migration);
    }
}
