package ru.rocketbank.core.manager.security.storage;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import javax.crypto.Cipher;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.apache.commons.io.FileUtils;
import ru.rocketbank.core.manager.AnalyticsManager;

/* compiled from: FileTokenStorageImpl.kt */
public final class FileTokenStorageImpl implements TouchTokenStorage {
    public static final Companion Companion = new Companion();
    private static final String FILE_NAME = "jumbomode_jet.r34";
    private static final String KEY_VERSION = "KEY_VERSION";
    private static final String TAG = "FileTokenStorageImpl";
    private static final int VERSION = 1;
    private final Context context;
    private final SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this.context);
    private final File tokenFile;

    /* compiled from: FileTokenStorageImpl.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public FileTokenStorageImpl(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        File filesDir = this.context.getFilesDir();
        Intrinsics.checkExpressionValueIsNotNull(filesDir, "context.filesDir");
        this.tokenFile = new File(filesDir.getAbsolutePath(), FILE_NAME);
    }

    public final void saveToken(String str, Cipher cipher) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        Intrinsics.checkParameterIsNotNull(cipher, "cipher");
        this.tokenFile.createNewFile();
        str = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).getBytes(charset)");
        str = cipher.doFinal(str);
        this.preferences.edit().putInt(KEY_VERSION, 1).apply();
        try {
            FileUtils.writeByteArrayToFile(this.tokenFile, str);
        } catch (String str2) {
            AnalyticsManager.logException((Throwable) str2);
        }
    }

    public final String readToken(Cipher cipher) {
        Intrinsics.checkParameterIsNotNull(cipher, "cipher");
        String str = null;
        if (!this.tokenFile.exists()) {
            return null;
        }
        int i = this.preferences.getInt(KEY_VERSION, 0);
        try {
            if (this.tokenFile.exists() && i <= 0) {
                FileUtils.writeByteArrayToFile(this.tokenFile, Base64.decode(FileUtils.readFileToByteArray(this.tokenFile), 0));
                Log.v(TAG, "migration: ok");
            }
            if (i <= 0) {
                this.preferences.edit().putInt(KEY_VERSION, 1).apply();
            }
            try {
                cipher = cipher.doFinal(FileUtils.readFileToByteArray(this.tokenFile));
                Log.v(TAG, "token decode: ok");
                Intrinsics.checkExpressionValueIsNotNull(cipher, "decoded");
                str = new String(cipher, Charsets.UTF_8);
            } catch (Cipher cipher2) {
                AnalyticsManager.logException((Throwable) cipher2);
            }
            return str;
        } catch (Throwable th) {
            if (i <= 0) {
                this.preferences.edit().putInt(KEY_VERSION, 1).apply();
            }
        }
    }

    public final boolean hasValidToken() {
        return this.tokenFile.exists() && this.tokenFile.length() > 0;
    }

    public final void invalidateToken() {
        if (this.tokenFile.exists()) {
            this.tokenFile.delete();
        }
    }
}
