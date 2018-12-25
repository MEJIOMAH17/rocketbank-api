package de.greenrobot.event;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

public class EventBus {
    private static final EventBusBuilder DEFAULT_BUILDER = new EventBusBuilder();
    public static String TAG = "Event";
    static volatile EventBus defaultInstance;
    private static final Map<Class<?>, List<Class<?>>> eventTypesCache = new HashMap();
    private final AsyncPoster asyncPoster;
    private final BackgroundPoster backgroundPoster;
    private final ThreadLocal<PostingThreadState> currentPostingThreadState;
    private final boolean eventInheritance;
    private final ExecutorService executorService;
    private final boolean logNoSubscriberMessages;
    private final boolean logSubscriberExceptions;
    private final HandlerPoster mainThreadPoster;
    private final boolean sendNoSubscriberEvent;
    private final boolean sendSubscriberExceptionEvent;
    private final Map<Class<?>, Object> stickyEvents;
    private final SubscriberMethodFinder subscriberMethodFinder;
    private final Map<Class<?>, CopyOnWriteArrayList<Subscription>> subscriptionsByEventType;
    private final boolean throwSubscriberException;
    private final Map<Object, List<Class<?>>> typesBySubscriber;

    /* renamed from: de.greenrobot.event.EventBus$1 */
    class C07251 extends ThreadLocal<PostingThreadState> {
        C07251() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new PostingThreadState();
        }
    }

    static final class PostingThreadState {
        boolean canceled;
        Object event;
        final List<Object> eventQueue = new ArrayList();
        boolean isMainThread;
        boolean isPosting;
        Subscription subscription;

        PostingThreadState() {
        }
    }

    public static EventBus getDefault() {
        if (defaultInstance == null) {
            synchronized (EventBus.class) {
                if (defaultInstance == null) {
                    defaultInstance = new EventBus();
                }
            }
        }
        return defaultInstance;
    }

    public EventBus() {
        this(DEFAULT_BUILDER);
    }

    private EventBus(EventBusBuilder eventBusBuilder) {
        this.currentPostingThreadState = new C07251();
        this.subscriptionsByEventType = new HashMap();
        this.typesBySubscriber = new HashMap();
        this.stickyEvents = new ConcurrentHashMap();
        this.mainThreadPoster = new HandlerPoster(this, Looper.getMainLooper());
        this.backgroundPoster = new BackgroundPoster(this);
        this.asyncPoster = new AsyncPoster(this);
        this.subscriberMethodFinder = new SubscriberMethodFinder();
        this.logSubscriberExceptions = eventBusBuilder.logSubscriberExceptions;
        this.logNoSubscriberMessages = eventBusBuilder.logNoSubscriberMessages;
        this.sendSubscriberExceptionEvent = eventBusBuilder.sendSubscriberExceptionEvent;
        this.sendNoSubscriberEvent = eventBusBuilder.sendNoSubscriberEvent;
        this.throwSubscriberException = false;
        this.eventInheritance = eventBusBuilder.eventInheritance;
        this.executorService = eventBusBuilder.executorService;
    }

    public final void register(Object obj) {
        register$52aad280(obj, false);
    }

    public final void registerSticky(Object obj) {
        register$52aad280(obj, true);
    }

    private synchronized void register$52aad280(Object obj, boolean z) {
        for (SubscriberMethod subscriberMethod : this.subscriberMethodFinder.findSubscriberMethods(obj.getClass())) {
            Class cls = subscriberMethod.eventType;
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.subscriptionsByEventType.get(cls);
            Subscription subscription = new Subscription(obj, subscriberMethod);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList();
                this.subscriptionsByEventType.put(cls, copyOnWriteArrayList);
            } else if (copyOnWriteArrayList.contains(subscription)) {
                StringBuilder stringBuilder = new StringBuilder("Subscriber ");
                stringBuilder.append(obj.getClass());
                stringBuilder.append(" already registered to event ");
                stringBuilder.append(cls);
                throw new EventBusException(stringBuilder.toString());
            }
            int size = copyOnWriteArrayList.size();
            int i = 0;
            while (i <= size) {
                if (i == size) {
                    copyOnWriteArrayList.add(i, subscription);
                    break;
                } else {
                    copyOnWriteArrayList.get(i);
                    i++;
                }
            }
            List list = (List) this.typesBySubscriber.get(obj);
            if (list == null) {
                list = new ArrayList();
                this.typesBySubscriber.put(obj, list);
            }
            list.add(cls);
            if (z) {
                boolean z2 = true;
                if (this.eventInheritance) {
                    for (Entry entry : this.stickyEvents.entrySet()) {
                        if (cls.isAssignableFrom((Class) entry.getKey())) {
                            Object value = entry.getValue();
                            if (value != null) {
                                postToSubscription(subscription, value, Looper.getMainLooper() == Looper.myLooper());
                            }
                        }
                    }
                } else {
                    Object obj2 = this.stickyEvents.get(cls);
                    if (obj2 != null) {
                        if (Looper.getMainLooper() != Looper.myLooper()) {
                            z2 = false;
                        }
                        postToSubscription(subscription, obj2, z2);
                    }
                }
            }
        }
    }

    public final synchronized boolean isRegistered(Object obj) {
        return this.typesBySubscriber.containsKey(obj);
    }

    public final synchronized void unregister(Object obj) {
        List<Class> list = (List) this.typesBySubscriber.get(obj);
        if (list != null) {
            for (Class cls : list) {
                List list2 = (List) this.subscriptionsByEventType.get(cls);
                if (list2 != null) {
                    int size = list2.size();
                    int i = 0;
                    while (i < size) {
                        Subscription subscription = (Subscription) list2.get(i);
                        if (subscription.subscriber == obj) {
                            subscription.active = false;
                            list2.remove(i);
                            i--;
                            size--;
                        }
                        i++;
                    }
                }
            }
            this.typesBySubscriber.remove(obj);
            return;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("Subscriber to unregister was not registered before: ");
        stringBuilder.append(obj.getClass());
        Log.w(str, stringBuilder.toString());
    }

    public final void post(Object obj) {
        PostingThreadState postingThreadState = (PostingThreadState) this.currentPostingThreadState.get();
        List list = postingThreadState.eventQueue;
        list.add(obj);
        if (postingThreadState.isPosting == null) {
            postingThreadState.isMainThread = Looper.getMainLooper() == Looper.myLooper() ? 1 : null;
            postingThreadState.isPosting = true;
            while (list.isEmpty() == null) {
                try {
                    int i;
                    obj = list.remove(0);
                    Class cls = obj.getClass();
                    if (this.eventInheritance) {
                        List lookupAllEventTypes = lookupAllEventTypes(cls);
                        int i2 = 0;
                        i = i2;
                        while (i2 < lookupAllEventTypes.size()) {
                            i |= postSingleEventForEventType(obj, postingThreadState, (Class) lookupAllEventTypes.get(i2));
                            i2++;
                        }
                    } else {
                        i = postSingleEventForEventType(obj, postingThreadState, cls);
                    }
                    if (i == 0) {
                        if (this.logNoSubscriberMessages) {
                            Log.d(TAG, "No subscribers registered for event ".concat(String.valueOf(cls)));
                        }
                        if (!(!this.sendNoSubscriberEvent || cls == NoSubscriberEvent.class || cls == SubscriberExceptionEvent.class)) {
                            post(new NoSubscriberEvent(this, obj));
                        }
                    }
                } finally {
                    postingThreadState.isPosting = false;
                    postingThreadState.isMainThread = false;
                }
            }
        }
    }

    public final void postSticky(Object obj) {
        synchronized (this.stickyEvents) {
            this.stickyEvents.put(obj.getClass(), obj);
        }
        post(obj);
    }

    public final <T> T removeStickyEvent(Class<T> cls) {
        synchronized (this.stickyEvents) {
            cls = cls.cast(this.stickyEvents.remove(cls));
        }
        return cls;
    }

    public final boolean removeStickyEvent(Object obj) {
        synchronized (this.stickyEvents) {
            Class cls = obj.getClass();
            if (obj.equals(this.stickyEvents.get(cls)) != null) {
                this.stickyEvents.remove(cls);
                return true;
            }
            return null;
        }
    }

    private boolean postSingleEventForEventType(Object obj, PostingThreadState postingThreadState, Class<?> cls) {
        synchronized (this) {
            try {
                CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.subscriptionsByEventType.get(cls);
            } catch (Object obj2) {
                while (true) {
                    throw obj2;
                }
            }
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        cls = copyOnWriteArrayList.iterator();
        while (cls.hasNext()) {
            Subscription subscription = (Subscription) cls.next();
            postingThreadState.event = obj2;
            postingThreadState.subscription = subscription;
            try {
                postToSubscription(subscription, obj2, postingThreadState.isMainThread);
                postingThreadState.event = null;
                postingThreadState.subscription = null;
                postingThreadState.canceled = false;
            } catch (Object obj22) {
                postingThreadState.event = null;
                postingThreadState.subscription = null;
                postingThreadState.canceled = false;
                throw obj22;
            }
        }
        return true;
    }

    private void postToSubscription(Subscription subscription, Object obj, boolean z) {
        switch (subscription.subscriberMethod.threadMode) {
            case PostThread:
                invokeSubscriber(subscription, obj);
                return;
            case MainThread:
                if (z) {
                    invokeSubscriber(subscription, obj);
                    return;
                } else {
                    this.mainThreadPoster.enqueue(subscription, obj);
                    return;
                }
            case BackgroundThread:
                if (z) {
                    this.backgroundPoster.enqueue(subscription, obj);
                    return;
                } else {
                    invokeSubscriber(subscription, obj);
                    return;
                }
            case Async:
                this.asyncPoster.enqueue(subscription, obj);
                return;
            default:
                z = new StringBuilder("Unknown thread mode: ");
                z.append(subscription.subscriberMethod.threadMode);
                throw new IllegalStateException(z.toString());
        }
    }

    private static List<Class<?>> lookupAllEventTypes(Class<?> cls) {
        List<Class<?>> list;
        synchronized (eventTypesCache) {
            list = (List) eventTypesCache.get(cls);
            if (list == null) {
                list = new ArrayList();
                for (Class cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                    list.add(cls2);
                    addInterfaces(list, cls2.getInterfaces());
                }
                eventTypesCache.put(cls, list);
            }
        }
        return list;
    }

    private static void addInterfaces(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                addInterfaces(list, cls.getInterfaces());
            }
        }
    }

    final void invokeSubscriber(PendingPost pendingPost) {
        Object obj = pendingPost.event;
        Subscription subscription = pendingPost.subscription;
        PendingPost.releasePendingPost(pendingPost);
        if (subscription.active != null) {
            invokeSubscriber(subscription, obj);
        }
    }

    private void invokeSubscriber(Subscription subscription, Object obj) {
        try {
            subscription.subscriberMethod.method.invoke(subscription.subscriber, new Object[]{obj});
        } catch (InvocationTargetException e) {
            handleSubscriberException(subscription, obj, e.getCause());
        } catch (Subscription subscription2) {
            throw new IllegalStateException("Unexpected exception", subscription2);
        }
    }

    private void handleSubscriberException(Subscription subscription, Object obj, Throwable th) {
        String str;
        StringBuilder stringBuilder;
        if (!(obj instanceof SubscriberExceptionEvent)) {
            if (this.logSubscriberExceptions) {
                str = TAG;
                stringBuilder = new StringBuilder("Could not dispatch event: ");
                stringBuilder.append(obj.getClass());
                stringBuilder.append(" to subscribing class ");
                stringBuilder.append(subscription.subscriber.getClass());
                Log.e(str, stringBuilder.toString(), th);
            }
            if (this.sendSubscriberExceptionEvent) {
                post(new SubscriberExceptionEvent(this, th, obj, subscription.subscriber));
            }
        } else if (this.logSubscriberExceptions) {
            str = TAG;
            stringBuilder = new StringBuilder("SubscriberExceptionEvent subscriber ");
            stringBuilder.append(subscription.subscriber.getClass());
            stringBuilder.append(" threw an exception");
            Log.e(str, stringBuilder.toString(), th);
            SubscriberExceptionEvent subscriberExceptionEvent = (SubscriberExceptionEvent) obj;
            subscription = TAG;
            th = new StringBuilder("Initial event ");
            th.append(subscriberExceptionEvent.causingEvent);
            th.append(" caused exception in ");
            th.append(subscriberExceptionEvent.causingSubscriber);
            Log.e(subscription, th.toString(), subscriberExceptionEvent.throwable);
        }
    }

    final ExecutorService getExecutorService() {
        return this.executorService;
    }
}
