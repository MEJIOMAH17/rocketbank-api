package io.fabric.sdk.android;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.cardview.C0943R.color;
import io.fabric.sdk.android.ActivityLifecycleManager.Callbacks;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.DependsOn;
import io.fabric.sdk.android.services.concurrency.PriorityThreadPoolExecutor;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

public class Fabric {
    static final Logger DEFAULT_LOGGER = new color();
    static volatile Fabric singleton;
    private WeakReference<Activity> activity;
    private ActivityLifecycleManager activityLifecycleManager;
    private final Context context;
    final boolean debuggable = false;
    private final ExecutorService executorService;
    private final IdManager idManager;
    private final InitializationCallback<Fabric> initializationCallback;
    private AtomicBoolean initialized;
    private final InitializationCallback<?> kitInitializationCallback;
    private final Map<Class<? extends Kit>, Kit> kits;
    final Logger logger;
    private final Handler mainHandler;

    public static class Builder {
        private String appIdentifier;
        private final Context context;
        private Handler handler;
        private InitializationCallback<Fabric> initializationCallback;
        private Kit[] kits;
        private Logger logger;
        private PriorityThreadPoolExecutor threadPoolExecutor;

        public Builder(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.context = context;
        }

        public final Builder kits(Kit... kitArr) {
            if (this.kits != null) {
                throw new IllegalStateException("Kits already set.");
            }
            this.kits = kitArr;
            return this;
        }

        public final Fabric build() {
            HashMap hashMap;
            if (this.threadPoolExecutor == null) {
                this.threadPoolExecutor = PriorityThreadPoolExecutor.create();
            }
            if (this.handler == null) {
                this.handler = new Handler(Looper.getMainLooper());
            }
            if (this.logger == null) {
                this.logger = new color();
            }
            if (this.appIdentifier == null) {
                this.appIdentifier = this.context.getPackageName();
            }
            if (this.initializationCallback == null) {
                this.initializationCallback = InitializationCallback.EMPTY;
            }
            if (this.kits == null) {
                hashMap = new HashMap();
            } else {
                hashMap = Fabric.access$000(Arrays.asList(this.kits));
            }
            HashMap hashMap2 = hashMap;
            Context applicationContext = this.context.getApplicationContext();
            return new Fabric(applicationContext, hashMap2, this.threadPoolExecutor, this.handler, this.logger, this.initializationCallback, new IdManager(applicationContext, this.appIdentifier, null, hashMap2.values()), Fabric.access$100(this.context));
        }
    }

    /* renamed from: io.fabric.sdk.android.Fabric$1 */
    class C12761 extends Callbacks {
        C12761() {
        }

        public final void onActivityCreated$9bb446d(Activity activity) {
            Fabric.this.setCurrentActivity(activity);
        }

        public final void onActivityStarted(Activity activity) {
            Fabric.this.setCurrentActivity(activity);
        }

        public final void onActivityResumed(Activity activity) {
            Fabric.this.setCurrentActivity(activity);
        }
    }

    Fabric(Context context, Map<Class<? extends Kit>, Kit> map, PriorityThreadPoolExecutor priorityThreadPoolExecutor, Handler handler, Logger logger, InitializationCallback initializationCallback, IdManager idManager, Activity activity) {
        this.context = context;
        this.kits = map;
        this.executorService = priorityThreadPoolExecutor;
        this.mainHandler = handler;
        this.logger = logger;
        this.initializationCallback = initializationCallback;
        this.initialized = new AtomicBoolean(false);
        context = map.size();
        this.kitInitializationCallback = new InitializationCallback() {
            final CountDownLatch kitInitializedLatch = new CountDownLatch(context);

            public final void success$5d527811() {
                this.kitInitializedLatch.countDown();
                if (this.kitInitializedLatch.getCount() == 0) {
                    Fabric.this.initialized.set(true);
                    Fabric.this.initializationCallback.success$5d527811();
                }
            }

            public final void failure(Exception exception) {
                Fabric.this.initializationCallback.failure(exception);
            }
        };
        this.idManager = idManager;
        this.activity = new WeakReference(activity);
    }

