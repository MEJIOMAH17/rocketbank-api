package com.crashlytics.android.core;

import android.os.Process;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

final class CLSUUID {
    private static String _clsId;
    private static final AtomicLong _sequenceNumber = new AtomicLong(0);

    public CLSUUID(IdManager idManager) {
        r0 = new byte[10];
        long time = new Date().getTime();
        long j = time / 1000;
        time %= 1000;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        byte[] array = allocate.array();
        r0[0] = array[0];
        r0[1] = array[1];
        r0[2] = array[2];
        r0[3] = array[3];
        allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) ((int) time));
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        byte[] array2 = allocate.array();
        r0[4] = array2[0];
        r0[5] = array2[1];
        time = _sequenceNumber.incrementAndGet();
        allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) ((int) time));
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        array2 = allocate.array();
        r0[6] = array2[0];
        r0[7] = array2[1];
        time = (long) Integer.valueOf(Process.myPid()).shortValue();
        allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) ((int) time));
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        array2 = allocate.array();
        r0[8] = array2[0];
        r0[9] = array2[1];
        idManager = CommonUtils.sha1(idManager.getAppInstallIdentifier());
        String hexify = CommonUtils.hexify(r0);
        _clsId = String.format(Locale.US, "%s-%s-%s-%s", new Object[]{hexify.substring(0, 12), hexify.substring(12, 16), hexify.subSequence(16, 20), idManager.substring(0, 12)}).toUpperCase(Locale.US);
    }

    public final String toString() {
        return _clsId;
    }
}
