package rx.plugins;

import java.util.Map.Entry;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;
import rx.annotations.Experimental;

public class RxJavaPlugins {
    static final RxJavaErrorHandler DEFAULT_ERROR_HANDLER = new C17371();
    private static final RxJavaPlugins INSTANCE = new RxJavaPlugins();
    private final AtomicReference<RxJavaCompletableExecutionHook> completableExecutionHook = new AtomicReference();
    private final AtomicReference<RxJavaErrorHandler> errorHandler = new AtomicReference();
    private final AtomicReference<RxJavaObservableExecutionHook> observableExecutionHook = new AtomicReference();
    private final AtomicReference<RxJavaSchedulersHook> schedulersHook = new AtomicReference();
    private final AtomicReference<RxJavaSingleExecutionHook> singleExecutionHook = new AtomicReference();

    /* renamed from: rx.plugins.RxJavaPlugins$1 */
    static class C17371 extends RxJavaErrorHandler {
        C17371() {
        }
    }

    /* renamed from: rx.plugins.RxJavaPlugins$2 */
    class C17382 extends RxJavaCompletableExecutionHook {
        C17382() {
        }
    }

    @Deprecated
    public static RxJavaPlugins getInstance() {
        return INSTANCE;
    }

    RxJavaPlugins() {
    }

    @Experimental
    public void reset() {
        INSTANCE.errorHandler.set(null);
        INSTANCE.observableExecutionHook.set(null);
        INSTANCE.singleExecutionHook.set(null);
        INSTANCE.completableExecutionHook.set(null);
        INSTANCE.schedulersHook.set(null);
    }

