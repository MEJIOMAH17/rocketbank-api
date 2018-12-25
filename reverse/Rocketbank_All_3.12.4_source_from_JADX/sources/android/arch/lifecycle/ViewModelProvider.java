package android.arch.lifecycle;

public final class ViewModelProvider {
    private final Factory mFactory;
    private final ViewModelStore mViewModelStore;

    public interface Factory {
        <T extends ViewModel> T create(Class<T> cls);
    }

    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory) {
        this.mFactory = factory;
        this.mViewModelStore = viewModelStore;
    }

    public final <T extends ViewModel> T get(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        canonicalName = "android.arch.lifecycle.ViewModelProvider.DefaultKey:".concat(String.valueOf(canonicalName));
        T t = this.mViewModelStore.get(canonicalName);
        if (cls.isInstance(t)) {
            return t;
        }
        cls = this.mFactory.create(cls);
        this.mViewModelStore.put(canonicalName, cls);
        return cls;
    }
}
