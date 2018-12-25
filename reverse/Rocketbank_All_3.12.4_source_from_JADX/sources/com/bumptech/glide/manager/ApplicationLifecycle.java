package com.bumptech.glide.manager;

final class ApplicationLifecycle implements Lifecycle {
    ApplicationLifecycle() {
    }

    public final void addListener(LifecycleListener lifecycleListener) {
        lifecycleListener.onStart();
    }
}
