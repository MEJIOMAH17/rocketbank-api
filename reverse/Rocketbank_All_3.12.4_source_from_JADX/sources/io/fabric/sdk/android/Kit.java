package io.fabric.sdk.android;

import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.DependsOn;
import io.fabric.sdk.android.services.concurrency.Task;
import java.io.File;
import java.util.Collection;

public abstract class Kit<Result> implements Comparable<Kit> {
    Context context;
    final DependsOn dependsOnAnnotation = ((DependsOn) getClass().getAnnotation(DependsOn.class));
    Fabric fabric;
    IdManager idManager;
    InitializationCallback<Result> initializationCallback;
    InitializationTask<Result> initializationTask = new InitializationTask(this);

    protected abstract Result doInBackground();

    public abstract String getIdentifier();

    public abstract String getVersion();

    protected boolean onPreExecute() {
        return true;
    }

    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        Kit kit = (Kit) obj;
        int i = 1;
        if (containsAnnotatedDependency(kit)) {
            return 1;
        }
        if (kit.containsAnnotatedDependency(this)) {
            return -1;
        }
        if ((this.dependsOnAnnotation != null ? 1 : 0) != 0) {
            if ((kit.dependsOnAnnotation != null ? 1 : 0) == 0) {
                return 1;
            }
        }
        if ((this.dependsOnAnnotation != null ? 1 : 0) == 0) {
            if (kit.dependsOnAnnotation == null) {
                i = 0;
            }
            if (i != 0) {
                return -1;
            }
        }
        return 0;
    }

    final void injectParameters(Context context, Fabric fabric, InitializationCallback<Result> initializationCallback, IdManager idManager) {
        this.fabric = fabric;
        String identifier = getIdentifier();
        StringBuilder stringBuilder = new StringBuilder(".Fabric");
        stringBuilder.append(File.separator);
        stringBuilder.append(getIdentifier());
        this.context = new FabricContext(context, identifier, stringBuilder.toString());
        this.initializationCallback = initializationCallback;
        this.idManager = idManager;
    }

    protected final IdManager getIdManager() {
        return this.idManager;
    }

    public final Context getContext() {
        return this.context;
    }

    public final Fabric getFabric() {
        return this.fabric;
    }

    protected final Collection<Task> getDependencies() {
        return this.initializationTask.getDependencies();
    }

    private boolean containsAnnotatedDependency(Kit kit) {
        if (this.dependsOnAnnotation != null) {
            for (Class isAssignableFrom : this.dependsOnAnnotation.value()) {
                if (isAssignableFrom.isAssignableFrom(kit.getClass())) {
                    return true;
                }
            }
        }
        return false;
    }
}
