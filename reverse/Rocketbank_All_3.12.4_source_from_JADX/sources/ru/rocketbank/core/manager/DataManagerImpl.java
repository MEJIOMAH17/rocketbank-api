package ru.rocketbank.core.manager;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import de.greenrobot.event.EventBus;
import java.io.File;
import java.util.List;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.network.api.ProvidersApi;
import ru.rocketbank.core.network.model.ProvidersResponse;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.schedulers.Schedulers;

public abstract class DataManagerImpl {
    private File contactsFile;
    private ContentResolver contentResolver;
    private Context context = BaseRocketApplication.getContext();
    private EventBus eventBus = EventBus.getDefault();
    public boolean isResetCodeToken = false;
    private List<Provider> providers;
    private ProvidersApi providersApi;
    private File providersFile;
    private int providersTime;
    private SharedPreferences sharedPreferences;

    /* renamed from: ru.rocketbank.core.manager.DataManagerImpl$3 */
    class C14253 implements Func1<File, ProvidersResponse> {
        C14253() {
        }

        public final /* bridge */ /* synthetic */ Object call(Object obj) {
            return (ProvidersResponse) DataManagerImpl.read(DataManagerImpl.this.providersFile, ProvidersResponse.class);
        }
    }

    /* renamed from: ru.rocketbank.core.manager.DataManagerImpl$1 */
    class C14621 implements Action1<ProvidersResponse> {
        C14621() {
        }

        public final /* bridge */ /* synthetic */ void call(Object obj) {
            ProvidersResponse providersResponse = (ProvidersResponse) obj;
            if (providersResponse == null) {
                DataManagerImpl.access$000(DataManagerImpl.this, 0);
                DataManagerImpl.this.loadProviders(0);
                return;
            }
            DataManagerImpl.this.eventBus.post(providersResponse);
        }
    }

    /* renamed from: ru.rocketbank.core.manager.DataManagerImpl$2 */
    class C14632 implements Action1<Throwable> {
        C14632() {
        }

        public final /* bridge */ /* synthetic */ void call(Object obj) {
            Log.e("loadProviders", "loadProviders failed", (Throwable) obj);
        }
    }

    /* renamed from: ru.rocketbank.core.manager.DataManagerImpl$4 */
    class C14644 implements Action1<ProvidersResponse> {
        C14644() {
        }

        public final /* bridge */ /* synthetic */ void call(Object obj) {
            DataManagerImpl.this.eventBus.post((ProvidersResponse) obj);
        }
    }

    /* renamed from: ru.rocketbank.core.manager.DataManagerImpl$5 */
    class C14655 implements Action1<Throwable> {
        C14655() {
        }

        public final /* bridge */ /* synthetic */ void call(Object obj) {
            Log.e("loadProviders", "loadProviders failed", (Throwable) obj);
        }
    }

    /* renamed from: ru.rocketbank.core.manager.DataManagerImpl$6 */
    class C14666 implements Action1<ProvidersResponse> {
        C14666() {
        }

        public final /* bridge */ /* synthetic */ void call(Object obj) {
            DataManagerImpl.write(DataManagerImpl.this.providersFile, (ProvidersResponse) obj);
        }
    }

    protected DataManagerImpl(ProvidersApi providersApi) {
        this.providersApi = providersApi;
        this.eventBus.register(this);
        providersApi = this.context.getPackageName();
        File filesDir = this.context.getFilesDir();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(providersApi);
        stringBuilder.append("_contacts");
        this.contactsFile = new File(filesDir, stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(providersApi);
        stringBuilder.append("_providers192");
        this.providersFile = new File(filesDir, stringBuilder.toString());
        this.contentResolver = this.context.getContentResolver();
        this.sharedPreferences = this.context.getSharedPreferences(providersApi, 0);
    }

    public final void update(int i) {
        Log.v("DataManager", "update ".concat(String.valueOf(i)));
        if (i != this.providersTime) {
            loadProviders(i);
        }
    }

    public final void loadProviders() {
        Log.v("DataManager", "loadProviders");
        Observable.just(this.providersFile).subscribeOn(Schedulers.io()).map(new C14253()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C14621(), new C14632());
    }

    private void loadProviders(final int i) {
        Log.v("DataManager", "loadProviders with tine".concat(String.valueOf(i)));
        this.providersApi.providersAll().observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).doOnNext(new Action1<ProvidersResponse>() {
            public final /* bridge */ /* synthetic */ void call(Object obj) {
                DataManagerImpl.access$000(DataManagerImpl.this, i);
            }
        }).doOnNext(new C14666()).subscribe(new C14644(), new C14655());
    }

    public void onEvent(ProvidersResponse providersResponse) {
        this.providers = providersResponse.getProviders();
    }

    public final List<Provider> getProviders() {
        return this.providers;
    }

    public final Provider getProvider(long j) {
        if (this.providers == null) {
            return null;
        }
        for (Provider provider : this.providers) {
            if (((long) provider.getId()) == j) {
                return provider;
            }
        }
        return null;
    }

    private static <MODEL> MODEL read(java.io.File r2, java.lang.Class<? extends MODEL> r3) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = 0;
        r1 = new java.io.FileReader;	 Catch:{ Exception -> 0x000b }
        r1.<init>(r2);	 Catch:{ Exception -> 0x000b }
        r2 = r0.fromJson(r1, r3);	 Catch:{ Exception -> 0x000b }
        return r2;
    L_0x000b:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.DataManagerImpl.read(java.io.File, java.lang.Class):MODEL");
    }

    private static boolean write(java.io.File r1, java.lang.Object r2) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = new java.io.FileWriter;	 Catch:{ Exception -> 0x0012 }
        r0.<init>(r1);	 Catch:{ Exception -> 0x0012 }
        r1 = 0;	 Catch:{ Exception -> 0x0012 }
        r1 = r1.toJson(r2);	 Catch:{ Exception -> 0x0012 }
        r0.write(r1);	 Catch:{ Exception -> 0x0012 }
        r0.close();	 Catch:{ Exception -> 0x0012 }
        r1 = 1;
        return r1;
    L_0x0012:
        r1 = 0;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.DataManagerImpl.write(java.io.File, java.lang.Object):boolean");
    }

    static /* synthetic */ void access$000(DataManagerImpl dataManagerImpl, int i) {
        dataManagerImpl.providersTime = i;
        dataManagerImpl.sharedPreferences.edit().putInt("providers_time_87", i).apply();
    }
}
