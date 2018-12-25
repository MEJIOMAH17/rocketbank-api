package io.fabric.sdk.android;

import io.fabric.sdk.android.services.common.TimingMetric;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.PriorityAsyncTask;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;

final class InitializationTask<Result> extends PriorityAsyncTask<Void, Void, Result> {
    final Kit<Result> kit;

    public InitializationTask(Kit<Result> kit) {
        this.kit = kit;
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        TimingMetric createAndStartTimingMetric = createAndStartTimingMetric("onPreExecute");
        try {
            boolean onPreExecute = this.kit.onPreExecute();
            createAndStartTimingMetric.stopMeasuring();
            if (!onPreExecute) {
                cancel$138603();
            }
        } catch (UnmetDependencyException e) {
            throw e;
        } catch (Throwable e2) {
            Fabric.getLogger().mo771e("Fabric", "Failure onPreExecute()", e2);
            createAndStartTimingMetric.stopMeasuring();
            cancel$138603();
        } catch (Throwable th) {
            createAndStartTimingMetric.stopMeasuring();
            cancel$138603();
        }
    }

    protected final void onPostExecute$5d527811() {
        this.kit.initializationCallback.success$5d527811();
    }

    protected final void onCancelled$5d527811() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.kit.getIdentifier());
        stringBuilder.append(" Initialization was cancelled");
        this.kit.initializationCallback.failure(new InitializationException(stringBuilder.toString()));
    }

    public final Priority getPriority() {
        return Priority.HIGH;
    }

    private TimingMetric createAndStartTimingMetric(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.kit.getIdentifier());
        stringBuilder.append(".");
        stringBuilder.append(str);
        TimingMetric timingMetric = new TimingMetric(stringBuilder.toString(), "KitInitialization");
        timingMetric.startMeasuring();
        return timingMetric;
    }

    protected final /* bridge */ /* synthetic */ Object doInBackground$42af7916() {
        TimingMetric createAndStartTimingMetric = createAndStartTimingMetric("doInBackground");
        Object doInBackground = !isCancelled() ? this.kit.doInBackground() : null;
        createAndStartTimingMetric.stopMeasuring();
        return doInBackground;
    }
}