    public static Fabric with(Context context, Kit... kitArr) {
        if (singleton == null) {
            synchronized (Fabric.class) {
                if (singleton == null) {
                    context = new Builder(context).kits(kitArr).build();
                    singleton = context;
                    context.activityLifecycleManager = new ActivityLifecycleManager(context.context);
                    context.activityLifecycleManager.registerCallbacks(new C12761());
                    kitArr = context.context;
                    Future submit = context.executorService.submit(new FabricKitsFinder(kitArr.getPackageCodePath()));
                    Collection values = context.kits.values();
                    Kit onboarding = new Onboarding(submit, values);
                    List<Kit> arrayList = new ArrayList(values);
                    Collections.sort(arrayList);
                    onboarding.injectParameters(kitArr, context, InitializationCallback.EMPTY, context.idManager);
                    for (Kit injectParameters : arrayList) {
                        injectParameters.injectParameters(kitArr, context, context.kitInitializationCallback, context.idManager);
                    }
                    onboarding.initializationTask.executeOnExecutor(onboarding.fabric.executorService, null);
                    if (singleton == null) {
                        kitArr = DEFAULT_LOGGER;
                    } else {
                        kitArr = singleton.logger;
                    }
                    kitArr = kitArr.isLoggable$505cff18$134632() != null ? new StringBuilder("Initializing io.fabric.sdk.android:fabric [Version: 1.4.2.22], with the following kits:\n") : null;
                    for (Kit kit : arrayList) {
                        kit.initializationTask.addDependency(onboarding.initializationTask);
                        addAnnotatedDependencies(context.kits, kit);
                        kit.initializationTask.executeOnExecutor(kit.fabric.executorService, null);
                        if (kitArr != null) {
                            kitArr.append(kit.getIdentifier());
                            kitArr.append(" [Version: ");
                            kitArr.append(kit.getVersion());
                            kitArr.append("]\n");
                        }
                    }
                    if (kitArr != null) {
                        if (singleton == null) {
                            context = DEFAULT_LOGGER;
                        } else {
                            context = singleton.logger;
                        }
                        context.mo768d("Fabric", kitArr.toString());
                    }
                }
            }
        }
        return singleton;
    }

    public final Fabric setCurrentActivity(Activity activity) {
        this.activity = new WeakReference(activity);
        return this;
    }

    public final Activity getCurrentActivity() {
        return this.activity != null ? (Activity) this.activity.get() : null;
    }

    private static void addAnnotatedDependencies(Map<Class<? extends Kit>, Kit> map, Kit kit) {
        DependsOn dependsOn = kit.dependsOnAnnotation;
        if (dependsOn != null) {
            for (Class cls : dependsOn.value()) {
                if (cls.isInterface()) {
                    for (Kit kit2 : map.values()) {
                        if (cls.isAssignableFrom(kit2.getClass())) {
                            kit.initializationTask.addDependency(kit2.initializationTask);
                        }
                    }
                } else if (((Kit) map.get(cls)) == null) {
                    throw new UnmetDependencyException("Referenced Kit was null, does the kit exist?");
                } else {
                    kit.initializationTask.addDependency(((Kit) map.get(cls)).initializationTask);
                }
            }
        }
    }

    public final ActivityLifecycleManager getActivityLifecycleManager() {
        return this.activityLifecycleManager;
    }

    public final ExecutorService getExecutorService() {
        return this.executorService;
    }

    public static Logger getLogger() {
        if (singleton == null) {
            return DEFAULT_LOGGER;
        }
        return singleton.logger;
    }

    public static boolean isDebuggable() {
        return singleton == null ? false : false;
    }

    public static boolean isInitialized() {
        return singleton != null && singleton.initialized.get();
    }

    private static void addToKitMap(Map<Class<? extends Kit>, Kit> map, Collection<? extends Kit> collection) {
        for (Kit kit : collection) {
            map.put(kit.getClass(), kit);
            if (kit instanceof KitGroup) {
                addToKitMap(map, ((KitGroup) kit).getKits());
            }
        }
    }

    public static <T extends Kit> T getKit(Class<T> cls) {
        if (singleton != null) {
            return (Kit) singleton.kits.get(cls);
        }
        throw new IllegalStateException("Must Initialize Fabric before using singleton()");
    }

    static /* synthetic */ Map access$000(Collection collection) {
        Map hashMap = new HashMap(collection.size());
        addToKitMap(hashMap, collection);
        return hashMap;
    }

    static /* synthetic */ Activity access$100(Context context) {
        return context instanceof Activity ? (Activity) context : null;
    }
}