    public RxJavaErrorHandler getErrorHandler() {
        if (this.errorHandler.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaErrorHandler.class, System.getProperties());
            if (pluginImplementationViaProperty == null) {
                this.errorHandler.compareAndSet(null, DEFAULT_ERROR_HANDLER);
            } else {
                this.errorHandler.compareAndSet(null, (RxJavaErrorHandler) pluginImplementationViaProperty);
            }
        }
        return (RxJavaErrorHandler) this.errorHandler.get();
    }

    public void registerErrorHandler(RxJavaErrorHandler rxJavaErrorHandler) {
        if (this.errorHandler.compareAndSet(null, rxJavaErrorHandler) == null) {
            StringBuilder stringBuilder = new StringBuilder("Another strategy was already registered: ");
            stringBuilder.append(this.errorHandler.get());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public RxJavaObservableExecutionHook getObservableExecutionHook() {
        if (this.observableExecutionHook.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaObservableExecutionHook.class, System.getProperties());
            if (pluginImplementationViaProperty == null) {
                this.observableExecutionHook.compareAndSet(null, RxJavaObservableExecutionHookDefault.getInstance());
            } else {
                this.observableExecutionHook.compareAndSet(null, (RxJavaObservableExecutionHook) pluginImplementationViaProperty);
            }
        }
        return (RxJavaObservableExecutionHook) this.observableExecutionHook.get();
    }

    public void registerObservableExecutionHook(RxJavaObservableExecutionHook rxJavaObservableExecutionHook) {
        if (this.observableExecutionHook.compareAndSet(null, rxJavaObservableExecutionHook) == null) {
            StringBuilder stringBuilder = new StringBuilder("Another strategy was already registered: ");
            stringBuilder.append(this.observableExecutionHook.get());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public RxJavaSingleExecutionHook getSingleExecutionHook() {
        if (this.singleExecutionHook.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaSingleExecutionHook.class, System.getProperties());
            if (pluginImplementationViaProperty == null) {
                this.singleExecutionHook.compareAndSet(null, RxJavaSingleExecutionHookDefault.getInstance());
            } else {
                this.singleExecutionHook.compareAndSet(null, (RxJavaSingleExecutionHook) pluginImplementationViaProperty);
            }
        }
        return (RxJavaSingleExecutionHook) this.singleExecutionHook.get();
    }

    public void registerSingleExecutionHook(RxJavaSingleExecutionHook rxJavaSingleExecutionHook) {
        if (this.singleExecutionHook.compareAndSet(null, rxJavaSingleExecutionHook) == null) {
            StringBuilder stringBuilder = new StringBuilder("Another strategy was already registered: ");
            stringBuilder.append(this.singleExecutionHook.get());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    @Experimental
    public RxJavaCompletableExecutionHook getCompletableExecutionHook() {
        if (this.completableExecutionHook.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaCompletableExecutionHook.class, System.getProperties());
            if (pluginImplementationViaProperty == null) {
                this.completableExecutionHook.compareAndSet(null, new C17382());
            } else {
                this.completableExecutionHook.compareAndSet(null, (RxJavaCompletableExecutionHook) pluginImplementationViaProperty);
            }
        }
        return (RxJavaCompletableExecutionHook) this.completableExecutionHook.get();
    }

    @Experimental
    public void registerCompletableExecutionHook(RxJavaCompletableExecutionHook rxJavaCompletableExecutionHook) {
        if (this.completableExecutionHook.compareAndSet(null, rxJavaCompletableExecutionHook) == null) {
            StringBuilder stringBuilder = new StringBuilder("Another strategy was already registered: ");
            stringBuilder.append(this.singleExecutionHook.get());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    static Object getPluginImplementationViaProperty(Class<?> cls, Properties properties) {
        StringBuilder stringBuilder;
        properties = (Properties) properties.clone();
        String simpleName = cls.getSimpleName();
        String str = "rxjava.plugin.";
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(str);
        stringBuilder2.append(simpleName);
        stringBuilder2.append(".implementation");
        String property = properties.getProperty(stringBuilder2.toString());
        if (property == null) {
            String str2 = ".class";
            String str3 = ".impl";
            for (Entry entry : properties.entrySet()) {
                String obj = entry.getKey().toString();
                if (obj.startsWith(str) && obj.endsWith(str2) && simpleName.equals(entry.getValue().toString())) {
                    property = obj.substring(0, obj.length() - str2.length()).substring(str.length());
                    StringBuilder stringBuilder3 = new StringBuilder();
                    stringBuilder3.append(str);
                    stringBuilder3.append(property);
                    stringBuilder3.append(str3);
                    str = stringBuilder3.toString();
                    property = properties.getProperty(str);
                    if (property == null) {
                        properties = new StringBuilder("Implementing class declaration for ");
                        properties.append(simpleName);
                        properties.append(" missing: ");
                        properties.append(str);
                        throw new IllegalStateException(properties.toString());
                    }
                }
            }
        }
        if (property == null) {
            return null;
        }
        try {
            return Class.forName(property).asSubclass(cls).newInstance();
        } catch (Class<?> cls2) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(simpleName);
            stringBuilder.append(" implementation is not an instance of ");
            stringBuilder.append(simpleName);
            stringBuilder.append(": ");
            stringBuilder.append(property);
            throw new IllegalStateException(stringBuilder.toString(), cls2);
        } catch (Class<?> cls22) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(simpleName);
            stringBuilder.append(" implementation class not found: ");
            stringBuilder.append(property);
            throw new IllegalStateException(stringBuilder.toString(), cls22);
        } catch (Class<?> cls222) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(simpleName);
            stringBuilder.append(" implementation not able to be instantiated: ");
            stringBuilder.append(property);
            throw new IllegalStateException(stringBuilder.toString(), cls222);
        } catch (Class<?> cls2222) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(simpleName);
            stringBuilder.append(" implementation not able to be accessed: ");
            stringBuilder.append(property);
            throw new IllegalStateException(stringBuilder.toString(), cls2222);
        }
    }

    public RxJavaSchedulersHook getSchedulersHook() {
        if (this.schedulersHook.get() == null) {
            Object pluginImplementationViaProperty = getPluginImplementationViaProperty(RxJavaSchedulersHook.class, System.getProperties());
            if (pluginImplementationViaProperty == null) {
                this.schedulersHook.compareAndSet(null, RxJavaSchedulersHook.getDefaultInstance());
            } else {
                this.schedulersHook.compareAndSet(null, (RxJavaSchedulersHook) pluginImplementationViaProperty);
            }
        }
        return (RxJavaSchedulersHook) this.schedulersHook.get();
    }

    public void registerSchedulersHook(RxJavaSchedulersHook rxJavaSchedulersHook) {
        if (this.schedulersHook.compareAndSet(null, rxJavaSchedulersHook) == null) {
            StringBuilder stringBuilder = new StringBuilder("Another strategy was already registered: ");
            stringBuilder.append(this.schedulersHook.get());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }
}
