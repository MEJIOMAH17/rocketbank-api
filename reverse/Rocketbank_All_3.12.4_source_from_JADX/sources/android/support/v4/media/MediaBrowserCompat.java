package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class MediaBrowserCompat {
    public static final String CUSTOM_ACTION_DOWNLOAD = "android.support.v4.media.action.DOWNLOAD";
    public static final String CUSTOM_ACTION_REMOVE_DOWNLOADED_FILE = "android.support.v4.media.action.REMOVE_DOWNLOADED_FILE";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    public static final String EXTRA_DOWNLOAD_PROGRESS = "android.media.browse.extra.DOWNLOAD_PROGRESS";
    public static final String EXTRA_MEDIA_ID = "android.media.browse.extra.MEDIA_ID";
    public static final String EXTRA_PAGE = "android.media.browse.extra.PAGE";
    public static final String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";
    static final String TAG = "MediaBrowserCompat";
    private final MediaBrowserImpl mImpl;

    private static class CallbackHandler extends Handler {
        private final WeakReference<MediaBrowserServiceCallbackImpl> mCallbackImplRef;
        private WeakReference<Messenger> mCallbacksMessengerRef;

        CallbackHandler(MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl) {
            this.mCallbackImplRef = new WeakReference(mediaBrowserServiceCallbackImpl);
        }

        public void handleMessage(android.os.Message r7) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r6 = this;
            r0 = r6.mCallbacksMessengerRef;
            if (r0 == 0) goto L_0x0099;
        L_0x0004:
            r0 = r6.mCallbacksMessengerRef;
            r0 = r0.get();
            if (r0 == 0) goto L_0x0099;
        L_0x000c:
            r0 = r6.mCallbackImplRef;
            r0 = r0.get();
            if (r0 != 0) goto L_0x0016;
        L_0x0014:
            goto L_0x0099;
        L_0x0016:
            r0 = r7.getData();
            r1 = android.support.v4.media.session.MediaSessionCompat.class;
            r1 = r1.getClassLoader();
            r0.setClassLoader(r1);
            r1 = r6.mCallbackImplRef;
            r1 = r1.get();
            r1 = (android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl) r1;
            r2 = r6.mCallbacksMessengerRef;
            r2 = r2.get();
            r2 = (android.os.Messenger) r2;
            r3 = r7.what;	 Catch:{ BadParcelableException -> 0x0089 }
            switch(r3) {
                case 1: goto L_0x0055;
                case 2: goto L_0x0051;
                case 3: goto L_0x003b;
                default: goto L_0x0038;
            };	 Catch:{ BadParcelableException -> 0x0089 }
        L_0x0038:
            r0 = "MediaBrowserCompat";	 Catch:{ BadParcelableException -> 0x0089 }
            goto L_0x006d;	 Catch:{ BadParcelableException -> 0x0089 }
        L_0x003b:
            r3 = "data_media_item_id";	 Catch:{ BadParcelableException -> 0x0089 }
            r3 = r0.getString(r3);	 Catch:{ BadParcelableException -> 0x0089 }
            r4 = "data_media_item_list";	 Catch:{ BadParcelableException -> 0x0089 }
            r4 = r0.getParcelableArrayList(r4);	 Catch:{ BadParcelableException -> 0x0089 }
            r5 = "data_options";	 Catch:{ BadParcelableException -> 0x0089 }
            r0 = r0.getBundle(r5);	 Catch:{ BadParcelableException -> 0x0089 }
            r1.onLoadChildren(r2, r3, r4, r0);	 Catch:{ BadParcelableException -> 0x0089 }
            return;	 Catch:{ BadParcelableException -> 0x0089 }
        L_0x0051:
            r1.onConnectionFailed(r2);	 Catch:{ BadParcelableException -> 0x0089 }
            return;	 Catch:{ BadParcelableException -> 0x0089 }
        L_0x0055:
            r3 = "data_media_item_id";	 Catch:{ BadParcelableException -> 0x0089 }
            r3 = r0.getString(r3);	 Catch:{ BadParcelableException -> 0x0089 }
            r4 = "data_media_session_token";	 Catch:{ BadParcelableException -> 0x0089 }
            r4 = r0.getParcelable(r4);	 Catch:{ BadParcelableException -> 0x0089 }
            r4 = (android.support.v4.media.session.MediaSessionCompat.Token) r4;	 Catch:{ BadParcelableException -> 0x0089 }
            r5 = "data_root_hints";	 Catch:{ BadParcelableException -> 0x0089 }
            r0 = r0.getBundle(r5);	 Catch:{ BadParcelableException -> 0x0089 }
            r1.onServiceConnected(r2, r3, r4, r0);	 Catch:{ BadParcelableException -> 0x0089 }
            return;	 Catch:{ BadParcelableException -> 0x0089 }
        L_0x006d:
            r3 = new java.lang.StringBuilder;	 Catch:{ BadParcelableException -> 0x0089 }
            r4 = "Unhandled message: ";	 Catch:{ BadParcelableException -> 0x0089 }
            r3.<init>(r4);	 Catch:{ BadParcelableException -> 0x0089 }
            r3.append(r7);	 Catch:{ BadParcelableException -> 0x0089 }
            r4 = "\n  Client version: 1\n  Service version: ";	 Catch:{ BadParcelableException -> 0x0089 }
            r3.append(r4);	 Catch:{ BadParcelableException -> 0x0089 }
            r4 = r7.arg1;	 Catch:{ BadParcelableException -> 0x0089 }
            r3.append(r4);	 Catch:{ BadParcelableException -> 0x0089 }
            r3 = r3.toString();	 Catch:{ BadParcelableException -> 0x0089 }
            android.util.Log.w(r0, r3);	 Catch:{ BadParcelableException -> 0x0089 }
            return;
        L_0x0089:
            r0 = "MediaBrowserCompat";
            r3 = "Could not unparcel the data.";
            android.util.Log.e(r0, r3);
            r7 = r7.what;
            r0 = 1;
            if (r7 != r0) goto L_0x0098;
        L_0x0095:
            r1.onConnectionFailed(r2);
        L_0x0098:
            return;
        L_0x0099:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.CallbackHandler.handleMessage(android.os.Message):void");
        }

        void setCallbacksMessenger(Messenger messenger) {
            this.mCallbacksMessengerRef = new WeakReference(messenger);
        }
    }

    public static class ConnectionCallback {
        ConnectionCallbackInternal mConnectionCallbackInternal;
        final Object mConnectionCallbackObj;

        interface ConnectionCallbackInternal {
            void onConnected();

            void onConnectionFailed();

            void onConnectionSuspended();
        }

        private class StubApi21 implements ConnectionCallback {
            StubApi21() {
            }

            public void onConnected() {
                if (ConnectionCallback.this.mConnectionCallbackInternal != null) {
                    ConnectionCallback.this.mConnectionCallbackInternal.onConnected();
                }
                ConnectionCallback.this.onConnected();
            }

            public void onConnectionSuspended() {
                if (ConnectionCallback.this.mConnectionCallbackInternal != null) {
                    ConnectionCallback.this.mConnectionCallbackInternal.onConnectionSuspended();
                }
                ConnectionCallback.this.onConnectionSuspended();
            }

            public void onConnectionFailed() {
                if (ConnectionCallback.this.mConnectionCallbackInternal != null) {
                    ConnectionCallback.this.mConnectionCallbackInternal.onConnectionFailed();
                }
                ConnectionCallback.this.onConnectionFailed();
            }
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }

        public ConnectionCallback() {
            if (VERSION.SDK_INT >= 21) {
                this.mConnectionCallbackObj = MediaBrowserCompatApi21.createConnectionCallback(new StubApi21());
            } else {
                this.mConnectionCallbackObj = null;
            }
        }

        void setInternalConnectionCallback(ConnectionCallbackInternal connectionCallbackInternal) {
            this.mConnectionCallbackInternal = connectionCallbackInternal;
        }
    }

    public static abstract class CustomActionCallback {
        public void onError(String str, Bundle bundle, Bundle bundle2) {
        }

        public void onProgressUpdate(String str, Bundle bundle, Bundle bundle2) {
        }

        public void onResult(String str, Bundle bundle, Bundle bundle2) {
        }
    }

    public static abstract class ItemCallback {
        final Object mItemCallbackObj;

        private class StubApi23 implements ItemCallback {
            StubApi23() {
            }

            public void onItemLoaded(Parcel parcel) {
                if (parcel == null) {
                    ItemCallback.this.onItemLoaded(null);
                    return;
                }
                parcel.setDataPosition(0);
                MediaItem mediaItem = (MediaItem) MediaItem.CREATOR.createFromParcel(parcel);
                parcel.recycle();
                ItemCallback.this.onItemLoaded(mediaItem);
            }

            public void onError(String str) {
                ItemCallback.this.onError(str);
            }
        }

        public void onError(String str) {
        }

        public void onItemLoaded(MediaItem mediaItem) {
        }

        public ItemCallback() {
            if (VERSION.SDK_INT >= 23) {
                this.mItemCallbackObj = MediaBrowserCompatApi23.createItemCallback(new StubApi23());
            } else {
                this.mItemCallbackObj = null;
            }
        }
    }

    interface MediaBrowserImpl {
        void connect();

        void disconnect();

        Bundle getExtras();

        void getItem(String str, ItemCallback itemCallback);

        String getRoot();

        ComponentName getServiceComponent();

        Token getSessionToken();

        boolean isConnected();

        void search(String str, Bundle bundle, SearchCallback searchCallback);

        void sendCustomAction(String str, Bundle bundle, CustomActionCallback customActionCallback);

        void subscribe(String str, Bundle bundle, SubscriptionCallback subscriptionCallback);

        void unsubscribe(String str, SubscriptionCallback subscriptionCallback);
    }

    interface MediaBrowserServiceCallbackImpl {
        void onConnectionFailed(Messenger messenger);

        void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle);

        void onServiceConnected(Messenger messenger, String str, Token token, Bundle bundle);
    }

    public static class MediaItem implements Parcelable {
        public static final Creator<MediaItem> CREATOR = new C01391();
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;
        private final MediaDescriptionCompat mDescription;
        private final int mFlags;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem$1 */
        static class C01391 implements Creator<MediaItem> {
            C01391() {
            }

            public final MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            public final MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        }

        @RestrictTo
        @Retention(RetentionPolicy.SOURCE)
        public @interface Flags {
        }

        public int describeContents() {
            return 0;
        }

        public static MediaItem fromMediaItem(Object obj) {
            if (obj != null) {
                if (VERSION.SDK_INT >= 21) {
                    return new MediaItem(MediaDescriptionCompat.fromMediaDescription(MediaItem.getDescription(obj)), MediaItem.getFlags(obj));
                }
            }
            return null;
        }

        public static List<MediaItem> fromMediaItemList(List<?> list) {
            if (list != null) {
                if (VERSION.SDK_INT >= 21) {
                    List<MediaItem> arrayList = new ArrayList(list.size());
                    for (Object fromMediaItem : list) {
                        arrayList.add(fromMediaItem(fromMediaItem));
                    }
                    return arrayList;
                }
            }
            return null;
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            } else if (TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                throw new IllegalArgumentException("description must have a non-empty media id");
            } else {
                this.mFlags = i;
                this.mDescription = mediaDescriptionCompat;
            }
        }

        MediaItem(Parcel parcel) {
            this.mFlags = parcel.readInt();
            this.mDescription = (MediaDescriptionCompat) MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mFlags);
            this.mDescription.writeToParcel(parcel, i);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder("MediaItem{");
            stringBuilder.append("mFlags=");
            stringBuilder.append(this.mFlags);
            stringBuilder.append(", mDescription=");
            stringBuilder.append(this.mDescription);
            stringBuilder.append('}');
            return stringBuilder.toString();
        }

        public int getFlags() {
            return this.mFlags;
        }

        public boolean isBrowsable() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isPlayable() {
            return (this.mFlags & 2) != 0;
        }

        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public String getMediaId() {
            return this.mDescription.getMediaId();
        }
    }

    public static abstract class SearchCallback {
        public void onError(String str, Bundle bundle) {
        }

        public void onSearchResult(String str, Bundle bundle, List<MediaItem> list) {
        }
    }

    private static class ServiceBinderWrapper {
        private Messenger mMessenger;
        private Bundle mRootHints;

        public ServiceBinderWrapper(IBinder iBinder, Bundle bundle) {
            this.mMessenger = new Messenger(iBinder);
            this.mRootHints = bundle;
        }

        void connect(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.mRootHints);
            sendRequest(1, bundle, messenger);
        }

        void disconnect(Messenger messenger) throws RemoteException {
            sendRequest(2, null, messenger);
        }

        void addSubscription(String str, IBinder iBinder, Bundle bundle, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            BundleCompat.putBinder(bundle2, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, iBinder);
            bundle2.putBundle(MediaBrowserProtocol.DATA_OPTIONS, bundle);
            sendRequest(3, bundle2, messenger);
        }

        void removeSubscription(String str, IBinder iBinder, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            BundleCompat.putBinder(bundle, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, iBinder);
            sendRequest(4, bundle, messenger);
        }

        void getMediaItem(String str, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            sendRequest(5, bundle, messenger);
        }

        void registerCallbackMessenger(Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.mRootHints);
            sendRequest(6, bundle, messenger);
        }

        void unregisterCallbackMessenger(Messenger messenger) throws RemoteException {
            sendRequest(7, null, messenger);
        }

        void search(String str, Bundle bundle, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_SEARCH_QUERY, str);
            bundle2.putBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS, bundle);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            sendRequest(8, bundle2, messenger);
        }

        void sendCustomAction(String str, Bundle bundle, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_CUSTOM_ACTION, str);
            bundle2.putBundle(MediaBrowserProtocol.DATA_CUSTOM_ACTION_EXTRAS, bundle);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            sendRequest(9, bundle2, messenger);
        }

        private void sendRequest(int i, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.mMessenger.send(obtain);
        }
    }

    private static class Subscription {
        private final List<SubscriptionCallback> mCallbacks = new ArrayList();
        private final List<Bundle> mOptionsList = new ArrayList();

        public boolean isEmpty() {
            return this.mCallbacks.isEmpty();
        }

        public List<Bundle> getOptionsList() {
            return this.mOptionsList;
        }

        public List<SubscriptionCallback> getCallbacks() {
            return this.mCallbacks;
        }

        public SubscriptionCallback getCallback(Context context, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(context.getClassLoader());
            }
            for (context = null; context < this.mOptionsList.size(); context++) {
                if (MediaBrowserCompatUtils.areSameOptions((Bundle) this.mOptionsList.get(context), bundle)) {
                    return (SubscriptionCallback) this.mCallbacks.get(context);
                }
            }
            return null;
        }

        public void putCallback(Context context, Bundle bundle, SubscriptionCallback subscriptionCallback) {
            if (bundle != null) {
                bundle.setClassLoader(context.getClassLoader());
            }
            for (context = null; context < this.mOptionsList.size(); context++) {
                if (MediaBrowserCompatUtils.areSameOptions((Bundle) this.mOptionsList.get(context), bundle)) {
                    this.mCallbacks.set(context, subscriptionCallback);
                    return;
                }
            }
            this.mCallbacks.add(subscriptionCallback);
            this.mOptionsList.add(bundle);
        }
    }

    public static abstract class SubscriptionCallback {
        private final Object mSubscriptionCallbackObj;
        WeakReference<Subscription> mSubscriptionRef;
        private final IBinder mToken = new Binder();

        private class StubApi21 implements SubscriptionCallback {
            StubApi21() {
            }

            public void onChildrenLoaded(String str, List<?> list) {
                Subscription subscription = SubscriptionCallback.this.mSubscriptionRef == null ? null : (Subscription) SubscriptionCallback.this.mSubscriptionRef.get();
                if (subscription == null) {
                    SubscriptionCallback.this.onChildrenLoaded(str, MediaItem.fromMediaItemList(list));
                    return;
                }
                list = MediaItem.fromMediaItemList(list);
                List callbacks = subscription.getCallbacks();
                List optionsList = subscription.getOptionsList();
                for (int i = 0; i < callbacks.size(); i++) {
                    Bundle bundle = (Bundle) optionsList.get(i);
                    if (bundle == null) {
                        SubscriptionCallback.this.onChildrenLoaded(str, list);
                    } else {
                        SubscriptionCallback.this.onChildrenLoaded(str, applyOptions(list, bundle), bundle);
                    }
                }
            }

            public void onError(String str) {
                SubscriptionCallback.this.onError(str);
            }

            List<MediaItem> applyOptions(List<MediaItem> list, Bundle bundle) {
                if (list == null) {
                    return null;
                }
                int i = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
                bundle = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
                if (i == -1 && bundle == -1) {
                    return list;
                }
                int i2 = bundle * i;
                int i3 = i2 + bundle;
                if (i >= 0 && bundle > null) {
                    if (i2 < list.size()) {
                        if (i3 > list.size()) {
                            i3 = list.size();
                        }
                        return list.subList(i2, i3);
                    }
                }
                return Collections.EMPTY_LIST;
            }
        }

        private class StubApi26 extends StubApi21 implements SubscriptionCallback {
            StubApi26() {
                super();
            }

            public void onChildrenLoaded(String str, List<?> list, Bundle bundle) {
                SubscriptionCallback.this.onChildrenLoaded(str, MediaItem.fromMediaItemList(list), bundle);
            }

            public void onError(String str, Bundle bundle) {
                SubscriptionCallback.this.onError(str, bundle);
            }
        }

        public void onChildrenLoaded(String str, List<MediaItem> list) {
        }

        public void onChildrenLoaded(String str, List<MediaItem> list, Bundle bundle) {
        }

        public void onError(String str) {
        }

        public void onError(String str, Bundle bundle) {
        }

        public SubscriptionCallback() {
            if (VERSION.SDK_INT >= 26) {
                this.mSubscriptionCallbackObj = MediaBrowserCompatApi26.createSubscriptionCallback(new StubApi26());
            } else if (VERSION.SDK_INT >= 21) {
                this.mSubscriptionCallbackObj = MediaBrowserCompatApi21.createSubscriptionCallback(new StubApi21());
            } else {
                this.mSubscriptionCallbackObj = null;
            }
        }

        private void setSubscription(Subscription subscription) {
            this.mSubscriptionRef = new WeakReference(subscription);
        }
    }

    private static class CustomActionResultReceiver extends ResultReceiver {
        private final String mAction;
        private final CustomActionCallback mCallback;
        private final Bundle mExtras;

        CustomActionResultReceiver(String str, Bundle bundle, CustomActionCallback customActionCallback, Handler handler) {
            super(handler);
            this.mAction = str;
            this.mExtras = bundle;
            this.mCallback = customActionCallback;
        }

        protected void onReceiveResult(int i, Bundle bundle) {
            if (this.mCallback != null) {
                switch (i) {
                    case -1:
                        this.mCallback.onError(this.mAction, this.mExtras, bundle);
                        return;
                    case 0:
                        this.mCallback.onResult(this.mAction, this.mExtras, bundle);
                        return;
                    case 1:
                        this.mCallback.onProgressUpdate(this.mAction, this.mExtras, bundle);
                        return;
                    default:
                        String str = MediaBrowserCompat.TAG;
                        StringBuilder stringBuilder = new StringBuilder("Unknown result code: ");
                        stringBuilder.append(i);
                        stringBuilder.append(" (extras=");
                        stringBuilder.append(this.mExtras);
                        stringBuilder.append(", resultData=");
                        stringBuilder.append(bundle);
                        stringBuilder.append(")");
                        Log.w(str, stringBuilder.toString());
                        return;
                }
            }
        }
    }

    private static class ItemReceiver extends ResultReceiver {
        private final ItemCallback mCallback;
        private final String mMediaId;

        ItemReceiver(String str, ItemCallback itemCallback, Handler handler) {
            super(handler);
            this.mMediaId = str;
            this.mCallback = itemCallback;
        }

        protected void onReceiveResult(int i, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            }
            if (i == 0 && bundle != null) {
                if (bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM) != 0) {
                    i = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
                    if (i != 0) {
                        if ((i instanceof MediaItem) == null) {
                            this.mCallback.onError(this.mMediaId);
                            return;
                        }
                    }
                    this.mCallback.onItemLoaded((MediaItem) i);
                    return;
                }
            }
            this.mCallback.onError(this.mMediaId);
        }
    }

    static class MediaBrowserImplApi21 implements ConnectionCallbackInternal, MediaBrowserImpl, MediaBrowserServiceCallbackImpl {
        protected final Object mBrowserObj;
        protected Messenger mCallbacksMessenger;
        final Context mContext;
        protected final CallbackHandler mHandler = new CallbackHandler(this);
        private Token mMediaSessionToken;
        protected final Bundle mRootHints;
        protected ServiceBinderWrapper mServiceBinderWrapper;
        protected int mServiceVersion;
        private final ArrayMap<String, Subscription> mSubscriptions = new ArrayMap();

        public void onConnectionFailed() {
        }

        public void onConnectionFailed(Messenger messenger) {
        }

        public void onServiceConnected(Messenger messenger, String str, Token token, Bundle bundle) {
        }

        MediaBrowserImplApi21(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            this.mContext = context;
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            this.mRootHints = new Bundle(bundle);
            connectionCallback.setInternalConnectionCallback(this);
            this.mBrowserObj = MediaBrowserCompatApi21.createBrowser(context, componentName, connectionCallback.mConnectionCallbackObj, this.mRootHints);
        }

        public void connect() {
            MediaBrowserCompatApi21.connect(this.mBrowserObj);
        }

        public void disconnect() {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r2 = this;
            r0 = r2.mServiceBinderWrapper;
            if (r0 == 0) goto L_0x0017;
        L_0x0004:
            r0 = r2.mCallbacksMessenger;
            if (r0 == 0) goto L_0x0017;
        L_0x0008:
            r0 = r2.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0010 }
            r1 = r2.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0010 }
            r0.unregisterCallbackMessenger(r1);	 Catch:{ RemoteException -> 0x0010 }
            goto L_0x0017;
        L_0x0010:
            r0 = "MediaBrowserCompat";
            r1 = "Remote error unregistering client messenger.";
            android.util.Log.i(r0, r1);
        L_0x0017:
            r0 = r2.mBrowserObj;
            android.support.v4.media.MediaBrowserCompatApi21.disconnect(r0);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.disconnect():void");
        }

        public boolean isConnected() {
            return MediaBrowserCompatApi21.isConnected(this.mBrowserObj);
        }

        public ComponentName getServiceComponent() {
            return MediaBrowserCompatApi21.getServiceComponent(this.mBrowserObj);
        }

        public String getRoot() {
            return MediaBrowserCompatApi21.getRoot(this.mBrowserObj);
        }

        public Bundle getExtras() {
            return MediaBrowserCompatApi21.getExtras(this.mBrowserObj);
        }

        public Token getSessionToken() {
            if (this.mMediaSessionToken == null) {
                this.mMediaSessionToken = Token.fromToken(MediaBrowserCompatApi21.getSessionToken(this.mBrowserObj));
            }
            return this.mMediaSessionToken;
        }

        public void subscribe(java.lang.String r3, android.os.Bundle r4, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback r5) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r2 = this;
            r0 = r2.mSubscriptions;
            r0 = r0.get(r3);
            r0 = (android.support.v4.media.MediaBrowserCompat.Subscription) r0;
            if (r0 != 0) goto L_0x0014;
        L_0x000a:
            r0 = new android.support.v4.media.MediaBrowserCompat$Subscription;
            r0.<init>();
            r1 = r2.mSubscriptions;
            r1.put(r3, r0);
        L_0x0014:
            r5.setSubscription(r0);
            if (r4 != 0) goto L_0x001b;
        L_0x0019:
            r4 = 0;
            goto L_0x0021;
        L_0x001b:
            r1 = new android.os.Bundle;
            r1.<init>(r4);
            r4 = r1;
        L_0x0021:
            r1 = r2.mContext;
            r0.putCallback(r1, r4, r5);
            r0 = r2.mServiceBinderWrapper;
            if (r0 != 0) goto L_0x0034;
        L_0x002a:
            r4 = r2.mBrowserObj;
            r5 = r5.mSubscriptionCallbackObj;
            android.support.v4.media.MediaBrowserCompatApi21.subscribe(r4, r3, r5);
            return;
        L_0x0034:
            r0 = r2.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0040 }
            r5 = r5.mToken;	 Catch:{ RemoteException -> 0x0040 }
            r1 = r2.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0040 }
            r0.addSubscription(r3, r5, r4, r1);	 Catch:{ RemoteException -> 0x0040 }
            return;
        L_0x0040:
            r4 = "MediaBrowserCompat";
            r5 = "Remote error subscribing media item: ";
            r3 = java.lang.String.valueOf(r3);
            r3 = r5.concat(r3);
            android.util.Log.i(r4, r3);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.subscribe(java.lang.String, android.os.Bundle, android.support.v4.media.MediaBrowserCompat$SubscriptionCallback):void");
        }

        public void unsubscribe(java.lang.String r8, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback r9) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r7 = this;
            r0 = r7.mSubscriptions;
            r0 = r0.get(r8);
            r0 = (android.support.v4.media.MediaBrowserCompat.Subscription) r0;
            if (r0 != 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            r1 = r7.mServiceBinderWrapper;
            if (r1 != 0) goto L_0x0043;
        L_0x000f:
            if (r9 != 0) goto L_0x0018;
        L_0x0011:
            r1 = r7.mBrowserObj;
            android.support.v4.media.MediaBrowserCompatApi21.unsubscribe(r1, r8);
            goto L_0x0087;
        L_0x0018:
            r1 = r0.getCallbacks();
            r2 = r0.getOptionsList();
            r3 = r1.size();
            r3 = r3 + -1;
        L_0x0026:
            if (r3 < 0) goto L_0x0037;
        L_0x0028:
            r4 = r1.get(r3);
            if (r4 != r9) goto L_0x0034;
        L_0x002e:
            r1.remove(r3);
            r2.remove(r3);
        L_0x0034:
            r3 = r3 + -1;
            goto L_0x0026;
        L_0x0037:
            r1 = r1.size();
            if (r1 != 0) goto L_0x0087;
        L_0x003d:
            r1 = r7.mBrowserObj;
            android.support.v4.media.MediaBrowserCompatApi21.unsubscribe(r1, r8);
            goto L_0x0087;
        L_0x0043:
            if (r9 != 0) goto L_0x004e;
        L_0x0045:
            r1 = r7.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0078 }
            r2 = 0;	 Catch:{ RemoteException -> 0x0078 }
            r3 = r7.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0078 }
            r1.removeSubscription(r8, r2, r3);	 Catch:{ RemoteException -> 0x0078 }
            goto L_0x0087;	 Catch:{ RemoteException -> 0x0078 }
        L_0x004e:
            r1 = r0.getCallbacks();	 Catch:{ RemoteException -> 0x0078 }
            r2 = r0.getOptionsList();	 Catch:{ RemoteException -> 0x0078 }
            r3 = r1.size();	 Catch:{ RemoteException -> 0x0078 }
            r3 = r3 + -1;	 Catch:{ RemoteException -> 0x0078 }
        L_0x005c:
            if (r3 < 0) goto L_0x0087;	 Catch:{ RemoteException -> 0x0078 }
        L_0x005e:
            r4 = r1.get(r3);	 Catch:{ RemoteException -> 0x0078 }
            if (r4 != r9) goto L_0x0075;	 Catch:{ RemoteException -> 0x0078 }
        L_0x0064:
            r4 = r7.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0078 }
            r5 = r9.mToken;	 Catch:{ RemoteException -> 0x0078 }
            r6 = r7.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0078 }
            r4.removeSubscription(r8, r5, r6);	 Catch:{ RemoteException -> 0x0078 }
            r1.remove(r3);	 Catch:{ RemoteException -> 0x0078 }
            r2.remove(r3);	 Catch:{ RemoteException -> 0x0078 }
        L_0x0075:
            r3 = r3 + -1;
            goto L_0x005c;
        L_0x0078:
            r1 = "MediaBrowserCompat";
            r2 = "removeSubscription failed with RemoteException parentId=";
            r3 = java.lang.String.valueOf(r8);
            r2 = r2.concat(r3);
            android.util.Log.d(r1, r2);
        L_0x0087:
            r0 = r0.isEmpty();
            if (r0 != 0) goto L_0x008f;
        L_0x008d:
            if (r9 != 0) goto L_0x0094;
        L_0x008f:
            r9 = r7.mSubscriptions;
            r9.remove(r8);
        L_0x0094:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.unsubscribe(java.lang.String, android.support.v4.media.MediaBrowserCompat$SubscriptionCallback):void");
        }

        public void getItem(final java.lang.String r4, final android.support.v4.media.MediaBrowserCompat.ItemCallback r5) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r3 = this;
            r0 = android.text.TextUtils.isEmpty(r4);
            if (r0 == 0) goto L_0x000e;
        L_0x0006:
            r4 = new java.lang.IllegalArgumentException;
            r5 = "mediaId is empty";
            r4.<init>(r5);
            throw r4;
        L_0x000e:
            if (r5 != 0) goto L_0x0018;
        L_0x0010:
            r4 = new java.lang.IllegalArgumentException;
            r5 = "cb is null";
            r4.<init>(r5);
            throw r4;
        L_0x0018:
            r0 = r3.mBrowserObj;
            r0 = android.support.v4.media.MediaBrowserCompatApi21.isConnected(r0);
            if (r0 != 0) goto L_0x0032;
        L_0x0020:
            r0 = "MediaBrowserCompat";
            r1 = "Not connected, unable to retrieve the MediaItem.";
            android.util.Log.i(r0, r1);
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$1;
            r1.<init>(r5, r4);
            r0.post(r1);
            return;
        L_0x0032:
            r0 = r3.mServiceBinderWrapper;
            if (r0 != 0) goto L_0x0041;
        L_0x0036:
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$2;
            r1.<init>(r5, r4);
            r0.post(r1);
            return;
        L_0x0041:
            r0 = new android.support.v4.media.MediaBrowserCompat$ItemReceiver;
            r1 = r3.mHandler;
            r0.<init>(r4, r5, r1);
            r1 = r3.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0050 }
            r2 = r3.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0050 }
            r1.getMediaItem(r4, r0, r2);	 Catch:{ RemoteException -> 0x0050 }
            return;
        L_0x0050:
            r0 = "MediaBrowserCompat";
            r1 = "Remote error getting media item: ";
            r2 = java.lang.String.valueOf(r4);
            r1 = r1.concat(r2);
            android.util.Log.i(r0, r1);
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$3;
            r1.<init>(r5, r4);
            r0.post(r1);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.getItem(java.lang.String, android.support.v4.media.MediaBrowserCompat$ItemCallback):void");
        }

        public void search(final String str, final Bundle bundle, final SearchCallback searchCallback) {
            if (!isConnected()) {
                throw new IllegalStateException("search() called while not connected");
            } else if (this.mServiceBinderWrapper == null) {
                Log.i(MediaBrowserCompat.TAG, "The connected service doesn't support search.");
                this.mHandler.post(new Runnable() {
                    public void run() {
                        searchCallback.onError(str, bundle);
                    }
                });
            } else {
                try {
                    this.mServiceBinderWrapper.search(str, bundle, new SearchResultReceiver(str, bundle, searchCallback, this.mHandler), this.mCallbacksMessenger);
                } catch (Throwable e) {
                    Log.i(MediaBrowserCompat.TAG, "Remote error searching items with query: ".concat(String.valueOf(str)), e);
                    this.mHandler.post(new Runnable() {
                        public void run() {
                            searchCallback.onError(str, bundle);
                        }
                    });
                }
            }
        }

        public void sendCustomAction(final String str, final Bundle bundle, final CustomActionCallback customActionCallback) {
            if (isConnected()) {
                if (this.mServiceBinderWrapper == null) {
                    Log.i(MediaBrowserCompat.TAG, "The connected service doesn't support sendCustomAction.");
                    if (customActionCallback != null) {
                        this.mHandler.post(new Runnable() {
                            public void run() {
                                customActionCallback.onError(str, bundle, null);
                            }
                        });
                    }
                }
                try {
                    this.mServiceBinderWrapper.sendCustomAction(str, bundle, new CustomActionResultReceiver(str, bundle, customActionCallback, this.mHandler), this.mCallbacksMessenger);
                    return;
                } catch (Throwable e) {
                    String str2 = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder = new StringBuilder("Remote error sending a custom action: action=");
                    stringBuilder.append(str);
                    stringBuilder.append(", extras=");
                    stringBuilder.append(bundle);
                    Log.i(str2, stringBuilder.toString(), e);
                    if (customActionCallback != null) {
                        this.mHandler.post(new Runnable() {
                            public void run() {
                                customActionCallback.onError(str, bundle, null);
                            }
                        });
                    }
                    return;
                }
            }
            StringBuilder stringBuilder2 = new StringBuilder("Cannot send a custom action (");
            stringBuilder2.append(str);
            stringBuilder2.append(") with extras ");
            stringBuilder2.append(bundle);
            stringBuilder2.append(" because the browser is not connected to the service.");
            throw new IllegalStateException(stringBuilder2.toString());
        }

        public void onConnected() {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r4 = this;
            r0 = r4.mBrowserObj;
            r0 = android.support.v4.media.MediaBrowserCompatApi21.getExtras(r0);
            if (r0 != 0) goto L_0x0009;
        L_0x0008:
            return;
        L_0x0009:
            r1 = "extra_service_version";
            r2 = 0;
            r1 = r0.getInt(r1, r2);
            r4.mServiceVersion = r1;
            r1 = "extra_messenger";
            r1 = android.support.v4.app.BundleCompat.getBinder(r0, r1);
            if (r1 == 0) goto L_0x0042;
        L_0x001a:
            r2 = new android.support.v4.media.MediaBrowserCompat$ServiceBinderWrapper;
            r3 = r4.mRootHints;
            r2.<init>(r1, r3);
            r4.mServiceBinderWrapper = r2;
            r1 = new android.os.Messenger;
            r2 = r4.mHandler;
            r1.<init>(r2);
            r4.mCallbacksMessenger = r1;
            r1 = r4.mHandler;
            r2 = r4.mCallbacksMessenger;
            r1.setCallbacksMessenger(r2);
            r1 = r4.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x003b }
            r2 = r4.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x003b }
            r1.registerCallbackMessenger(r2);	 Catch:{ RemoteException -> 0x003b }
            goto L_0x0042;
        L_0x003b:
            r1 = "MediaBrowserCompat";
            r2 = "Remote error registering client messenger.";
            android.util.Log.i(r1, r2);
        L_0x0042:
            r1 = "extra_session_binder";
            r0 = android.support.v4.app.BundleCompat.getBinder(r0, r1);
            r0 = android.support.v4.media.session.IMediaSession.Stub.asInterface(r0);
            if (r0 == 0) goto L_0x005a;
        L_0x004e:
            r1 = r4.mBrowserObj;
            r1 = android.support.v4.media.MediaBrowserCompatApi21.getSessionToken(r1);
            r0 = android.support.v4.media.session.MediaSessionCompat.Token.fromToken(r1, r0);
            r4.mMediaSessionToken = r0;
        L_0x005a:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.onConnected():void");
        }

        public void onConnectionSuspended() {
            this.mServiceBinderWrapper = null;
            this.mCallbacksMessenger = null;
            this.mMediaSessionToken = null;
            this.mHandler.setCallbacksMessenger(null);
        }

        public void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle) {
            if (this.mCallbacksMessenger == messenger) {
                Subscription subscription = (Subscription) this.mSubscriptions.get(str);
                if (subscription == null) {
                    if (MediaBrowserCompat.DEBUG != null) {
                        Log.d(MediaBrowserCompat.TAG, "onLoadChildren for id that isn't subscribed id=".concat(String.valueOf(str)));
                    }
                    return;
                }
                messenger = subscription.getCallback(this.mContext, bundle);
                if (messenger != null) {
                    if (bundle == null) {
                        if (list == null) {
                            messenger.onError(str);
                        } else {
                            messenger.onChildrenLoaded(str, list);
                        }
                    } else if (list == null) {
                        messenger.onError(str, bundle);
                    } else {
                        messenger.onChildrenLoaded(str, list, bundle);
                    }
                }
            }
        }
    }

    static class MediaBrowserImplBase implements MediaBrowserImpl, MediaBrowserServiceCallbackImpl {
        static final int CONNECT_STATE_CONNECTED = 3;
        static final int CONNECT_STATE_CONNECTING = 2;
        static final int CONNECT_STATE_DISCONNECTED = 1;
        static final int CONNECT_STATE_DISCONNECTING = 0;
        static final int CONNECT_STATE_SUSPENDED = 4;
        final ConnectionCallback mCallback;
        Messenger mCallbacksMessenger;
        final Context mContext;
        private Bundle mExtras;
        final CallbackHandler mHandler = new CallbackHandler(this);
        private Token mMediaSessionToken;
        final Bundle mRootHints;
        private String mRootId;
        ServiceBinderWrapper mServiceBinderWrapper;
        final ComponentName mServiceComponent;
        MediaServiceConnection mServiceConnection;
        int mState = 1;
        private final ArrayMap<String, Subscription> mSubscriptions = new ArrayMap();

        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$1 */
        class C01311 implements Runnable {
            C01311() {
            }

            public void run() {
                /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                /*
                r5 = this;
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0 = r0.mState;
                if (r0 != 0) goto L_0x0007;
            L_0x0006:
                return;
            L_0x0007:
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r1 = 2;
                r0.mState = r1;
                r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
                if (r0 == 0) goto L_0x002e;
            L_0x0010:
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0 = r0.mServiceConnection;
                if (r0 == 0) goto L_0x002e;
            L_0x0016:
                r0 = new java.lang.RuntimeException;
                r1 = new java.lang.StringBuilder;
                r2 = "mServiceConnection should be null. Instead it is ";
                r1.<init>(r2);
                r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r2 = r2.mServiceConnection;
                r1.append(r2);
                r1 = r1.toString();
                r0.<init>(r1);
                throw r0;
            L_0x002e:
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0 = r0.mServiceBinderWrapper;
                if (r0 == 0) goto L_0x004c;
            L_0x0034:
                r0 = new java.lang.RuntimeException;
                r1 = new java.lang.StringBuilder;
                r2 = "mServiceBinderWrapper should be null. Instead it is ";
                r1.<init>(r2);
                r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r2 = r2.mServiceBinderWrapper;
                r1.append(r2);
                r1 = r1.toString();
                r0.<init>(r1);
                throw r0;
            L_0x004c:
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0 = r0.mCallbacksMessenger;
                if (r0 == 0) goto L_0x006a;
            L_0x0052:
                r0 = new java.lang.RuntimeException;
                r1 = new java.lang.StringBuilder;
                r2 = "mCallbacksMessenger should be null. Instead it is ";
                r1.<init>(r2);
                r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r2 = r2.mCallbacksMessenger;
                r1.append(r2);
                r1 = r1.toString();
                r0.<init>(r1);
                throw r0;
            L_0x006a:
                r0 = new android.content.Intent;
                r1 = "android.media.browse.MediaBrowserService";
                r0.<init>(r1);
                r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r1 = r1.mServiceComponent;
                r0.setComponent(r1);
                r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r2 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
                r3 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r2.<init>();
                r1.mServiceConnection = r2;
                r1 = 0;
                r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ Exception -> 0x0092 }
                r2 = r2.mContext;	 Catch:{ Exception -> 0x0092 }
                r3 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ Exception -> 0x0092 }
                r3 = r3.mServiceConnection;	 Catch:{ Exception -> 0x0092 }
                r4 = 1;	 Catch:{ Exception -> 0x0092 }
                r0 = r2.bindService(r0, r3, r4);	 Catch:{ Exception -> 0x0092 }
                goto L_0x00aa;
            L_0x0092:
                r0 = "MediaBrowserCompat";
                r2 = new java.lang.StringBuilder;
                r3 = "Failed binding to service ";
                r2.<init>(r3);
                r3 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r3 = r3.mServiceComponent;
                r2.append(r3);
                r2 = r2.toString();
                android.util.Log.e(r0, r2);
                r0 = r1;
            L_0x00aa:
                if (r0 != 0) goto L_0x00b8;
            L_0x00ac:
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0.forceCloseConnection();
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0 = r0.mCallback;
                r0.onConnectionFailed();
            L_0x00b8:
                r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
                if (r0 == 0) goto L_0x00c8;
            L_0x00bc:
                r0 = "MediaBrowserCompat";
                r1 = "connect...";
                android.util.Log.d(r0, r1);
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0.dump();
            L_0x00c8:
                return;
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.1.run():void");
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$2 */
        class C01322 implements Runnable {
            C01322() {
            }

            public void run() {
                /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                /*
                r3 = this;
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0 = r0.mCallbacksMessenger;
                if (r0 == 0) goto L_0x0029;
            L_0x0006:
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x0012 }
                r0 = r0.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0012 }
                r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x0012 }
                r1 = r1.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0012 }
                r0.disconnect(r1);	 Catch:{ RemoteException -> 0x0012 }
                goto L_0x0029;
            L_0x0012:
                r0 = "MediaBrowserCompat";
                r1 = new java.lang.StringBuilder;
                r2 = "RemoteException during connect for ";
                r1.<init>(r2);
                r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r2 = r2.mServiceComponent;
                r1.append(r2);
                r1 = r1.toString();
                android.util.Log.w(r0, r1);
            L_0x0029:
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0 = r0.mState;
                r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r1.forceCloseConnection();
                if (r0 == 0) goto L_0x0038;
            L_0x0034:
                r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r1.mState = r0;
            L_0x0038:
                r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
                if (r0 == 0) goto L_0x0048;
            L_0x003c:
                r0 = "MediaBrowserCompat";
                r1 = "disconnect...";
                android.util.Log.d(r0, r1);
                r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                r0.dump();
            L_0x0048:
                return;
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.2.run():void");
            }
        }

        private class MediaServiceConnection implements ServiceConnection {
            MediaServiceConnection() {
            }

            public void onServiceConnected(final ComponentName componentName, final IBinder iBinder) {
                postOrRun(new Runnable() {
                    public void run() {
                        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                        /*
                        r4 = this;
                        r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
                        if (r0 == 0) goto L_0x002a;
                    L_0x0004:
                        r0 = "MediaBrowserCompat";
                        r1 = new java.lang.StringBuilder;
                        r2 = "MediaServiceConnection.onServiceConnected name=";
                        r1.<init>(r2);
                        r2 = r2;
                        r1.append(r2);
                        r2 = " binder=";
                        r1.append(r2);
                        r2 = r3;
                        r1.append(r2);
                        r1 = r1.toString();
                        android.util.Log.d(r0, r1);
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r0.dump();
                    L_0x002a:
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r1 = "onServiceConnected";
                        r0 = r0.isCurrent(r1);
                        if (r0 != 0) goto L_0x0035;
                    L_0x0034:
                        return;
                    L_0x0035:
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r1 = new android.support.v4.media.MediaBrowserCompat$ServiceBinderWrapper;
                        r2 = r3;
                        r3 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r3 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r3 = r3.mRootHints;
                        r1.<init>(r2, r3);
                        r0.mServiceBinderWrapper = r1;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r1 = new android.os.Messenger;
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r2 = r2.mHandler;
                        r1.<init>(r2);
                        r0.mCallbacksMessenger = r1;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r0 = r0.mHandler;
                        r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r1 = r1.mCallbacksMessenger;
                        r0.setCallbacksMessenger(r1);
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r1 = 2;
                        r0.mState = r1;
                        r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;	 Catch:{ RemoteException -> 0x0097 }
                        if (r0 == 0) goto L_0x0081;	 Catch:{ RemoteException -> 0x0097 }
                    L_0x0073:
                        r0 = "MediaBrowserCompat";	 Catch:{ RemoteException -> 0x0097 }
                        r1 = "ServiceCallbacks.onConnect...";	 Catch:{ RemoteException -> 0x0097 }
                        android.util.Log.d(r0, r1);	 Catch:{ RemoteException -> 0x0097 }
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;	 Catch:{ RemoteException -> 0x0097 }
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x0097 }
                        r0.dump();	 Catch:{ RemoteException -> 0x0097 }
                    L_0x0081:
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;	 Catch:{ RemoteException -> 0x0097 }
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x0097 }
                        r0 = r0.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0097 }
                        r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;	 Catch:{ RemoteException -> 0x0097 }
                        r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x0097 }
                        r1 = r1.mContext;	 Catch:{ RemoteException -> 0x0097 }
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;	 Catch:{ RemoteException -> 0x0097 }
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x0097 }
                        r2 = r2.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0097 }
                        r0.connect(r1, r2);	 Catch:{ RemoteException -> 0x0097 }
                        return;
                    L_0x0097:
                        r0 = "MediaBrowserCompat";
                        r1 = new java.lang.StringBuilder;
                        r2 = "RemoteException during connect for ";
                        r1.<init>(r2);
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r2 = r2.mServiceComponent;
                        r1.append(r2);
                        r1 = r1.toString();
                        android.util.Log.w(r0, r1);
                        r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
                        if (r0 == 0) goto L_0x00c2;
                    L_0x00b4:
                        r0 = "MediaBrowserCompat";
                        r1 = "ServiceCallbacks.onConnect...";
                        android.util.Log.d(r0, r1);
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r0.dump();
                    L_0x00c2:
                        return;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.1.run():void");
                    }
                });
            }

            public void onServiceDisconnected(final ComponentName componentName) {
                postOrRun(new Runnable() {
                    public void run() {
                        if (MediaBrowserCompat.DEBUG) {
                            String str = MediaBrowserCompat.TAG;
                            StringBuilder stringBuilder = new StringBuilder("MediaServiceConnection.onServiceDisconnected name=");
                            stringBuilder.append(componentName);
                            stringBuilder.append(" this=");
                            stringBuilder.append(this);
                            stringBuilder.append(" mServiceConnection=");
                            stringBuilder.append(MediaBrowserImplBase.this.mServiceConnection);
                            Log.d(str, stringBuilder.toString());
                            MediaBrowserImplBase.this.dump();
                        }
                        if (MediaServiceConnection.this.isCurrent("onServiceDisconnected")) {
                            MediaBrowserImplBase.this.mServiceBinderWrapper = null;
                            MediaBrowserImplBase.this.mCallbacksMessenger = null;
                            MediaBrowserImplBase.this.mHandler.setCallbacksMessenger(null);
                            MediaBrowserImplBase.this.mState = 4;
                            MediaBrowserImplBase.this.mCallback.onConnectionSuspended();
                        }
                    }
                });
            }

            private void postOrRun(Runnable runnable) {
                if (Thread.currentThread() == MediaBrowserImplBase.this.mHandler.getLooper().getThread()) {
                    runnable.run();
                } else {
                    MediaBrowserImplBase.this.mHandler.post(runnable);
                }
            }

            boolean isCurrent(String str) {
                if (MediaBrowserImplBase.this.mServiceConnection == this && MediaBrowserImplBase.this.mState != 0) {
                    if (MediaBrowserImplBase.this.mState != 1) {
                        return true;
                    }
                }
                if (!(MediaBrowserImplBase.this.mState == 0 || MediaBrowserImplBase.this.mState == 1)) {
                    String str2 = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(" for ");
                    stringBuilder.append(MediaBrowserImplBase.this.mServiceComponent);
                    stringBuilder.append(" with mServiceConnection=");
                    stringBuilder.append(MediaBrowserImplBase.this.mServiceConnection);
                    stringBuilder.append(" this=");
                    stringBuilder.append(this);
                    Log.i(str2, stringBuilder.toString());
                }
                return null;
            }
        }

        public MediaBrowserImplBase(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            } else if (componentName == null) {
                throw new IllegalArgumentException("service component must not be null");
            } else if (connectionCallback == null) {
                throw new IllegalArgumentException("connection callback must not be null");
            } else {
                this.mContext = context;
                this.mServiceComponent = componentName;
                this.mCallback = connectionCallback;
                if (bundle == null) {
                    context = null;
                } else {
                    context = new Bundle(bundle);
                }
                this.mRootHints = context;
            }
        }

        public void connect() {
            if (this.mState == 0 || this.mState == 1) {
                this.mState = 2;
                this.mHandler.post(new C01311());
                return;
            }
            StringBuilder stringBuilder = new StringBuilder("connect() called while neigther disconnecting nor disconnected (state=");
            stringBuilder.append(getStateLabel(this.mState));
            stringBuilder.append(")");
            throw new IllegalStateException(stringBuilder.toString());
        }

        public void disconnect() {
            this.mState = 0;
            this.mHandler.post(new C01322());
        }

        void forceCloseConnection() {
            if (this.mServiceConnection != null) {
                this.mContext.unbindService(this.mServiceConnection);
            }
            this.mState = 1;
            this.mServiceConnection = null;
            this.mServiceBinderWrapper = null;
            this.mCallbacksMessenger = null;
            this.mHandler.setCallbacksMessenger(null);
            this.mRootId = null;
            this.mMediaSessionToken = null;
        }

        public boolean isConnected() {
            return this.mState == 3;
        }

        public ComponentName getServiceComponent() {
            if (isConnected()) {
                return this.mServiceComponent;
            }
            StringBuilder stringBuilder = new StringBuilder("getServiceComponent() called while not connected (state=");
            stringBuilder.append(this.mState);
            stringBuilder.append(")");
            throw new IllegalStateException(stringBuilder.toString());
        }

        public String getRoot() {
            if (isConnected()) {
                return this.mRootId;
            }
            StringBuilder stringBuilder = new StringBuilder("getRoot() called while not connected(state=");
            stringBuilder.append(getStateLabel(this.mState));
            stringBuilder.append(")");
            throw new IllegalStateException(stringBuilder.toString());
        }

        public Bundle getExtras() {
            if (isConnected()) {
                return this.mExtras;
            }
            StringBuilder stringBuilder = new StringBuilder("getExtras() called while not connected (state=");
            stringBuilder.append(getStateLabel(this.mState));
            stringBuilder.append(")");
            throw new IllegalStateException(stringBuilder.toString());
        }

        public Token getSessionToken() {
            if (isConnected()) {
                return this.mMediaSessionToken;
            }
            StringBuilder stringBuilder = new StringBuilder("getSessionToken() called while not connected(state=");
            stringBuilder.append(this.mState);
            stringBuilder.append(")");
            throw new IllegalStateException(stringBuilder.toString());
        }

        public void subscribe(java.lang.String r3, android.os.Bundle r4, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback r5) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r2 = this;
            r0 = r2.mSubscriptions;
            r0 = r0.get(r3);
            r0 = (android.support.v4.media.MediaBrowserCompat.Subscription) r0;
            if (r0 != 0) goto L_0x0014;
        L_0x000a:
            r0 = new android.support.v4.media.MediaBrowserCompat$Subscription;
            r0.<init>();
            r1 = r2.mSubscriptions;
            r1.put(r3, r0);
        L_0x0014:
            if (r4 != 0) goto L_0x0018;
        L_0x0016:
            r4 = 0;
            goto L_0x001e;
        L_0x0018:
            r1 = new android.os.Bundle;
            r1.<init>(r4);
            r4 = r1;
        L_0x001e:
            r1 = r2.mContext;
            r0.putCallback(r1, r4, r5);
            r0 = r2.isConnected();
            if (r0 == 0) goto L_0x0044;
        L_0x0029:
            r0 = r2.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0035 }
            r5 = r5.mToken;	 Catch:{ RemoteException -> 0x0035 }
            r1 = r2.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0035 }
            r0.addSubscription(r3, r5, r4, r1);	 Catch:{ RemoteException -> 0x0035 }
            return;
        L_0x0035:
            r4 = "MediaBrowserCompat";
            r5 = "addSubscription failed with RemoteException parentId=";
            r3 = java.lang.String.valueOf(r3);
            r3 = r5.concat(r3);
            android.util.Log.d(r4, r3);
        L_0x0044:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.subscribe(java.lang.String, android.os.Bundle, android.support.v4.media.MediaBrowserCompat$SubscriptionCallback):void");
        }

        public void unsubscribe(java.lang.String r8, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback r9) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r7 = this;
            r0 = r7.mSubscriptions;
            r0 = r0.get(r8);
            r0 = (android.support.v4.media.MediaBrowserCompat.Subscription) r0;
            if (r0 != 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            if (r9 != 0) goto L_0x001c;
        L_0x000d:
            r1 = r7.isConnected();	 Catch:{ RemoteException -> 0x004c }
            if (r1 == 0) goto L_0x005b;	 Catch:{ RemoteException -> 0x004c }
        L_0x0013:
            r1 = r7.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x004c }
            r2 = 0;	 Catch:{ RemoteException -> 0x004c }
            r3 = r7.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x004c }
            r1.removeSubscription(r8, r2, r3);	 Catch:{ RemoteException -> 0x004c }
            goto L_0x005b;	 Catch:{ RemoteException -> 0x004c }
        L_0x001c:
            r1 = r0.getCallbacks();	 Catch:{ RemoteException -> 0x004c }
            r2 = r0.getOptionsList();	 Catch:{ RemoteException -> 0x004c }
            r3 = r1.size();	 Catch:{ RemoteException -> 0x004c }
            r3 = r3 + -1;	 Catch:{ RemoteException -> 0x004c }
        L_0x002a:
            if (r3 < 0) goto L_0x005b;	 Catch:{ RemoteException -> 0x004c }
        L_0x002c:
            r4 = r1.get(r3);	 Catch:{ RemoteException -> 0x004c }
            if (r4 != r9) goto L_0x0049;	 Catch:{ RemoteException -> 0x004c }
        L_0x0032:
            r4 = r7.isConnected();	 Catch:{ RemoteException -> 0x004c }
            if (r4 == 0) goto L_0x0043;	 Catch:{ RemoteException -> 0x004c }
        L_0x0038:
            r4 = r7.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x004c }
            r5 = r9.mToken;	 Catch:{ RemoteException -> 0x004c }
            r6 = r7.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x004c }
            r4.removeSubscription(r8, r5, r6);	 Catch:{ RemoteException -> 0x004c }
        L_0x0043:
            r1.remove(r3);	 Catch:{ RemoteException -> 0x004c }
            r2.remove(r3);	 Catch:{ RemoteException -> 0x004c }
        L_0x0049:
            r3 = r3 + -1;
            goto L_0x002a;
        L_0x004c:
            r1 = "MediaBrowserCompat";
            r2 = "removeSubscription failed with RemoteException parentId=";
            r3 = java.lang.String.valueOf(r8);
            r2 = r2.concat(r3);
            android.util.Log.d(r1, r2);
        L_0x005b:
            r0 = r0.isEmpty();
            if (r0 != 0) goto L_0x0063;
        L_0x0061:
            if (r9 != 0) goto L_0x0068;
        L_0x0063:
            r9 = r7.mSubscriptions;
            r9.remove(r8);
        L_0x0068:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.unsubscribe(java.lang.String, android.support.v4.media.MediaBrowserCompat$SubscriptionCallback):void");
        }

        public void getItem(final java.lang.String r4, final android.support.v4.media.MediaBrowserCompat.ItemCallback r5) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r3 = this;
            r0 = android.text.TextUtils.isEmpty(r4);
            if (r0 == 0) goto L_0x000e;
        L_0x0006:
            r4 = new java.lang.IllegalArgumentException;
            r5 = "mediaId is empty";
            r4.<init>(r5);
            throw r4;
        L_0x000e:
            if (r5 != 0) goto L_0x0018;
        L_0x0010:
            r4 = new java.lang.IllegalArgumentException;
            r5 = "cb is null";
            r4.<init>(r5);
            throw r4;
        L_0x0018:
            r0 = r3.isConnected();
            if (r0 != 0) goto L_0x0030;
        L_0x001e:
            r0 = "MediaBrowserCompat";
            r1 = "Not connected, unable to retrieve the MediaItem.";
            android.util.Log.i(r0, r1);
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$3;
            r1.<init>(r5, r4);
            r0.post(r1);
            return;
        L_0x0030:
            r0 = new android.support.v4.media.MediaBrowserCompat$ItemReceiver;
            r1 = r3.mHandler;
            r0.<init>(r4, r5, r1);
            r1 = r3.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x003f }
            r2 = r3.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x003f }
            r1.getMediaItem(r4, r0, r2);	 Catch:{ RemoteException -> 0x003f }
            return;
        L_0x003f:
            r0 = "MediaBrowserCompat";
            r1 = "Remote error getting media item: ";
            r2 = java.lang.String.valueOf(r4);
            r1 = r1.concat(r2);
            android.util.Log.i(r0, r1);
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$4;
            r1.<init>(r5, r4);
            r0.post(r1);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.getItem(java.lang.String, android.support.v4.media.MediaBrowserCompat$ItemCallback):void");
        }

        public void search(final String str, final Bundle bundle, final SearchCallback searchCallback) {
            if (isConnected()) {
                try {
                    this.mServiceBinderWrapper.search(str, bundle, new SearchResultReceiver(str, bundle, searchCallback, this.mHandler), this.mCallbacksMessenger);
                    return;
                } catch (Throwable e) {
                    Log.i(MediaBrowserCompat.TAG, "Remote error searching items with query: ".concat(String.valueOf(str)), e);
                    this.mHandler.post(new Runnable() {
                        public void run() {
                            searchCallback.onError(str, bundle);
                        }
                    });
                    return;
                }
            }
            bundle = new StringBuilder("search() called while not connected (state=");
            bundle.append(getStateLabel(this.mState));
            bundle.append(")");
            throw new IllegalStateException(bundle.toString());
        }

        public void sendCustomAction(final String str, final Bundle bundle, final CustomActionCallback customActionCallback) {
            if (isConnected()) {
                try {
                    this.mServiceBinderWrapper.sendCustomAction(str, bundle, new CustomActionResultReceiver(str, bundle, customActionCallback, this.mHandler), this.mCallbacksMessenger);
                    return;
                } catch (Throwable e) {
                    String str2 = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder = new StringBuilder("Remote error sending a custom action: action=");
                    stringBuilder.append(str);
                    stringBuilder.append(", extras=");
                    stringBuilder.append(bundle);
                    Log.i(str2, stringBuilder.toString(), e);
                    if (customActionCallback != null) {
                        this.mHandler.post(new Runnable() {
                            public void run() {
                                customActionCallback.onError(str, bundle, null);
                            }
                        });
                    }
                    return;
                }
            }
            StringBuilder stringBuilder2 = new StringBuilder("Cannot send a custom action (");
            stringBuilder2.append(str);
            stringBuilder2.append(") with extras ");
            stringBuilder2.append(bundle);
            stringBuilder2.append(" because the browser is not connected to the service.");
            throw new IllegalStateException(stringBuilder2.toString());
        }

        public void onServiceConnected(android.os.Messenger r6, java.lang.String r7, android.support.v4.media.session.MediaSessionCompat.Token r8, android.os.Bundle r9) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r5 = this;
            r0 = "onConnect";
            r6 = r5.isCurrent(r6, r0);
            if (r6 != 0) goto L_0x0009;
        L_0x0008:
            return;
        L_0x0009:
            r6 = r5.mState;
            r0 = 2;
            if (r6 == r0) goto L_0x002d;
        L_0x000e:
            r6 = "MediaBrowserCompat";
            r7 = new java.lang.StringBuilder;
            r8 = "onConnect from service while mState=";
            r7.<init>(r8);
            r8 = r5.mState;
            r8 = getStateLabel(r8);
            r7.append(r8);
            r8 = "... ignoring";
            r7.append(r8);
            r7 = r7.toString();
            android.util.Log.w(r6, r7);
            return;
        L_0x002d:
            r5.mRootId = r7;
            r5.mMediaSessionToken = r8;
            r5.mExtras = r9;
            r6 = 3;
            r5.mState = r6;
            r6 = android.support.v4.media.MediaBrowserCompat.DEBUG;
            if (r6 == 0) goto L_0x0044;
        L_0x003a:
            r6 = "MediaBrowserCompat";
            r7 = "ServiceCallbacks.onConnect...";
            android.util.Log.d(r6, r7);
            r5.dump();
        L_0x0044:
            r6 = r5.mCallback;
            r6.onConnected();
            r6 = r5.mSubscriptions;	 Catch:{ RemoteException -> 0x0095 }
            r6 = r6.entrySet();	 Catch:{ RemoteException -> 0x0095 }
            r6 = r6.iterator();	 Catch:{ RemoteException -> 0x0095 }
        L_0x0053:
            r7 = r6.hasNext();	 Catch:{ RemoteException -> 0x0095 }
            if (r7 == 0) goto L_0x0094;	 Catch:{ RemoteException -> 0x0095 }
        L_0x0059:
            r7 = r6.next();	 Catch:{ RemoteException -> 0x0095 }
            r7 = (java.util.Map.Entry) r7;	 Catch:{ RemoteException -> 0x0095 }
            r8 = r7.getKey();	 Catch:{ RemoteException -> 0x0095 }
            r8 = (java.lang.String) r8;	 Catch:{ RemoteException -> 0x0095 }
            r7 = r7.getValue();	 Catch:{ RemoteException -> 0x0095 }
            r7 = (android.support.v4.media.MediaBrowserCompat.Subscription) r7;	 Catch:{ RemoteException -> 0x0095 }
            r9 = r7.getCallbacks();	 Catch:{ RemoteException -> 0x0095 }
            r7 = r7.getOptionsList();	 Catch:{ RemoteException -> 0x0095 }
            r0 = 0;	 Catch:{ RemoteException -> 0x0095 }
        L_0x0074:
            r1 = r9.size();	 Catch:{ RemoteException -> 0x0095 }
            if (r0 >= r1) goto L_0x0053;	 Catch:{ RemoteException -> 0x0095 }
        L_0x007a:
            r1 = r5.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0095 }
            r2 = r9.get(r0);	 Catch:{ RemoteException -> 0x0095 }
            r2 = (android.support.v4.media.MediaBrowserCompat.SubscriptionCallback) r2;	 Catch:{ RemoteException -> 0x0095 }
            r2 = r2.mToken;	 Catch:{ RemoteException -> 0x0095 }
            r3 = r7.get(r0);	 Catch:{ RemoteException -> 0x0095 }
            r3 = (android.os.Bundle) r3;	 Catch:{ RemoteException -> 0x0095 }
            r4 = r5.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0095 }
            r1.addSubscription(r8, r2, r3, r4);	 Catch:{ RemoteException -> 0x0095 }
            r0 = r0 + 1;
            goto L_0x0074;
        L_0x0094:
            return;
        L_0x0095:
            r6 = "MediaBrowserCompat";
            r7 = "addSubscription failed with RemoteException.";
            android.util.Log.d(r6, r7);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.onServiceConnected(android.os.Messenger, java.lang.String, android.support.v4.media.session.MediaSessionCompat$Token, android.os.Bundle):void");
        }

        public void onConnectionFailed(Messenger messenger) {
            String str = MediaBrowserCompat.TAG;
            StringBuilder stringBuilder = new StringBuilder("onConnectFailed for ");
            stringBuilder.append(this.mServiceComponent);
            Log.e(str, stringBuilder.toString());
            if (isCurrent(messenger, "onConnectFailed") != null) {
                if (this.mState != 2) {
                    messenger = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder2 = new StringBuilder("onConnect from service while mState=");
                    stringBuilder2.append(getStateLabel(this.mState));
                    stringBuilder2.append("... ignoring");
                    Log.w(messenger, stringBuilder2.toString());
                    return;
                }
                forceCloseConnection();
                this.mCallback.onConnectionFailed();
            }
        }

        public void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle) {
            if (isCurrent(messenger, "onLoadChildren") != null) {
                if (MediaBrowserCompat.DEBUG != null) {
                    messenger = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder = new StringBuilder("onLoadChildren for ");
                    stringBuilder.append(this.mServiceComponent);
                    stringBuilder.append(" id=");
                    stringBuilder.append(str);
                    Log.d(messenger, stringBuilder.toString());
                }
                Subscription subscription = (Subscription) this.mSubscriptions.get(str);
                if (subscription == null) {
                    if (MediaBrowserCompat.DEBUG != null) {
                        Log.d(MediaBrowserCompat.TAG, "onLoadChildren for id that isn't subscribed id=".concat(String.valueOf(str)));
                    }
                    return;
                }
                messenger = subscription.getCallback(this.mContext, bundle);
                if (messenger != null) {
                    if (bundle == null) {
                        if (list == null) {
                            messenger.onError(str);
                        } else {
                            messenger.onChildrenLoaded(str, list);
                        }
                    } else if (list == null) {
                        messenger.onError(str, bundle);
                    } else {
                        messenger.onChildrenLoaded(str, list, bundle);
                    }
                }
            }
        }

        private static String getStateLabel(int i) {
            switch (i) {
                case 0:
                    return "CONNECT_STATE_DISCONNECTING";
                case 1:
                    return "CONNECT_STATE_DISCONNECTED";
                case 2:
                    return "CONNECT_STATE_CONNECTING";
                case 3:
                    return "CONNECT_STATE_CONNECTED";
                case 4:
                    return "CONNECT_STATE_SUSPENDED";
                default:
                    return "UNKNOWN/".concat(String.valueOf(i));
            }
        }

        private boolean isCurrent(Messenger messenger, String str) {
            if (this.mCallbacksMessenger == messenger && this.mState != null) {
                if (this.mState != 1) {
                    return true;
                }
            }
            if (!(this.mState == null || this.mState == 1)) {
                messenger = MediaBrowserCompat.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(" for ");
                stringBuilder.append(this.mServiceComponent);
                stringBuilder.append(" with mCallbacksMessenger=");
                stringBuilder.append(this.mCallbacksMessenger);
                stringBuilder.append(" this=");
                stringBuilder.append(this);
                Log.i(messenger, stringBuilder.toString());
            }
            return null;
        }

        void dump() {
            Log.d(MediaBrowserCompat.TAG, "MediaBrowserCompat...");
            String str = MediaBrowserCompat.TAG;
            StringBuilder stringBuilder = new StringBuilder("  mServiceComponent=");
            stringBuilder.append(this.mServiceComponent);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder("  mCallback=");
            stringBuilder.append(this.mCallback);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder("  mRootHints=");
            stringBuilder.append(this.mRootHints);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder("  mState=");
            stringBuilder.append(getStateLabel(this.mState));
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder("  mServiceConnection=");
            stringBuilder.append(this.mServiceConnection);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder("  mServiceBinderWrapper=");
            stringBuilder.append(this.mServiceBinderWrapper);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder("  mCallbacksMessenger=");
            stringBuilder.append(this.mCallbacksMessenger);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder("  mRootId=");
            stringBuilder.append(this.mRootId);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder("  mMediaSessionToken=");
            stringBuilder.append(this.mMediaSessionToken);
            Log.d(str, stringBuilder.toString());
        }
    }

    private static class SearchResultReceiver extends ResultReceiver {
        private final SearchCallback mCallback;
        private final Bundle mExtras;
        private final String mQuery;

        SearchResultReceiver(String str, Bundle bundle, SearchCallback searchCallback, Handler handler) {
            super(handler);
            this.mQuery = str;
            this.mExtras = bundle;
            this.mCallback = searchCallback;
        }

        protected void onReceiveResult(int i, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            }
            if (i == 0 && bundle != null) {
                if (bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS) != 0) {
                    i = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
                    bundle = null;
                    if (i != 0) {
                        bundle = new ArrayList();
                        for (Object obj : i) {
                            bundle.add((MediaItem) obj);
                        }
                    }
                    this.mCallback.onSearchResult(this.mQuery, this.mExtras, bundle);
                    return;
                }
            }
            this.mCallback.onError(this.mQuery, this.mExtras);
        }
    }

    static class MediaBrowserImplApi23 extends MediaBrowserImplApi21 {
        MediaBrowserImplApi23(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            super(context, componentName, connectionCallback, bundle);
        }

        public void getItem(String str, ItemCallback itemCallback) {
            if (this.mServiceBinderWrapper == null) {
                MediaBrowserCompatApi23.getItem(this.mBrowserObj, str, itemCallback.mItemCallbackObj);
            } else {
                super.getItem(str, itemCallback);
            }
        }
    }

    static class MediaBrowserImplApi26 extends MediaBrowserImplApi23 {
        MediaBrowserImplApi26(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            super(context, componentName, connectionCallback, bundle);
        }

        public void subscribe(String str, Bundle bundle, SubscriptionCallback subscriptionCallback) {
            if (this.mServiceBinderWrapper != null) {
                if (this.mServiceVersion >= 2) {
                    super.subscribe(str, bundle, subscriptionCallback);
                    return;
                }
            }
            if (bundle == null) {
                MediaBrowserCompatApi21.subscribe(this.mBrowserObj, str, subscriptionCallback.mSubscriptionCallbackObj);
            } else {
                MediaBrowserCompatApi26.subscribe(this.mBrowserObj, str, bundle, subscriptionCallback.mSubscriptionCallbackObj);
            }
        }

        public void unsubscribe(String str, SubscriptionCallback subscriptionCallback) {
            if (this.mServiceBinderWrapper != null) {
                if (this.mServiceVersion >= 2) {
                    super.unsubscribe(str, subscriptionCallback);
                    return;
                }
            }
            if (subscriptionCallback == null) {
                MediaBrowserCompatApi21.unsubscribe(this.mBrowserObj, str);
            } else {
                MediaBrowserCompatApi26.unsubscribe(this.mBrowserObj, str, subscriptionCallback.mSubscriptionCallbackObj);
            }
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
        if (VERSION.SDK_INT >= 26) {
            this.mImpl = new MediaBrowserImplApi26(context, componentName, connectionCallback, bundle);
        } else if (VERSION.SDK_INT >= 23) {
            this.mImpl = new MediaBrowserImplApi23(context, componentName, connectionCallback, bundle);
        } else if (VERSION.SDK_INT >= 21) {
            this.mImpl = new MediaBrowserImplApi21(context, componentName, connectionCallback, bundle);
        } else {
            this.mImpl = new MediaBrowserImplBase(context, componentName, connectionCallback, bundle);
        }
    }

    public final void connect() {
        this.mImpl.connect();
    }

    public final void disconnect() {
        this.mImpl.disconnect();
    }

    public final boolean isConnected() {
        return this.mImpl.isConnected();
    }

    public final ComponentName getServiceComponent() {
        return this.mImpl.getServiceComponent();
    }

    public final String getRoot() {
        return this.mImpl.getRoot();
    }

    public final Bundle getExtras() {
        return this.mImpl.getExtras();
    }

    public final Token getSessionToken() {
        return this.mImpl.getSessionToken();
    }

    public final void subscribe(String str, SubscriptionCallback subscriptionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        } else if (subscriptionCallback == null) {
            throw new IllegalArgumentException("callback is null");
        } else {
            this.mImpl.subscribe(str, null, subscriptionCallback);
        }
    }

    public final void subscribe(String str, Bundle bundle, SubscriptionCallback subscriptionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        } else if (subscriptionCallback == null) {
            throw new IllegalArgumentException("callback is null");
        } else if (bundle == null) {
            throw new IllegalArgumentException("options are null");
        } else {
            this.mImpl.subscribe(str, bundle, subscriptionCallback);
        }
    }

    public final void unsubscribe(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        this.mImpl.unsubscribe(str, null);
    }

    public final void unsubscribe(String str, SubscriptionCallback subscriptionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        } else if (subscriptionCallback == null) {
            throw new IllegalArgumentException("callback is null");
        } else {
            this.mImpl.unsubscribe(str, subscriptionCallback);
        }
    }

    public final void getItem(String str, ItemCallback itemCallback) {
        this.mImpl.getItem(str, itemCallback);
    }

    public final void search(String str, Bundle bundle, SearchCallback searchCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("query cannot be empty");
        } else if (searchCallback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        } else {
            this.mImpl.search(str, bundle, searchCallback);
        }
    }

    public final void sendCustomAction(String str, Bundle bundle, CustomActionCallback customActionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("action cannot be empty");
        }
        this.mImpl.sendCustomAction(str, bundle, customActionCallback);
    }
}
