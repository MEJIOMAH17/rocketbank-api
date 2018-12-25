package ru.rocketbank.core.user;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.exceptions.NoAccountException;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.BankAccountManager;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.core.model.SafeAccount;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.model.UserResponse;
import ru.rocketbank.core.realm.UserData;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;
import rx.subjects.PublishSubject;
import rx.subjects.SerializedSubject;
import rx.subjects.Subject;

/* compiled from: Authorization.kt */
public final class Authorization {
    public static final Companion Companion = new Companion();
    private static final String TAG = "Auth";
    private final AnalyticsManager analyticsManager;
    private final AuthorizationStorage authorizationStorage;
    private final BankAccountManager bankAccountManager;
    private final Context context;
    private final DataManager dataManager;
    private String pusherToken;
    private final UserApi userApi;
    private volatile UserModel userImmediate;
    private final Observable<UserModel> userModelObservable;
    private final Subject<UserModel, UserModel> userModelSubject = ((Subject) new SerializedSubject(PublishSubject.create()));

    /* compiled from: Authorization.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public Authorization(Context context, UserApi userApi, AuthorizationStorage authorizationStorage, DataManager dataManager, AnalyticsManager analyticsManager, BankAccountManager bankAccountManager) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(userApi, "userApi");
        Intrinsics.checkParameterIsNotNull(authorizationStorage, "authorizationStorage");
        Intrinsics.checkParameterIsNotNull(dataManager, "dataManager");
        Intrinsics.checkParameterIsNotNull(analyticsManager, "analyticsManager");
        Intrinsics.checkParameterIsNotNull(bankAccountManager, "bankAccountManager");
        this.context = context;
        this.userApi = userApi;
        this.authorizationStorage = authorizationStorage;
        this.dataManager = dataManager;
        this.analyticsManager = analyticsManager;
        this.bankAccountManager = bankAccountManager;
        context = this.userModelSubject.asObservable().publish().refCount();
        Intrinsics.checkExpressionValueIsNotNull(context, "userModelSubject.asObser…le().publish().refCount()");
        this.userModelObservable = context;
    }

    public final void setPusherToken(String str) {
        this.pusherToken = str;
    }

    public final String getPusherToken() {
        if (this.userImmediate == null) {
            return this.pusherToken;
        }
        UserModel userModel = this.userImmediate;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        return userModel.getPusherToken();
    }

    public final UserModel getUserImmediate() {
        return this.userImmediate;
    }

    public final UserData getUserData() {
        return this.authorizationStorage.getState();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final rx.Observable<ru.rocketbank.core.model.UserModel> getUser() {
        /*
        r2 = this;
        r0 = r2.userImmediate;
        if (r0 == 0) goto L_0x0010;
    L_0x0004:
        r0 = rx.Observable.just(r0);
        r1 = r2.userModelObservable;
        r0 = rx.Observable.merge(r0, r1);
        if (r0 != 0) goto L_0x0012;
    L_0x0010:
        r0 = r2.userModelObservable;
    L_0x0012:
        r1 = rx.android.schedulers.AndroidSchedulers.mainThread();
        r0 = r0.observeOn(r1);
        r1 = "observable.observeOn(And…dSchedulers.mainThread())";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.user.Authorization.getUser():rx.Observable<ru.rocketbank.core.model.UserModel>");
    }

    public final Observable<Account> getAccount(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        str = getUser().map(new Authorization$getAccount$1(this, str)).subscribeOn(AndroidSchedulers.mainThread()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(str, "user.map { userModel ->\n…dSchedulers.mainThread())");
        return str;
    }

    public final Account getAccountImmediate(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        return this.bankAccountManager.getAccountImmediate(str);
    }

    public final Account getAccountImmediate(UserModel userModel, String str) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        Intrinsics.checkParameterIsNotNull(str, "token");
        return this.bankAccountManager.getAccountImmediate(str);
    }

    public final Observable<List<Account>> getAccounts() {
        Observable<List<Account>> observeOn = getUser().map(new Authorization$accounts$1(this)).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "user.map { getAccountsIm…dSchedulers.mainThread())");
        return observeOn;
    }

    public static List<Account> getAccountsImmediate(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        ArrayList arrayList = new ArrayList(userModel.getAccounts().size() + userModel.getSafeAccounts().size());
        ArrayList accounts = userModel.getAccounts();
        Intrinsics.checkExpressionValueIsNotNull(accounts, "accountModels");
        int size = accounts.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            AccountModel accountModel = (AccountModel) accounts.get(i2);
            Intrinsics.checkExpressionValueIsNotNull(accountModel, "accountModel");
            arrayList.add(new Account(accountModel));
        }
        userModel = userModel.getSafeAccounts();
        Intrinsics.checkExpressionValueIsNotNull(userModel, "safeAccounts");
        int size2 = ((Collection) userModel).size();
        while (i < size2) {
            SafeAccount safeAccount = (SafeAccount) userModel.get(i);
            Intrinsics.checkExpressionValueIsNotNull(safeAccount, "safeAccount");
            arrayList.add(new Account(safeAccount));
            i++;
        }
        return arrayList;
    }

    public final void refreshBackgroundProfile() {
        refreshProfile().subscribeOn(Schedulers.io()).subscribe(new Authorization$refreshBackgroundProfile$1());
    }

    public final Observable<UserResponse> refreshProfile() {
        Observable<UserResponse> doOnNext = this.userApi.getProfile().observeOn(AndroidSchedulers.mainThread()).doOnNext(new Authorization$refreshProfile$1(this));
        Intrinsics.checkExpressionValueIsNotNull(doOnNext, "userApi.profile.observeO…      }\n                }");
        return doOnNext;
    }

    public final void reloadProfile() {
        if (this.userImmediate != null) {
            this.userModelSubject.onNext(this.userImmediate);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setUserModel(ru.rocketbank.core.model.UserModel r7) {
        /*
        r6 = this;
        if (r7 != 0) goto L_0x0003;
    L_0x0002:
        return;
    L_0x0003:
        r6.userImmediate = r7;
        r0 = r6.bankAccountManager;
        r1 = r7.getAccounts();
        r2 = "userModel.accounts";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r1 = (java.util.List) r1;
        r2 = r7.getSafeAccounts();
        r3 = "userModel.safeAccounts";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);
        r2 = (java.util.List) r2;
        r0.updateAccounts(r1, r2);
        r0 = r7.getId();
        ru.rocketbank.core.manager.AnalyticsManager.setUserId(r0);
        r0 = r6.dataManager;
        r1 = r7.getProvidersHash();
        r0.update(r1);
        r0 = r6.bankAccountManager;
        r0 = r0.getMainImmediate();
        r1 = 0;
        if (r0 == 0) goto L_0x003e;
    L_0x0039:
        r2 = r0.getAccountModel();
        goto L_0x003f;
    L_0x003e:
        r2 = r1;
    L_0x003f:
        r3 = r6.authorizationStorage;
        r3 = r3.getState();
        r4 = r7.widgetToken;
        r3.realmSet$widgetToken(r4);
        r3 = r6.authorizationStorage;
        r3 = r3.getState();
        r4 = r7.getLoginToken();
        r3.realmSet$login(r4);
        r3 = r6.authorizationStorage;
        r3 = r3.getState();
        r4 = r7.getUserpicUrl();
        r3.realmSet$avatar(r4);
        r3 = r6.authorizationStorage;
        r3 = r3.getState();
        r4 = r7.getCover();
        r4 = r4.getUrl();
        r3.realmSet$cover(r4);
        r3 = r6.authorizationStorage;
        r3 = r3.getState();
        if (r0 == 0) goto L_0x0082;
    L_0x007d:
        r4 = r0.getBalance();
        goto L_0x0084;
    L_0x0082:
        r4 = 0;
    L_0x0084:
        r0 = java.lang.Double.valueOf(r4);
        r3.realmSet$balance(r0);
        r0 = r6.authorizationStorage;
        r0 = r0.getState();
        r3 = r7.getFirstName();
        r0.realmSet$firstName(r3);
        r0 = r6.authorizationStorage;
        r0 = r0.getState();
        r3 = r7.getLastName();
        r0.realmSet$lastName(r3);
        r0 = r6.authorizationStorage;
        r0 = r0.getState();
        if (r2 == 0) goto L_0x00b7;
    L_0x00ad:
        r2 = r2.getCurrentTariff();
        if (r2 == 0) goto L_0x00b7;
    L_0x00b3:
        r1 = r2.getCobrandName();
    L_0x00b7:
        r0.realmSet$cobrandName(r1);
        r0 = r6.authorizationStorage;
        r0 = r0.getState();
        r1 = r7.getGender();
        r0.realmSet$geneder(r1);
        r0 = r6.authorizationStorage;
        r1 = r6.authorizationStorage;
        r1 = r1.getState();
        r0.storeState(r1);
        r0 = r7.getSound();
        r1 = 0;
        if (r0 == 0) goto L_0x0113;
    L_0x00d9:
        r2 = r0.hashCode();
        switch(r2) {
            case -743932906: goto L_0x0109;
            case 110304: goto L_0x00ff;
            case 3177733: goto L_0x00f5;
            case 99639597: goto L_0x00eb;
            case 570202871: goto L_0x00e1;
            default: goto L_0x00e0;
        };
    L_0x00e0:
        goto L_0x0113;
    L_0x00e1:
        r2 = "lejeboker";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0113;
    L_0x00e9:
        r0 = 4;
        goto L_0x0112;
    L_0x00eb:
        r2 = "human";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0113;
    L_0x00f3:
        r0 = 2;
        goto L_0x0112;
    L_0x00f5:
        r2 = "gnom";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0113;
    L_0x00fd:
        r0 = 3;
        goto L_0x0112;
    L_0x00ff:
        r2 = "orc";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0113;
    L_0x0107:
        r0 = 1;
        goto L_0x0112;
    L_0x0109:
        r2 = "rickmorty";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0113;
    L_0x0111:
        r0 = 5;
    L_0x0112:
        r1 = r0;
    L_0x0113:
        r0 = java.lang.Integer.valueOf(r1);
        r0 = rx.Observable.just(r0);
        r1 = ru.rocketbank.core.user.Authorization$setUserModel$1.INSTANCE;
        r1 = (rx.functions.Func1) r1;
        r0 = r0.map(r1);
        r1 = rx.schedulers.Schedulers.io();
        r0 = r0.subscribeOn(r1);
        r0.subscribe();
        r0 = r6.userModelSubject;
        r0.onNext(r7);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.user.Authorization.setUserModel(ru.rocketbank.core.model.UserModel):void");
    }

    public static List<Account> getActiveAccountsImmediate(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        ArrayList arrayList = new ArrayList(userModel.getAccounts().size() + userModel.getSafeAccounts().size());
        ArrayList accounts = userModel.getAccounts();
        Intrinsics.checkExpressionValueIsNotNull(accounts, "accountModels");
        int size = accounts.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            AccountModel accountModel = (AccountModel) accounts.get(i2);
            if (!accountModel.isBlocked()) {
                Intrinsics.checkExpressionValueIsNotNull(accountModel, "accountModel");
                arrayList.add(new Account(accountModel));
            }
        }
        userModel = userModel.getSafeAccounts();
        Intrinsics.checkExpressionValueIsNotNull(userModel, "safeAccounts");
        int size2 = ((Collection) userModel).size();
        while (i < size2) {
            SafeAccount safeAccount = (SafeAccount) userModel.get(i);
            Intrinsics.checkExpressionValueIsNotNull(safeAccount, "safeAccount");
            arrayList.add(new Account(safeAccount));
            i++;
        }
        return arrayList;
    }

    public final Object getProductImmediate(String str) {
        if (str == null) {
            return null;
        }
        UserModel userModel = this.userImmediate;
        if (userModel == null) {
            return null;
        }
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        Intrinsics.checkParameterIsNotNull(str, "token");
        Object accountImmediate = this.bankAccountManager.getAccountImmediate(str);
        if (accountImmediate == null) {
            List deposits = userModel.getDeposits();
            Intrinsics.checkExpressionValueIsNotNull(deposits, "userModel.deposits");
            for (Object accountImmediate2 : deposits) {
                if (Intrinsics.areEqual(String.valueOf(((DepositModel) accountImmediate2).getId()), str)) {
                    break;
                }
            }
            accountImmediate2 = null;
        }
        if (accountImmediate2 != null) {
            return accountImmediate2;
        }
        throw new NoAccountException(str);
    }

    public final boolean isAuthorized() {
        return this.authorizationStorage.getState().realmGet$token() != null && Intrinsics.areEqual(RegistrationStatus.UserFeed, this.authorizationStorage.getState().realmGet$status());
    }

    public final String getToken() {
        return this.authorizationStorage.getState().realmGet$token();
    }

    public final void setToken(String str) {
        this.authorizationStorage.getState().realmSet$token(str);
        this.authorizationStorage.storeState(this.authorizationStorage.getState());
    }

    public final void resetToken() {
        this.authorizationStorage.getState().realmSet$token(null);
        this.authorizationStorage.storeState(this.authorizationStorage.getState());
    }

    public final String getStatus() {
        return this.authorizationStorage.getState().realmGet$status();
    }

    public final void setStatus(String str) {
        this.authorizationStorage.getState().realmSet$status(str);
        this.authorizationStorage.storeState(this.authorizationStorage.getState());
    }

    public final String getLogin() {
        return this.authorizationStorage.getState().realmGet$login();
    }

    public final void setLogin(String str) {
        this.authorizationStorage.getState().realmSet$login(str);
        this.authorizationStorage.storeState(this.authorizationStorage.getState());
    }
}
