package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.persistence.FileStore;

final class AnswersFilesManagerProvider {
    final Context context;
    final FileStore fileStore;

    public AnswersFilesManagerProvider(Context context, FileStore fileStore) {
        this.context = context;
        this.fileStore = fileStore;
    }
}
