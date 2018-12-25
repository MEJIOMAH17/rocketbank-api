package de.greenrobot.event;

import java.lang.reflect.Method;

final class SubscriberMethod {
    final Class<?> eventType;
    final Method method;
    String methodString;
    final ThreadMode threadMode;

    SubscriberMethod(Method method, ThreadMode threadMode, Class<?> cls) {
        this.method = method;
        this.threadMode = threadMode;
        this.eventType = cls;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SubscriberMethod)) {
            return null;
        }
        checkMethodString();
        SubscriberMethod subscriberMethod = (SubscriberMethod) obj;
        subscriberMethod.checkMethodString();
        return this.methodString.equals(subscriberMethod.methodString);
    }

    private synchronized void checkMethodString() {
        if (this.methodString == null) {
            StringBuilder stringBuilder = new StringBuilder(64);
            stringBuilder.append(this.method.getDeclaringClass().getName());
            stringBuilder.append('#');
            stringBuilder.append(this.method.getName());
            stringBuilder.append('(');
            stringBuilder.append(this.eventType.getName());
            this.methodString = stringBuilder.toString();
        }
    }

    public final int hashCode() {
        return this.method.hashCode();
    }
}
