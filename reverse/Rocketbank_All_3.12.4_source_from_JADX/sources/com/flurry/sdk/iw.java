package com.flurry.sdk;

import android.os.Build;
import android.os.Build.VERSION;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.DigestOutputStream;
import java.security.MessageDigest;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class iw {
    /* renamed from: b */
    private static final String f200b = "iw";
    /* renamed from: a */
    public byte[] f201a = null;

    public iw(String str, String str2, boolean z, boolean z2, long j, long j2, List<iy> list, Map<jm, byte[]> map, Map<String, List<String>> map2, Map<String, List<String>> map3, Map<String, Map<String, String>> map4, long j3) throws IOException {
        byte[] toByteArray;
        Throwable th;
        Closeable closeable;
        Closeable dataOutputStream;
        try {
            MessageDigest jxVar = new jx();
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStream digestOutputStream = new DigestOutputStream(byteArrayOutputStream, jxVar);
            dataOutputStream = new DataOutputStream(digestOutputStream);
            try {
                StringBuilder stringBuilder;
                String str3;
                dataOutputStream.writeShort(30);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeLong(0);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeShort(3);
                dataOutputStream.writeShort(js.m122a());
                dataOutputStream.writeLong(j3);
                dataOutputStream.writeUTF(str);
                dataOutputStream.writeUTF(str2);
                dataOutputStream.writeShort(map.size());
                for (Entry entry : map.entrySet()) {
                    dataOutputStream.writeShort(((jm) entry.getKey()).f274c);
                    byte[] bArr = (byte[]) entry.getValue();
                    dataOutputStream.writeShort(bArr.length);
                    dataOutputStream.write(bArr);
                }
                dataOutputStream.writeByte(0);
                dataOutputStream.writeBoolean(z);
                dataOutputStream.writeBoolean(z2);
                dataOutputStream.writeLong(j);
                dataOutputStream.writeLong(j2);
                dataOutputStream.writeShort(6);
                dataOutputStream.writeUTF("device.model");
                dataOutputStream.writeUTF(Build.MODEL);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.brand");
                dataOutputStream.writeUTF(Build.BRAND);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.id");
                dataOutputStream.writeUTF(Build.ID);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("version.release");
                dataOutputStream.writeUTF(VERSION.RELEASE);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.device");
                dataOutputStream.writeUTF(Build.DEVICE);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.product");
                dataOutputStream.writeUTF(Build.PRODUCT);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeShort(map2 != null ? map2.keySet().size() : 0);
                if (map2 != null) {
                    kf.m176a(3, f200b, "sending referrer values because it exists");
                    for (Entry entry2 : map2.entrySet()) {
                        String str4 = f200b;
                        StringBuilder stringBuilder2 = new StringBuilder("Referrer Entry:  ");
                        stringBuilder2.append((String) entry2.getKey());
                        stringBuilder2.append("=");
                        stringBuilder2.append(entry2.getValue());
                        kf.m176a(3, str4, stringBuilder2.toString());
                        dataOutputStream.writeUTF((String) entry2.getKey());
                        String str5 = f200b;
                        stringBuilder = new StringBuilder("referrer key is :");
                        stringBuilder.append((String) entry2.getKey());
                        kf.m176a(3, str5, stringBuilder.toString());
                        dataOutputStream.writeShort(((List) entry2.getValue()).size());
                        for (String str32 : (List) entry2.getValue()) {
                            dataOutputStream.writeUTF(str32);
                            kf.m176a(3, f200b, "referrer value is :".concat(String.valueOf(str32)));
                        }
                    }
                }
                dataOutputStream.writeBoolean(false);
                int size = map3 != null ? map3.keySet().size() : 0;
                kf.m176a(3, f200b, "optionsMapSize is:  ".concat(String.valueOf(size)));
                dataOutputStream.writeShort(size);
                if (map3 != null) {
                    kf.m176a(3, f200b, "sending launch options");
                    for (Entry entry3 : map3.entrySet()) {
                        str32 = f200b;
                        stringBuilder = new StringBuilder("Launch Options Key:  ");
                        stringBuilder.append((String) entry3.getKey());
                        kf.m176a(3, str32, stringBuilder.toString());
                        dataOutputStream.writeUTF((String) entry3.getKey());
                        dataOutputStream.writeShort(((List) entry3.getValue()).size());
                        for (String str322 : (List) entry3.getValue()) {
                            dataOutputStream.writeUTF(str322);
                            kf.m176a(3, f200b, "Launch Options value is :".concat(String.valueOf(str322)));
                        }
                    }
                }
                int size2 = map4 != null ? map4.keySet().size() : 0;
                kf.m176a(3, f200b, "numOriginAttributions is:  ".concat(String.valueOf(size)));
                dataOutputStream.writeShort(size2);
                if (map4 != null) {
                    for (Entry entry4 : map4.entrySet()) {
                        String str6 = f200b;
                        StringBuilder stringBuilder3 = new StringBuilder("Origin Atttribute Key:  ");
                        stringBuilder3.append((String) entry4.getKey());
                        kf.m176a(3, str6, stringBuilder3.toString());
                        dataOutputStream.writeUTF((String) entry4.getKey());
                        dataOutputStream.writeShort(((Map) entry4.getValue()).size());
                        str6 = f200b;
                        stringBuilder3 = new StringBuilder("Origin Attribute Map Size for ");
                        stringBuilder3.append((String) entry4.getKey());
                        stringBuilder3.append(":  ");
                        stringBuilder3.append(((Map) entry4.getValue()).size());
                        kf.m176a(3, str6, stringBuilder3.toString());
                        for (Entry entry32 : ((Map) entry4.getValue()).entrySet()) {
                            str322 = f200b;
                            stringBuilder = new StringBuilder("Origin Atttribute for ");
                            stringBuilder.append((String) entry4.getKey());
                            stringBuilder.append(":  ");
                            stringBuilder.append((String) entry32.getKey());
                            stringBuilder.append(":");
                            stringBuilder.append((String) entry32.getValue());
                            kf.m176a(3, str322, stringBuilder.toString());
                            dataOutputStream.writeUTF(entry32.getKey() != null ? (String) entry32.getKey() : "");
                            dataOutputStream.writeUTF(entry32.getValue() != null ? (String) entry32.getValue() : "");
                        }
                    }
                }
                dataOutputStream.writeUTF(lo.m282a(jr.m114a().f293a));
                size = list.size();
                dataOutputStream.writeShort(size);
                for (size2 = 0; size2 < size; size2++) {
                    dataOutputStream.write(((iy) list.get(size2)).f207a);
                }
                dataOutputStream.writeShort(0);
                digestOutputStream.on(false);
                dataOutputStream.write(jxVar.m143a());
                dataOutputStream.close();
                toByteArray = byteArrayOutputStream.toByteArray();
                lr.m305a(dataOutputStream);
            } catch (Throwable th2) {
                th = th2;
                lr.m305a(dataOutputStream);
                throw th;
            }
        } catch (Throwable th22) {
            th = th22;
            dataOutputStream = null;
            lr.m305a(dataOutputStream);
            throw th;
        }
        r1.f201a = toByteArray;
    }
}
