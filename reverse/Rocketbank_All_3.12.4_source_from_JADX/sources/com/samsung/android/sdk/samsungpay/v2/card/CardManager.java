package com.samsung.android.sdk.samsungpay.v2.card;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.sdk.samsungpay.v2.PartnerInfo;
import com.samsung.android.sdk.samsungpay.v2.PartnerRequest;
import com.samsung.android.sdk.samsungpay.v2.RequestTracker;
import com.samsung.android.sdk.samsungpay.v2.ServiceHelper.BindingResult;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk.SdkApiLevel;
import com.samsung.android.sdk.samsungpay.v2.StatusListener;
import com.samsung.android.sdk.samsungpay.v2.StubConnector;
import com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener.Stub;
import java.util.List;

public final class CardManager extends SpaySdk {
    private CardManagerStub cardManagerStub;
    private Binder mBinderToSdk;
    private Card mCard;
    private List<Card> mCards;
    protected Handler mHanderForInternalListener = new Handler(Looper.getMainLooper()) {
        public final void handleMessage(Message message) {
            Object obj;
            int i;
            switch (message.what) {
                case 0:
                    if (message.obj instanceof GetCardListener) {
                        ((GetCardListener) message.obj).onSuccess(CardManager.this.mCards);
                        return;
                    } else if (message.obj instanceof StatusListener) {
                        ((StatusListener) message.obj).onSuccess(message.arg1, message.getData());
                        return;
                    } else if (message.obj instanceof AddCardListener) {
                        ((AddCardListener) message.obj).onSuccess(message.arg1, CardManager.this.mCard);
                        return;
                    } else if (message.obj instanceof CardListener) {
                        obj = message.obj;
                        i = message.arg1;
                        message.getData();
                        return;
                    } else {
                        Log.e("SPAYSDK:CardManager", "[onSuccess] Wrong listener was called");
                        return;
                    }
                case 1:
                    if (message.obj instanceof GetCardListener) {
                        ((GetCardListener) message.obj).onFail(message.arg1, message.getData());
                        return;
                    } else if (message.obj instanceof StatusListener) {
                        ((StatusListener) message.obj).onFail(message.arg1, message.getData());
                        return;
                    } else if (message.obj instanceof AddCardListener) {
                        ((AddCardListener) message.obj).onFail(message.arg1, message.getData());
                        return;
                    } else if (message.obj instanceof CardListener) {
                        obj = message.obj;
                        i = message.arg1;
                        message.getData();
                        return;
                    } else {
                        Log.e("SPAYSDK:CardManager", "[onFail] Wrong listener was called");
                        return;
                    }
                case 2:
                    if (message.obj instanceof AddCardListener) {
                        obj = message.obj;
                        i = message.arg1;
                        i = message.arg2;
                        message.getData();
                        return;
                    }
                    Log.e("SPAYSDK:CardManager", "[onProgress] Wrong listener was called");
                    return;
                default:
                    Log.e("SPAYSDK:CardManager", "sdk can not catch listener from SPay.");
                    return;
            }
        }
    };
    private final Handler mHandlerForSessionCallback = new Handler(Looper.getMainLooper()) {
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 3) {
                UpdateServiceSessionCallback updateServiceSessionCallback;
                int i2;
                switch (i) {
                    case 0:
                        updateServiceSessionCallback = (UpdateServiceSessionCallback) message.obj;
                        i2 = message.arg1;
                        message.getData();
                        RequestTracker.getInstance().removeFromRequestTracker(updateServiceSessionCallback.pReq);
                        CardManager.access$2500(CardManager.this);
                        return;
                    case 1:
                        updateServiceSessionCallback = (UpdateServiceSessionCallback) message.obj;
                        i2 = message.arg1;
                        message.getData();
                        RequestTracker.getInstance().removeFromRequestTracker(updateServiceSessionCallback.pReq);
                        CardManager.access$2500(CardManager.this);
                        break;
                    default:
                        break;
                }
                return;
            }
            CardManager.access$2400(CardManager.this, (UpdateServiceSessionCallback) message.obj, message.arg1);
        }
    };

    class AddCardInfoListenerInternal {
        private PartnerRequest pReq;
        private RequestTracker requestTracker;
        private SpayAddCardListener spayAddCardListener;

        class SpayAddCardListener extends Stub {
            private SpayAddCardListener() {
            }

            public final void onSuccess(int i, Card card) throws RemoteException {
                Log.d("AddCardInfoInternal", "onSuccess: status: ".concat(String.valueOf(i)));
                if (AddCardInfoListenerInternal.this.requestTracker != null) {
                    Log.d("AddCardInfoInternal", "calling to clean up from mRequestTracker");
                    AddCardInfoListenerInternal.this.requestTracker.removeFromRequestTracker(AddCardInfoListenerInternal.this.pReq);
                }
                if (AddCardInfoListenerInternal.this.pReq != null && AddCardInfoListenerInternal.this.pReq.callbackObj != null) {
                    CardManager.this.mCard = card;
                    CardManager.this.sendMsgForAddCardListener(AddCardInfoListenerInternal.this.pReq.callbackObj, 0, i, 0, null);
                }
            }

            public final void onFail(int i, Bundle bundle) throws RemoteException {
                Log.e("AddCardInfoInternal", "onFail: error: ".concat(String.valueOf(i)));
                if (AddCardInfoListenerInternal.this.requestTracker != null) {
                    Log.d("AddCardInfoInternal", "calling to clean up from mRequestTracker");
                    AddCardInfoListenerInternal.this.requestTracker.removeFromRequestTracker(AddCardInfoListenerInternal.this.pReq);
                }
                if (AddCardInfoListenerInternal.this.pReq != null && AddCardInfoListenerInternal.this.pReq.callbackObj != null) {
                    CardManager.this.sendMsgForAddCardListener(AddCardInfoListenerInternal.this.pReq.callbackObj, 1, i, 0, bundle);
                }
            }

            public final void onProgress(int i, int i2, Bundle bundle) throws RemoteException {
                StringBuilder stringBuilder = new StringBuilder("onNotifyProgress: currentCount: ");
                stringBuilder.append(i);
                stringBuilder.append(", totalCount : ");
                stringBuilder.append(i2);
                Log.e("AddCardInfoInternal", stringBuilder.toString());
                if (AddCardInfoListenerInternal.this.requestTracker != null) {
                    Log.d("AddCardInfoInternal", "calling to clean up from mRequestTracker");
                    AddCardInfoListenerInternal.this.requestTracker.removeFromRequestTracker(AddCardInfoListenerInternal.this.pReq);
                }
                if (AddCardInfoListenerInternal.this.pReq != null && AddCardInfoListenerInternal.this.pReq.callbackObj != null) {
                    CardManager.this.sendMsgForAddCardListener(AddCardInfoListenerInternal.this.pReq.callbackObj, 2, i, i2, bundle);
                }
            }
        }

        private AddCardInfoListenerInternal() {
            this.requestTracker = null;
            this.pReq = null;
            this.spayAddCardListener = new SpayAddCardListener();
        }

        public final void set(RequestTracker requestTracker, PartnerRequest partnerRequest) {
            this.requestTracker = requestTracker;
            this.pReq = partnerRequest;
        }

        public final ISAddCardListener getAddCardListener() {
            return this.spayAddCardListener;
        }
    }

    class GetCardListenerInternal {
        private SpayCardListener mSpayGetCardListener;
        private PartnerRequest pReq;
        private RequestTracker requestTracker;

        class SpayCardListener extends ISGetCardListener.Stub {
            private SpayCardListener() {
            }

            public final void onSuccess(PartnerInfo partnerInfo, List<Card> list) throws RemoteException {
                Log.d("GetCardListenerInternal", "onSuccess: ");
                if (GetCardListenerInternal.this.requestTracker != null) {
                    GetCardListenerInternal.this.requestTracker.removeFromRequestTracker(GetCardListenerInternal.this.pReq);
                }
                if (GetCardListenerInternal.this.pReq != null && GetCardListenerInternal.this.pReq.callbackObj != null) {
                    CardManager.this.mCards = list;
                    CardManager.this.sendMsgForGetCardListener(GetCardListenerInternal.this.pReq.callbackObj, 0, 0, null);
                }
            }

            public final void onFail(PartnerInfo partnerInfo, int i, Bundle bundle) throws RemoteException {
                Log.d("GetCardListenerInternal", "onFail: ".concat(String.valueOf(i)));
                if (GetCardListenerInternal.this.requestTracker != null) {
                    GetCardListenerInternal.this.requestTracker.removeFromRequestTracker(GetCardListenerInternal.this.pReq);
                }
                if (GetCardListenerInternal.this.pReq != null && GetCardListenerInternal.this.pReq.callbackObj != null) {
                    CardManager.this.sendMsgForGetCardListener(GetCardListenerInternal.this.pReq.callbackObj, 1, i, bundle);
                }
            }
        }

        private GetCardListenerInternal() {
            this.requestTracker = null;
            this.mSpayGetCardListener = new SpayCardListener();
            this.pReq = null;
        }

        public final void set(RequestTracker requestTracker, PartnerRequest partnerRequest) {
            this.requestTracker = requestTracker;
            this.pReq = partnerRequest;
        }

        protected final ISGetCardListener getCardListener() {
            if (this.mSpayGetCardListener == null) {
                this.mSpayGetCardListener = new SpayCardListener();
            }
            return this.mSpayGetCardListener;
        }
    }

    class UpdateServiceSessionCallback {
        private CardListener cardListener = null;
        private ComponentName compName = null;
        private InitiateSessionCallback initiateCallback = new InitiateSessionCallback();
        private PartnerRequest pReq = null;
        private UpdateServiceSessionCallback sessionCallback = null;

        class InitiateSessionCallback extends ISInitiateSessionCallback.Stub {
            private InitiateSessionCallback() {
            }

            public final void onSessionCompleted(Bundle bundle) throws RemoteException {
                Log.d("SPAYSDK:CardManager", "onInitiateCompleted: ");
                UpdateServiceSessionCallback.this.compName = new ComponentName(bundle.getString("packageName"), bundle.getString("className"));
                bundle = bundle.getInt("callerUid");
                Message message = new Message();
                message.what = 3;
                message.obj = UpdateServiceSessionCallback.this.sessionCallback;
                message.arg1 = bundle;
                CardManager.this.mHandlerForSessionCallback.sendMessage(message);
            }

            public final void onSessionFailed(int i, Bundle bundle) throws RemoteException {
                Log.e("SPAYSDK:CardManager", "onSessionFailed: errCode ".concat(String.valueOf(i)));
                Message message = new Message();
                message.what = 1;
                Bundle bundle2 = new Bundle(bundle);
                message.obj = UpdateServiceSessionCallback.this.sessionCallback;
                message.arg1 = i;
                message.setData(bundle2);
                CardManager.this.mHandlerForSessionCallback.sendMessage(message);
            }

            public final void onAuthenticationApproved(int i, Bundle bundle) throws RemoteException {
                Log.e("SPAYSDK:CardManager", "onAuthenticationApproved: errorData ".concat(String.valueOf(bundle)));
                Message message = new Message();
                message.what = 0;
                Bundle bundle2 = new Bundle(bundle);
                message.obj = UpdateServiceSessionCallback.this.sessionCallback;
                message.arg1 = i;
                message.setData(bundle2);
                CardManager.this.mHandlerForSessionCallback.sendMessage(message);
            }
        }

        public UpdateServiceSessionCallback(PartnerRequest partnerRequest) {
            this.pReq = partnerRequest;
            this.cardListener = (CardListener) partnerRequest.callbackObj;
            this.sessionCallback = this;
        }

        public final InitiateSessionCallback getInitiateSessionCallback() {
            return this.initiateCallback;
        }
    }

    public CardManager(Context context, PartnerInfo partnerInfo) throws NullPointerException {
        super(context, partnerInfo);
        Log.d("SPAYSDK:CardManager", "CardManager()");
        StringBuilder stringBuilder = new StringBuilder("Partner SDK version : ");
        stringBuilder.append(String.format("%d.%d.%02d", new Object[]{Integer.valueOf(1), Integer.valueOf(8), Integer.valueOf(0)}));
        Log.d("SPAYSDK:CardManager", stringBuilder.toString());
        if (isValidContextAndServiceId(partnerInfo) == null) {
            throw new NullPointerException("Context and PartnerInfo.serviceId have to be set");
        }
        this.mBinderToSdk = new Binder();
        if (getPartnerInfo().getData() == null) {
            getPartnerInfo().setData(new Bundle());
        }
        getPartnerInfo().getData().putString("sdkVersion", String.format("%d.%d.%02d", new Object[]{Integer.valueOf(1), Integer.valueOf(8), Integer.valueOf(0)}));
        getPartnerInfo().getData().putBinder("binder", this.mBinderToSdk);
        this.cardManagerStub = new CardManagerStub(context);
    }

    public final void addCard(AddCardInfo addCardInfo, AddCardListener addCardListener) {
        Log.d("SPAYSDK:CardManager", "addCard() : SDK API Level = 1.2");
        final AddCardListener addCardListener2 = addCardListener;
        final AddCardInfo addCardInfo2 = addCardInfo;
        C12711 c12711 = new StubConnector(this.context, getPartnerInfo(), SdkApiLevel.LEVEL_1_2.getLevel()) {
            public final void run(int i, Bundle bundle) {
                if (i != 2) {
                    Log.w("SPAYSDK:CardManager", "addCard init error ".concat(String.valueOf(i)));
                    addCardListener2.onFail(-103, new Bundle());
                    return;
                }
                i = new AddCardInfoListenerInternal();
                PartnerRequest partnerRequest = new PartnerRequest(2, addCardInfo2, i, addCardListener2);
                i.set(RequestTracker.getInstance(), partnerRequest);
                RequestTracker.getInstance().addToRequestTracker(partnerRequest);
                CardManager.this.cardManagerStub.connectStub(this);
            }

            public final void onReceivedStub(Object obj) {
                CardManager.this.processRequestWithSuccess((ISCardManager) obj);
            }

            public final void onFailed(BindingResult bindingResult) {
                Log.e("SPAYSDK:CardManager", "failed aidl connection:addCards ");
                CardManager.this.processRequestWithFail(bindingResult);
            }
        };
    }

    public final void getAllCards(Bundle bundle, GetCardListener getCardListener) {
        Log.d("SPAYSDK:CardManager", "getAllCards() : SDK API Level = 1.1");
        final GetCardListener getCardListener2 = getCardListener;
        final Bundle bundle2 = bundle;
        C12722 c12722 = new StubConnector(this.context, getPartnerInfo(), SdkApiLevel.LEVEL_1_1.getLevel()) {
            public final void run(int i, Bundle bundle) {
                if (i != 2) {
                    getCardListener2.onFail(i, bundle);
                    Log.w("SPAYSDK:CardManager", "getAllCards init error ".concat(String.valueOf(i)));
                    return;
                }
                i = new GetCardListenerInternal();
                bundle = new PartnerRequest(1, bundle2 == null ? new Bundle() : bundle2, i, getCardListener2);
                i.set(RequestTracker.getInstance(), bundle);
                RequestTracker.getInstance().addToRequestTracker(bundle);
                CardManager.this.cardManagerStub.connectStub(this);
            }

            public final void onReceivedStub(Object obj) {
                CardManager.this.processRequestWithSuccess((ISCardManager) obj);
            }

            public final void onFailed(BindingResult bindingResult) {
                CardManager.this.processRequestWithFail(bindingResult);
            }
        };
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final void processRequestWithSuccess(com.samsung.android.sdk.samsungpay.v2.card.ISCardManager r8) {
        /*
        r7 = this;
        r0 = "SPAYSDK:CardManager";
        r1 = "processRequestWithSuccess";
        android.util.Log.d(r0, r1);
        r0 = com.samsung.android.sdk.samsungpay.v2.RequestTracker.getInstance();
        monitor-enter(r0);
        r1 = r0.isEmpty();	 Catch:{ all -> 0x0157 }
        if (r1 == 0) goto L_0x001b;
    L_0x0012:
        r8 = "SPAYSDK:CardManager";
        r1 = "No pending requests";
        android.util.Log.d(r8, r1);	 Catch:{ all -> 0x0157 }
        monitor-exit(r0);	 Catch:{ all -> 0x0157 }
        return;
    L_0x001b:
        r1 = r0.getRequestList();	 Catch:{ all -> 0x0157 }
        r1 = r1.iterator();	 Catch:{ all -> 0x0157 }
    L_0x0023:
        r2 = r1.hasNext();	 Catch:{ all -> 0x0157 }
        if (r2 == 0) goto L_0x014a;
    L_0x0029:
        r2 = r1.next();	 Catch:{ all -> 0x0157 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.PartnerRequest) r2;	 Catch:{ all -> 0x0157 }
        r3 = "SPAYSDK:CardManager";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0157 }
        r5 = "processPendingRequests size : ";
        r4.<init>(r5);	 Catch:{ all -> 0x0157 }
        r5 = r0.getRequestList();	 Catch:{ all -> 0x0157 }
        r5 = r5.size();	 Catch:{ all -> 0x0157 }
        r4.append(r5);	 Catch:{ all -> 0x0157 }
        r5 = ", partnerRequest : ";
        r4.append(r5);	 Catch:{ all -> 0x0157 }
        r4.append(r2);	 Catch:{ all -> 0x0157 }
        r4 = r4.toString();	 Catch:{ all -> 0x0157 }
        android.util.Log.d(r3, r4);	 Catch:{ all -> 0x0157 }
        r3 = r2.isPartnerRequestProcessing();	 Catch:{ all -> 0x0157 }
        if (r3 != 0) goto L_0x012e;
    L_0x0058:
        r3 = "SPAYSDK:CardManager";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0157 }
        r5 = "Cmd pop : ";
        r4.<init>(r5);	 Catch:{ all -> 0x0157 }
        r5 = r2.operation;	 Catch:{ all -> 0x0157 }
        r4.append(r5);	 Catch:{ all -> 0x0157 }
        r4 = r4.toString();	 Catch:{ all -> 0x0157 }
        android.util.Log.d(r3, r4);	 Catch:{ all -> 0x0157 }
        r3 = com.samsung.android.sdk.samsungpay.v2.PartnerRequest.PartnerRequestState.PROCESSING;	 Catch:{ all -> 0x0157 }
        r2.setPartnerRequestState(r3);	 Catch:{ all -> 0x0157 }
        r3 = r2.operation;	 Catch:{ all -> 0x0157 }
        r4 = -1;
        switch(r3) {
            case 1: goto L_0x0104;
            case 2: goto L_0x00da;
            case 3: goto L_0x00b7;
            case 4: goto L_0x0023;
            case 5: goto L_0x0079;
            default: goto L_0x0078;
        };	 Catch:{ all -> 0x0157 }
    L_0x0078:
        goto L_0x0023;
    L_0x0079:
        r3 = r2.obj1;	 Catch:{ all -> 0x0157 }
        r3 = (com.samsung.android.sdk.samsungpay.v2.card.Card) r3;	 Catch:{ all -> 0x0157 }
        r4 = r7.getPartnerInfo();	 Catch:{ all -> 0x0157 }
        r4 = r4.getData();	 Catch:{ all -> 0x0157 }
        if (r4 != 0) goto L_0x0093;
    L_0x0087:
        r4 = r7.getPartnerInfo();	 Catch:{ all -> 0x0157 }
        r5 = new android.os.Bundle;	 Catch:{ all -> 0x0157 }
        r5.<init>();	 Catch:{ all -> 0x0157 }
        r4.setData(r5);	 Catch:{ all -> 0x0157 }
    L_0x0093:
        r4 = new com.samsung.android.sdk.samsungpay.v2.card.CardManager$UpdateServiceSessionCallback;	 Catch:{ all -> 0x0157 }
        r4.<init>(r2);	 Catch:{ all -> 0x0157 }
        r2 = r7.getPartnerInfo();	 Catch:{ Exception -> 0x00a5 }
        r4 = r4.getInitiateSessionCallback();	 Catch:{ Exception -> 0x00a5 }
        r8.initiateSessionWithCardInfo(r2, r4, r3);	 Catch:{ Exception -> 0x00a5 }
        goto L_0x0023;
    L_0x00a5:
        r2 = move-exception;
        r2.printStackTrace();	 Catch:{ all -> 0x0157 }
        r2 = "SPAYSDK:CardManager";
        r3 = "initiateSession failed";
        android.util.Log.e(r2, r3);	 Catch:{ all -> 0x0157 }
        r2 = new android.os.Bundle;	 Catch:{ all -> 0x0157 }
        r2.<init>();	 Catch:{ all -> 0x0157 }
        goto L_0x0023;
    L_0x00b7:
        r3 = r2.obj2;	 Catch:{ all -> 0x0157 }
        r3 = (com.samsung.android.sdk.samsungpay.v2.card.IdvVerifyInfo) r3;	 Catch:{ all -> 0x0157 }
        r2 = r2.callbackObj;	 Catch:{ all -> 0x0157 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.StatusListener) r2;	 Catch:{ all -> 0x0157 }
        r0.removeFromRequestTracker(r1);	 Catch:{ Exception -> 0x00cc }
        r5 = r7.getPartnerInfo();	 Catch:{ Exception -> 0x00cc }
        r6 = 0;
        r8.verifyCardIdv(r5, r3, r6);	 Catch:{ Exception -> 0x00cc }
        goto L_0x0023;
    L_0x00cc:
        r3 = move-exception;
        r3.printStackTrace();	 Catch:{ all -> 0x0157 }
        r3 = new android.os.Bundle;	 Catch:{ all -> 0x0157 }
        r3.<init>();	 Catch:{ all -> 0x0157 }
        r2.onFail(r4, r3);	 Catch:{ all -> 0x0157 }
        goto L_0x0023;
    L_0x00da:
        r3 = r2.obj2;	 Catch:{ all -> 0x0157 }
        r3 = (com.samsung.android.sdk.samsungpay.v2.card.CardManager.AddCardInfoListenerInternal) r3;	 Catch:{ all -> 0x0157 }
        r5 = r2.obj1;	 Catch:{ all -> 0x0157 }
        r5 = (com.samsung.android.sdk.samsungpay.v2.card.AddCardInfo) r5;	 Catch:{ all -> 0x0157 }
        r2 = r2.callbackObj;	 Catch:{ all -> 0x0157 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.card.AddCardListener) r2;	 Catch:{ all -> 0x0157 }
        r0.removeFromRequestTracker(r1);	 Catch:{ Exception -> 0x00f6 }
        r6 = r7.getPartnerInfo();	 Catch:{ Exception -> 0x00f6 }
        r3 = r3.getAddCardListener();	 Catch:{ Exception -> 0x00f6 }
        r8.addCard(r6, r5, r3);	 Catch:{ Exception -> 0x00f6 }
        goto L_0x0023;
    L_0x00f6:
        r3 = move-exception;
        r3.printStackTrace();	 Catch:{ all -> 0x0157 }
        r3 = new android.os.Bundle;	 Catch:{ all -> 0x0157 }
        r3.<init>();	 Catch:{ all -> 0x0157 }
        r2.onFail(r4, r3);	 Catch:{ all -> 0x0157 }
        goto L_0x0023;
    L_0x0104:
        r3 = r2.obj1;	 Catch:{ all -> 0x0157 }
        r3 = (android.os.Bundle) r3;	 Catch:{ all -> 0x0157 }
        r5 = r2.obj2;	 Catch:{ all -> 0x0157 }
        r5 = (com.samsung.android.sdk.samsungpay.v2.card.CardManager.GetCardListenerInternal) r5;	 Catch:{ all -> 0x0157 }
        r2 = r2.callbackObj;	 Catch:{ all -> 0x0157 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.card.GetCardListener) r2;	 Catch:{ all -> 0x0157 }
        r0.removeFromRequestTracker(r1);	 Catch:{ Exception -> 0x0120 }
        r6 = r7.getPartnerInfo();	 Catch:{ Exception -> 0x0120 }
        r5 = r5.getCardListener();	 Catch:{ Exception -> 0x0120 }
        r8.getAllCards(r6, r3, r5);	 Catch:{ Exception -> 0x0120 }
        goto L_0x0023;
    L_0x0120:
        r3 = move-exception;
        r3.printStackTrace();	 Catch:{ all -> 0x0157 }
        r3 = new android.os.Bundle;	 Catch:{ all -> 0x0157 }
        r3.<init>();	 Catch:{ all -> 0x0157 }
        r2.onFail(r4, r3);	 Catch:{ all -> 0x0157 }
        goto L_0x0023;
    L_0x012e:
        r3 = "SPAYSDK:CardManager";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0157 }
        r5 = "PartnerRequest ";
        r4.<init>(r5);	 Catch:{ all -> 0x0157 }
        r2 = r2.operation;	 Catch:{ all -> 0x0157 }
        r4.append(r2);	 Catch:{ all -> 0x0157 }
        r2 = " is now processing";
        r4.append(r2);	 Catch:{ all -> 0x0157 }
        r2 = r4.toString();	 Catch:{ all -> 0x0157 }
        android.util.Log.d(r3, r2);	 Catch:{ all -> 0x0157 }
        goto L_0x0023;
    L_0x014a:
        r8 = r0.isEmpty();	 Catch:{ all -> 0x0157 }
        if (r8 == 0) goto L_0x0155;
    L_0x0150:
        r8 = r7.cardManagerStub;	 Catch:{ all -> 0x0157 }
        r8.disConnectStub();	 Catch:{ all -> 0x0157 }
    L_0x0155:
        monitor-exit(r0);	 Catch:{ all -> 0x0157 }
        return;
    L_0x0157:
        r8 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0157 }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.card.CardManager.processRequestWithSuccess(com.samsung.android.sdk.samsungpay.v2.card.ISCardManager):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final void processRequestWithFail(com.samsung.android.sdk.samsungpay.v2.ServiceHelper.BindingResult r7) {
        /*
        r6 = this;
        r0 = "SPAYSDK:CardManager";
        r1 = "processRequestWithFail";
        android.util.Log.d(r0, r1);
        r0 = com.samsung.android.sdk.samsungpay.v2.RequestTracker.getInstance();
        monitor-enter(r0);
        r1 = new android.os.Bundle;	 Catch:{ all -> 0x0082 }
        r1.<init>();	 Catch:{ all -> 0x0082 }
        r2 = "ErrorString";
        r7 = r7.toString();	 Catch:{ all -> 0x0082 }
        r1.putString(r2, r7);	 Catch:{ all -> 0x0082 }
        r7 = r0.isEmpty();	 Catch:{ all -> 0x0082 }
        if (r7 == 0) goto L_0x0029;
    L_0x0020:
        r7 = "SPAYSDK:CardManager";
        r1 = "No pending requests";
        android.util.Log.d(r7, r1);	 Catch:{ all -> 0x0082 }
        monitor-exit(r0);	 Catch:{ all -> 0x0082 }
        return;
    L_0x0029:
        r7 = r0.getRequestList();	 Catch:{ all -> 0x0082 }
        r7 = r7.iterator();	 Catch:{ all -> 0x0082 }
    L_0x0031:
        r2 = r7.hasNext();	 Catch:{ all -> 0x0082 }
        if (r2 == 0) goto L_0x0072;
    L_0x0037:
        r2 = r7.next();	 Catch:{ all -> 0x0082 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.PartnerRequest) r2;	 Catch:{ all -> 0x0082 }
        r3 = "SPAYSDK:CardManager";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0082 }
        r5 = "processPendingRequests: opt: ";
        r4.<init>(r5);	 Catch:{ all -> 0x0082 }
        r5 = r2.operation;	 Catch:{ all -> 0x0082 }
        r4.append(r5);	 Catch:{ all -> 0x0082 }
        r4 = r4.toString();	 Catch:{ all -> 0x0082 }
        android.util.Log.d(r3, r4);	 Catch:{ all -> 0x0082 }
        r3 = r2.operation;	 Catch:{ all -> 0x0082 }
        r4 = -103; // 0xffffffffffffff99 float:NaN double:NaN;
        switch(r3) {
            case 1: goto L_0x006a;
            case 2: goto L_0x0062;
            case 3: goto L_0x005a;
            default: goto L_0x0059;
        };	 Catch:{ all -> 0x0082 }
    L_0x0059:
        goto L_0x0031;
    L_0x005a:
        r2 = r2.callbackObj;	 Catch:{ all -> 0x0082 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.StatusListener) r2;	 Catch:{ all -> 0x0082 }
        r2.onFail(r4, r1);	 Catch:{ all -> 0x0082 }
        goto L_0x0031;
    L_0x0062:
        r2 = r2.callbackObj;	 Catch:{ all -> 0x0082 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.card.AddCardListener) r2;	 Catch:{ all -> 0x0082 }
        r2.onFail(r4, r1);	 Catch:{ all -> 0x0082 }
        goto L_0x0031;
    L_0x006a:
        r2 = r2.callbackObj;	 Catch:{ all -> 0x0082 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.card.GetCardListener) r2;	 Catch:{ all -> 0x0082 }
        r2.onFail(r4, r1);	 Catch:{ all -> 0x0082 }
        goto L_0x0031;
    L_0x0072:
        r0.clearRequestTracker();	 Catch:{ all -> 0x0082 }
        r7 = r0.isEmpty();	 Catch:{ all -> 0x0082 }
        if (r7 == 0) goto L_0x0080;
    L_0x007b:
        r7 = r6.cardManagerStub;	 Catch:{ all -> 0x0082 }
        r7.disConnectStub();	 Catch:{ all -> 0x0082 }
    L_0x0080:
        monitor-exit(r0);	 Catch:{ all -> 0x0082 }
        return;
    L_0x0082:
        r7 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0082 }
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.card.CardManager.processRequestWithFail(com.samsung.android.sdk.samsungpay.v2.ServiceHelper$BindingResult):void");
    }

    protected final void sendMsgForGetCardListener(Object obj, int i, int i2, Bundle bundle) {
        Message obtain = Message.obtain(this.mHanderForInternalListener);
        obtain.obj = obj;
        obtain.what = i;
        if (i == 1) {
            obtain.arg1 = i2;
            obtain.setData(bundle);
        }
        this.mHanderForInternalListener.sendMessage(obtain);
    }

    protected final void sendMsgForAddCardListener(Object obj, int i, int i2, int i3, Bundle bundle) {
        Message obtain = Message.obtain(this.mHanderForInternalListener);
        obtain.obj = obj;
        obtain.what = i;
        obtain.arg1 = i2;
        switch (i) {
            case 1:
                break;
            case 2:
                obtain.arg2 = i3;
                break;
            default:
                break;
        }
        obtain.setData(bundle);
        this.mHanderForInternalListener.sendMessage(obtain);
    }

    static /* synthetic */ void access$2400(CardManager cardManager, UpdateServiceSessionCallback updateServiceSessionCallback, int i) {
        Log.d("SPAYSDK:CardManager", "showUpdateCardSheet()");
        try {
            Intent intent = new Intent();
            if (cardManager.context instanceof Service) {
                Log.d("SPAYSDK:CardManager", "Context is of service");
                intent.setFlags(268435456);
            } else {
                Log.d("SPAYSDK:CardManager", "Context is of Activity");
                intent.setFlags(536870912);
            }
            intent.setComponent(updateServiceSessionCallback.compName);
            intent.putExtra("callerUid", i);
            intent.putExtra("sdkVersion", 2);
            if (TextUtils.equals(cardManager.context.getPackageName(), "com.samsung.android.sdk.samsungpay.test") != 0) {
                Log.d("SPAYSDK:CardManager", "Context is part of instrumentation test, do not show payment sheet.");
            } else {
                cardManager.context.startActivity(intent);
            }
        } catch (CardManager cardManager2) {
            cardManager2.printStackTrace();
            Log.e("SPAYSDK:CardManager", "activity not found and return error");
            cardManager2 = new Bundle();
            RequestTracker.getInstance().removeFromRequestTracker(updateServiceSessionCallback.pReq);
        }
    }

    static /* synthetic */ void access$2500(CardManager cardManager) {
        try {
            if (cardManager.cardManagerStub.isValidStub()) {
                ISCardManager stub = cardManager.cardManagerStub.getStub();
                if (stub != null) {
                    stub.terminateSession();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        cardManager.cardManagerStub.disConnectStub();
    }
}
