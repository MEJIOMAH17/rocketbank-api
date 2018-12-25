package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.zze;
import com.google.android.gms.common.zzg;
import java.lang.reflect.Method;

public class ProviderInstaller {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    private static final zze zzbEf = zze.zzuY();
    private static Method zzbEg;
    private static final Object zztX = new Object();

    /* renamed from: com.google.android.gms.security.ProviderInstaller$1 */
    class C06301 extends AsyncTask<Void, Void, Integer> {
        final /* synthetic */ ProviderInstallListener zzbEh;
        final /* synthetic */ Context zztf;

        C06301(Context context, ProviderInstallListener providerInstallListener) {
            this.zztf = context;
            this.zzbEh = providerInstallListener;
        }

        protected final /* synthetic */ Object doInBackground(Object[] objArr) {
            return zzb((Void[]) objArr);
        }

        protected final /* synthetic */ void onPostExecute(Object obj) {
            zzg((Integer) obj);
        }

        protected final Integer zzb(Void... voidArr) {
            int i;
            try {
                ProviderInstaller.installIfNeeded(this.zztf);
                i = 0;
            } catch (GooglePlayServicesRepairableException e) {
                i = e.getConnectionStatusCode();
            } catch (GooglePlayServicesNotAvailableException e2) {
                i = e2.errorCode;
            }
            return Integer.valueOf(i);
        }

        protected final void zzg(Integer num) {
            if (num.intValue() == 0) {
                this.zzbEh.onProviderInstalled();
                return;
            }
            this.zzbEh.onProviderInstallFailed(num.intValue(), ProviderInstaller.zzbEf.zzb(this.zztf, num.intValue(), "pi"));
        }
    }

    public interface ProviderInstallListener {
        void onProviderInstallFailed(int i, Intent intent);

        void onProviderInstalled();
    }

    public static void installIfNeeded(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        zzac.zzb((Object) context, (Object) "Context must not be null");
        zzbEf.zzaE(context);
        context = zzg.getRemoteContext(context);
        if (context == null) {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new GooglePlayServicesNotAvailableException(8);
        }
        synchronized (zztX) {
            try {
                if (zzbEg == null) {
                    zzbR(context);
                }
                zzbEg.invoke(null, new Object[]{context});
            } catch (Exception e) {
                String str = "ProviderInstaller";
                String str2 = "Failed to install provider: ";
                String valueOf = String.valueOf(e.getMessage());
                Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void installIfNeededAsync(Context context, ProviderInstallListener providerInstallListener) {
        zzac.zzb((Object) context, (Object) "Context must not be null");
        zzac.zzb((Object) providerInstallListener, (Object) "Listener must not be null");
        zzac.zzdj("Must be called on the UI thread");
        new C06301(context, providerInstallListener).execute(new Void[0]);
    }

    private static void zzbR(Context context) throws ClassNotFoundException, NoSuchMethodException {
        zzbEg = context.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", new Class[]{Context.class});
    }
}
