package com.crashlytics.android.beta;

import android.content.Context;
import com.android.databinding.library.C0291R;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStore;

interface UpdatesController {
    void initialize$c689b02(Context context, Beta beta, IdManager idManager, C0291R c0291r, BuildProperties buildProperties, PreferenceStore preferenceStore, CurrentTimeProvider currentTimeProvider, HttpRequestFactory httpRequestFactory);
}
