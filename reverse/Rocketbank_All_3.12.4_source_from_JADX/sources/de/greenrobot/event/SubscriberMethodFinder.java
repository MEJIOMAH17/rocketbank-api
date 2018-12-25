package de.greenrobot.event;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.text.Typography;

final class SubscriberMethodFinder {
    private static final Map<String, List<SubscriberMethod>> methodCache = new HashMap();
    private final Map<Class<?>, Class<?>> skipMethodVerificationForClasses = new ConcurrentHashMap();

    SubscriberMethodFinder() {
    }

    final List<SubscriberMethod> findSubscriberMethods(Class<?> cls) {
        String name = cls.getName();
        synchronized (methodCache) {
            List<SubscriberMethod> list = (List) methodCache.get(name);
        }
        if (list != null) {
            return list;
        }
        List<SubscriberMethod> arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        StringBuilder stringBuilder = new StringBuilder();
        Class cls2 = cls;
        while (cls2 != null) {
            String name2 = cls2.getName();
            if (name2.startsWith("java.") || name2.startsWith("javax.") || name2.startsWith("android.")) {
                break;
            }
            try {
                filterSubscriberMethods(arrayList, hashMap, stringBuilder, cls2.getDeclaredMethods());
                cls2 = cls2.getSuperclass();
            } catch (Throwable th) {
                th.printStackTrace();
                Method[] methods = cls.getMethods();
                arrayList.clear();
                hashMap.clear();
                filterSubscriberMethods(arrayList, hashMap, stringBuilder, methods);
            }
        }
        if (arrayList.isEmpty()) {
            StringBuilder stringBuilder2 = new StringBuilder("Subscriber ");
            stringBuilder2.append(cls);
            stringBuilder2.append(" has no public methods called onEvent");
            throw new EventBusException(stringBuilder2.toString());
        }
        synchronized (methodCache) {
            methodCache.put(name, arrayList);
        }
        return arrayList;
    }

    private void filterSubscriberMethods(List<SubscriberMethod> list, HashMap<String, Class> hashMap, StringBuilder stringBuilder, Method[] methodArr) {
        for (Method method : methodArr) {
            String name = method.getName();
            if (name.startsWith("onEvent")) {
                int modifiers = method.getModifiers();
                Class declaringClass = method.getDeclaringClass();
                if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                    Class[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == 1) {
                        ThreadMode threadMode;
                        String substring = name.substring(7);
                        if (substring.length() == 0) {
                            threadMode = ThreadMode.PostThread;
                        } else if (substring.equals("MainThread")) {
                            threadMode = ThreadMode.MainThread;
                        } else if (substring.equals("BackgroundThread")) {
                            threadMode = ThreadMode.BackgroundThread;
                        } else if (substring.equals("Async")) {
                            threadMode = ThreadMode.Async;
                        } else if (this.skipMethodVerificationForClasses.containsKey(declaringClass)) {
                            threadMode = null;
                        } else {
                            throw new EventBusException("Illegal onEvent method, check for typos: ".concat(String.valueOf(method)));
                        }
                        if (threadMode != null) {
                            Class cls = parameterTypes[0];
                            stringBuilder.setLength(0);
                            stringBuilder.append(name);
                            stringBuilder.append(Typography.greater);
                            stringBuilder.append(cls.getName());
                            name = stringBuilder.toString();
                            Class cls2 = (Class) hashMap.put(name, declaringClass);
                            if (cls2 != null) {
                                if (!cls2.isAssignableFrom(declaringClass)) {
                                    hashMap.put(name, cls2);
                                }
                            }
                            list.add(new SubscriberMethod(method, threadMode, cls));
                        }
                    } else {
                        continue;
                    }
                } else if (!this.skipMethodVerificationForClasses.containsKey(declaringClass)) {
                    String str = EventBus.TAG;
                    StringBuilder stringBuilder2 = new StringBuilder("Skipping method (not public, static or abstract): ");
                    stringBuilder2.append(declaringClass);
                    stringBuilder2.append(".");
                    stringBuilder2.append(name);
                    Log.d(str, stringBuilder2.toString());
                }
            }
        }
    }
}
