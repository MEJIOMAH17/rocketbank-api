package com.flurry.sdk;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class iy {
    /* renamed from: b */
    private static final String f206b = "iy";
    /* renamed from: a */
    byte[] f207a;

    /* renamed from: com.flurry.sdk.iy$a */
    public static class C1102a implements kz<iy> {
        /* renamed from: a */
        public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
            iy iyVar = (iy) obj;
            if (outputStream != null) {
                if (iyVar != null) {
                    DataOutputStream c04861 = new DataOutputStream(this, outputStream) {
                        /* renamed from: a */
                        final /* synthetic */ C1102a f204a;

                        public final void close() {
                        }
                    };
                    outputStream = null;
                    if (iyVar.f207a != null) {
                        outputStream = iyVar.f207a.length;
                    }
                    c04861.writeShort(outputStream);
                    if (outputStream > null) {
                        c04861.write(iyVar.f207a);
                    }
                    c04861.flush();
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream c04872 = new DataInputStream(this, inputStream) {
                /* renamed from: a */
                final /* synthetic */ C1102a f205a;

                public final void close() {
                }
            };
            inputStream = new iy();
            int readUnsignedShort = c04872.readUnsignedShort();
            if (readUnsignedShort > 0) {
                byte[] bArr = new byte[readUnsignedShort];
                c04872.readFully(bArr);
                inputStream.f207a = bArr;
            }
            return inputStream;
        }
    }

    private iy() {
    }

    public iy(byte[] bArr) {
        this.f207a = bArr;
    }

    public iy(iz izVar) throws IOException {
        Closeable closeable = null;
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Closeable dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                int i;
                dataOutputStream.writeShort(7);
                dataOutputStream.writeUTF(izVar.f208a);
                dataOutputStream.writeLong(izVar.f209b);
                dataOutputStream.writeLong(izVar.f210c);
                dataOutputStream.writeLong(izVar.f211d);
                dataOutputStream.writeBoolean(true);
                dataOutputStream.writeByte(-1);
                if (TextUtils.isEmpty(izVar.f213f)) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeUTF(izVar.f213f);
                }
                if (TextUtils.isEmpty(izVar.f214g)) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeUTF(izVar.f214g);
                }
                Map map = izVar.f215h;
                if (map == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(map.size());
                    for (Entry entry : map.entrySet()) {
                        dataOutputStream.writeUTF((String) entry.getKey());
                        dataOutputStream.writeUTF((String) entry.getValue());
                    }
                }
                map = izVar.f212e;
                if (map == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(map.size());
                    for (Entry entry2 : map.entrySet()) {
                        dataOutputStream.writeUTF((String) entry2.getKey());
                        dataOutputStream.writeUTF((String) entry2.getValue());
                        dataOutputStream.writeByte(0);
                    }
                }
                dataOutputStream.writeUTF(izVar.f216i);
                dataOutputStream.writeUTF(izVar.f217j);
                dataOutputStream.writeByte(izVar.f218k);
                dataOutputStream.writeByte(izVar.f219l);
                dataOutputStream.writeUTF(izVar.f220m);
                if (izVar.f221n == null) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeDouble(lr.m300a(izVar.f221n.getLatitude()));
                    dataOutputStream.writeDouble(lr.m300a(izVar.f221n.getLongitude()));
                    dataOutputStream.writeFloat(izVar.f221n.getAccuracy());
                }
                dataOutputStream.writeInt(izVar.f222o);
                dataOutputStream.writeByte(-1);
                dataOutputStream.writeByte(-1);
                dataOutputStream.writeByte(izVar.f223p);
                if (izVar.f224q == null) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeLong(izVar.f224q.longValue());
                }
                Map map2 = izVar.f225r;
                if (map2 == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(map2.size());
                    for (Entry entry3 : map2.entrySet()) {
                        dataOutputStream.writeUTF((String) entry3.getKey());
                        dataOutputStream.writeInt(((iu) entry3.getValue()).f192a);
                    }
                }
                List<iv> list = izVar.f226s;
                if (list == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(list.size());
                    for (iv b : list) {
                        dataOutputStream.write(b.m73b());
                    }
                }
                dataOutputStream.writeBoolean(izVar.f227t);
                List list2 = izVar.f229v;
                if (list2 != null) {
                    int i2 = 0;
                    int i3 = i2;
                    i = i3;
                    while (i2 < list2.size()) {
                        i3 += ((it) list2.get(i2)).m68a().length;
                        if (i3 > 160000) {
                            kf.m176a(5, f206b, "Error Log size exceeded. No more event details logged.");
                            break;
                        } else {
                            i++;
                            i2++;
                        }
                    }
                } else {
                    i = 0;
                }
                dataOutputStream.writeInt(izVar.f228u);
                dataOutputStream.writeShort(i);
                for (izVar = null; izVar < i; izVar++) {
                    dataOutputStream.write(((it) list2.get(izVar)).m68a());
                }
                dataOutputStream.writeInt(-1);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeShort(0);
                this.f207a = byteArrayOutputStream.toByteArray();
                lr.m305a(dataOutputStream);
            } catch (IOException e) {
                izVar = e;
                closeable = dataOutputStream;
                try {
                    kf.m177a(6, f206b, "", izVar);
                    throw izVar;
                } catch (Throwable th) {
                    izVar = th;
                    dataOutputStream = closeable;
                    lr.m305a(dataOutputStream);
                    throw izVar;
                }
            } catch (Throwable th2) {
                izVar = th2;
                lr.m305a(dataOutputStream);
                throw izVar;
            }
        } catch (IOException e2) {
            izVar = e2;
            kf.m177a(6, f206b, "", izVar);
            throw izVar;
        }
    }
}
